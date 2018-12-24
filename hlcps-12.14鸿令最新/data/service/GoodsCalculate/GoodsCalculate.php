<?php
namespace data\service\GoodsCalculate;

/**
 * 课程购销存
 */
use data\service\BaseService as BaseService;
use data\model\NsGoodsModel;
use data\model\NsGoodsSkuModel;
use data\model\NsOrderModel;
use data\model\NsOrderGoodsModel;

class GoodsCalculate extends BaseService
{

    /**
     * 添加课程库存(购销存使用)
     * 
     * @param unknown $sku_id            
     * @param unknown $num            
     * @param unknown $cost_price            
     */
    public function addGoodsStock($goods_id, $sku_id, $num, $cost_price)
    {}

    /**
     * 减少课程库存(购买使用)
     * 
     * @param unknown $sku_id
     *            //课程属性
     * @param unknown $num
     *            //课程数量
     * @param unknown $cost_price
     *            //减少成本价 通过加权统计
     */
    public function subGoodsStock($goods_id, $sku_id, $num, $cost_price)
    {
        $goods_model = new NsGoodsModel();
        $stock = $goods_model->getInfo([
            'goods_id' => $goods_id
        ], 'stock');
        if ($stock['stock'] < $num) {
            return LOW_STOCKS;
            exit();
        }
        $goods_sku_model = new NsGoodsSkuModel();
        $sku_stock = $goods_sku_model->getInfo([
            'sku_id' => $sku_id
        ], 'stock');
        if ($sku_stock['stock'] < $num) {
            return LOW_STOCKS;
            exit();
        }
        $goods_model->save([
            'stock' => $stock['stock'] - $num
        ], [
            'goods_id' => $goods_id
        ]);
        $retval = $goods_sku_model->save([
            'stock' => $sku_stock['stock'] - $num
        ], [
            'sku_id' => $sku_id
        ]);
        return $retval;
    }

    /**
     * 获取课程属性库存
     * 
     * @param unknown $sku_id            
     */
    public function getGoodsSkuStock($sku_id)
    {
        $goods_sku_model = new NsGoodsSkuModel();
        $sku_stock = $goods_sku_model->getInfo([
            'sku_id' => $sku_id
        ], 'stock');
        return $sku_stock['stock'];
    }

    /**
     * 添加课程销售(销售课程使用)
     * 
     * @param unknown $goods_id            
     * @param unknown $sku_id            
     * @param unknown $num            
     */
    public function addGoodsSales($goods_id, $sku_id, $num)
    {
        $goods_model = new NsGoodsModel();
        $goods_sales = $goods_model->getInfo([
            'goods_id' => $goods_id
        ], 'sales, real_sales');
        $retval = $goods_model->save([
            //'sales' => $goods_sales['sales'] + $num,
            'real_sales' => $goods_sales['real_sales'] + $num
        ], [
            'goods_id' => $goods_id
        ]);
        return $retval;
    }

    /**
     * 减少课程销售（订单关闭，冲账）
     * 
     * @param unknown $goods_id            
     * @param unknown $sku_id            
     * @param unknown $num            
     */
    public function subGoodsSales($goods_id, $sku_id, $num)
    {
        $goods_model = new NsGoodsModel();
        $goods_sales = $goods_model->getInfo([
            'goods_id' => $goods_id
        ], 'sales, real_sales');
        $retval = $goods_model->save([
            'sales' => $goods_sales['sales'] - $num,
            'real_sales' => $goods_sales['real_sales'] - $num
        ], [
            'goods_id' => $goods_id
        ]);
        return $retval;
    }

    /**
     * 获取一段时间内的课程销售详情
     */
    public function getGoodsSalesInfoList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        $goods_model = new NsGoodsModel();
        $goods_list = $goods_model->pageQuery($page_index, $page_size, $condition, $order, '*');
        // 得到条件内的订单项
        $start_date = strtotime(date('Y-m-d', strtotime('-30 days')));
        $end_date = strtotime(date("Y-m-d H:i:s", time()));
        $order_condition["create_time"] = [
            [
                ">=",
                $start_date
            ],
            [
                "<=",
                $end_date
            ]
        ];
        $order_condition["shop_id"] = $condition["shop_id"];
        $order_goods_list = $this->getOrderGoodsSelect($order_condition);
        // 遍历课程
        foreach ($goods_list["data"] as $k => $v) {
            $data = array();
            $goods_sales_num = $this->getGoodsSalesNum($order_goods_list, $v["goods_id"]);
            $goods_sales_money = $this->getGoodsSalesMoney($order_goods_list, $v["goods_id"]);
            $data["sales_num"] = $goods_sales_num;
            $data["sales_money"] = $goods_sales_money;
            $goods_list["data"][$k]["sales_info"] = $data;
        }
        return $goods_list;
    }

    /**
     * 一段时间内的课程销售量
     * 
     * @param unknown $condition            
     */
    public function getGoodsSalesNum($order_goods_list, $goods_id)
    {
        $sales_num = 0;
        foreach ($order_goods_list as $k => $v) {
            if ($v["goods_id"] == $goods_id) {
                //$sales_num = $sales_num + $v["num"];
                $sales_num = $sales_num + 1;
            }
        }
        return $sales_num;
    }

    /**
     * 一段时间内的课程下单金额
     * 
     * @param unknown $condition            
     */
    public function getGoodsSalesMoney($order_goods_list, $goods_id)
    {
        $sales_money = 0;
        foreach ($order_goods_list as $k => $v) {
            if ($v["goods_id"] == $goods_id) {
                $sales_money = $sales_money + ($v["goods_money"] - $v["adjust_money"]);
            }
        }
        return $sales_money;
    }

    /**
     * 一段时间内的订单项
     * 
     * @param unknown $order_condition            
     * @return multitype:NULL
     */
    public function getOrderGoodsSelect($order_condition)
    {
        $order_model = new NsOrderModel();
        $order_array = $order_model->where($order_condition)->select();
        $order_goods_list = array();
        $order_item = new NsOrderGoodsModel();
        foreach ($order_array as $t => $b) {
            $item_array = $order_item->where([
                'order_id' => $b['order_id']
            ])->select();
            $order_goods_list = array_merge($order_goods_list, $item_array);
        }
        return $order_goods_list;
    }
}
