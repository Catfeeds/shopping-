<?php
namespace app\adminsite\controller;

use data\service\Address;
use data\service\Album;
use data\service\Goods as GoodsService;
use data\service\GoodsCategory as GoodsCategory;
use Qiniu\json_decode;
use think\Config;
use data\service\VirtualGoods;
use data\service\Config as ConfigService;

/**
 * 课程控制器
 */
class Goods extends BaseController
{

    public function __construct()
    {
        parent::__construct();
    }

    /**
     * 根据课程ID查询单个课程，然后进行编辑操作
     */
    public function GoodsSelect()
    {
        $goods_detail = new GoodsService();
        $goods = $goods_detail->getGoodsDetail(request()->get('goodsId'));
        return $goods;
    }

    /**
     * 课程列表
     */
    public function goodsList()
    {
        $goodservice = new GoodsService();
        if (request()->isAjax()) {
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            $goods_name = request()->post('goods_name', '');
            $goods_code = request()->post('code', '');
            $state_type = request()->post('state', '');
            $category_id_1 = request()->post('category_id_1', '');
            $category_id_2 = request()->post('category_id_2', '');
            $category_id_3 = request()->post('category_id_3', '');
            $selectGoodsLabelId = request()->post('selectGoodsLabelId', '');
            $supplier_id = request()->post('supplier_id', '');
            $stock_warning = request()->post("stock_warning", 0); // 库存预警
            $sort_rule = request()->post("sort_rule", ""); // 字段排序规则
            $goods_type = request()->post("goods_type", "all"); // 课程类型
            
            if($goods_type != "all"){
                $condition["ng.goods_type"] = $goods_type;
            }
            
            if (! empty($selectGoodsLabelId)) {
                $selectGoodsLabelIdArray = explode(',', $selectGoodsLabelId);
                $selectGoodsLabelIdArray = array_filter($selectGoodsLabelIdArray);
                $str = "FIND_IN_SET(" . $selectGoodsLabelIdArray[0] . ",ng.group_id_array)";
                for ($i = 1; $i < count($selectGoodsLabelIdArray); $i ++) {
                    $str .= "AND FIND_IN_SET(" . $selectGoodsLabelIdArray[$i] . ",ng.group_id_array)";
                }
                $condition[""] = [
                    [
                        "EXP",
                        $str
                    ]
                ];
            }
            
            if ($start_date != 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            
            if ($state_type >0) {
                $condition["ng.state"] = 0;
            }else{
                $condition["ng.state"] = 1;
            }
            if (! empty($goods_name)) {
                $condition["ng.goods_name"] = array(
                    "like",
                    "%" . $goods_name . "%"
                );
            }
            if (! empty($goods_code)) {
                $condition["ng.code"] = array(
                    "like",
                    "%" . $goods_code . "%"
                );
            }
            if ($category_id_3 != "") {
                $condition["ng.category_id_3"] = $category_id_3;
            } elseif ($category_id_2 != "") {
                $condition["ng.category_id_2"] = $category_id_2;
            } elseif ($category_id_1 != "") {
                $condition["ng.category_id_1"] = $category_id_1;
            }
            
            if ($supplier_id != '') {
                $condition['ng.supplier_id'] = $supplier_id;
            }
            
            $condition["ng.shop_id"] = $this->instance_id;
            
            // 库存预警
            if ($stock_warning == 1) {
                $condition['ng.min_stock_alarm'] = array(
                    "neq",
                    0
                );
                $condition['ng.stock'] = array(
                    "exp",
                    "<= ng.min_stock_alarm"
                );
            }
            
            $order = array();
            if (! empty($sort_rule)) {
                $sort_rule_arr = explode(",", $sort_rule);
                $sort_field = $sort_rule_arr[0];
                $sort_value = $sort_rule_arr[1];
                if ($sort_value == "a") {
                    $sort_value = "ASC";
                } elseif ($sort_value == "d") {
                    $sort_value = "DESC";
                } else {
                    $sort_value = "";
                }
                
                if (! empty($sort_value)) {
                    switch ($sort_field) {
                        case "price":
                            $order['ng.price'] = $sort_value;
                            break;
                        case "stock":
                            $order['ng.stock'] = $sort_value;
                            break;
                        case "sales":
                            $order['ng.sales'] = $sort_value;
                            break;
                        case "sort":
                            $order['ng.sort'] = $sort_value;
                            break;
                    }
                }
            } else {
                // 默认时间排序
                $order['ng.create_time'] = 'desc';
            }
            $result = $goodservice->getBackStageGoodsList($page_index, $page_size, $condition, $order);
            return $result;
        } else {
            // 查找一级课程分类
            $goodsCategory = new GoodsCategory();
            $oneGoodsCategory = $goodsCategory->getGoodsCategoryListByParentId(0);
            $this->assign("oneGoodsCategory", $oneGoodsCategory);
            // 上下架
            $state_type = request()->get("state_type", "");
            $this->assign("state", $state_type);
            // 库存预警
            $stock_warning = request()->get("stock_warning", 0);
            $this->assign("stock_warning", $stock_warning);
            if($state_type == 2){
                $child_menu_list = array(
                    array(
                        'url' => "goods/goodslist",
                        'menu_name' => "课程出售中",
                        "active" => 0
                    ),
                    array(
                        'url' => "goods/goodslist?state_type=2",
                        'menu_name' => "课程已下架",
                        'active' => 1
                    ),
                    array(
                        'url' => "goods/recyclelist",
                        'menu_name' => "回收站",
                        "active" => 0
                    )
                );
            }else if($stock_warning == 1){
                $child_menu_list = array(
                    array(
                        'url' => "goods/goodslist",
                        'menu_name' => "课程出售中",
                        "active" => 0
                    ),
                    array(
                        'url' => "goods/goodslist?state_type=2",
                        'menu_name' => "课程已下架",
                        'active' => 0
                    ),
                    array(
                        'url' => "goods/recyclelist",
                        'menu_name' => "回收站",
                        "active" => 0
                    )
                );
            }else{
                $child_menu_list = array(
                    array(
                        'url' => "goods/goodslist",
                        'menu_name' => "课程出售中",
                        "active" => 1
                    ),
                    array(
                        'url' => "goods/goodslist?state_type=2",
                        'menu_name' => "课程已下架",
                        'active' => 0
                    ),
                    array(
                        'url' => "goods/recyclelist",
                        'menu_name' => "回收站",
                        "active" => 0
                    )
                );
            }
            $this->assign("child_menu_list", $child_menu_list);
            return view($this->style . "Goods/goodsList");
        }
    }
    
    public function getCategoryByParentAjax()
    {
        if (request()->isAjax()) {
            $parentId = request()->post("parentId", '');
            $goodsCategory = new GoodsCategory();
            $res = $goodsCategory->getGoodsCategoryListByParentId($parentId);
            return $res;
        }
    }

    /**
     * 功能说明：通过ajax来的得到页面的数据
     */
    public function SelectCateGetData()
    {
        $goods_category_id = request()->post("goods_category_id", ''); // 课程类目用
        $goods_category_name = request()->post("goods_category_name", ''); // 课程类目名称显示用
        $goods_attr_id = request()->post("goods_attr_id", ''); // 关联课程类型ID
        $quick = request()->post("goods_category_quick", ''); // JSON格式
        setcookie("goods_category_id", $goods_category_id, time() + 3600 * 24);
        setcookie("goods_category_name", $goods_category_name, time() + 3600 * 24);
        setcookie("goods_attr_id", $goods_attr_id, time() + 3600 * 24);
        setcookie("goods_category_quick", $quick, time() + 3600 * 24);
    }

    /**
     * 获取用户快速选择课程
     */
    public function getQuickGoods()
    {
        if (isset($_COOKIE["goods_category_quick"])) {
            return $_COOKIE["goods_category_quick"];
        } else {
            return - 1;
        }
    }

    /**
     * 添加课程
     */
    public function addGoods()
    {
        $goods = new GoodsService();
        $album = new Album();
        $virtual_goods = new VirtualGoods();
        
        $goodsId = request()->get('goodsId', 0);
        
        $goods_attr_id = 0; // 课程类目关联id
        if (isset($_COOKIE["goods_category_id"])) {
            $this->assign("goods_category_id", $_COOKIE["goods_category_id"]);
            $name = str_replace(":", "&gt;", $_COOKIE["goods_category_name"]);
            $this->assign("goods_category_name", $name);
            $goods_attr_id = $_COOKIE["goods_attr_id"];
        } else {
            $this->assign("goods_category_id", 0); // 修改课程时，会进行查询赋值 2016年12月9日 10:54:07
            $this->assign("goods_category_name", "");
        }
        $this->assign("goods_attr_id", $goods_attr_id);
        $this->assign("goods_id", $goodsId);
        $this->assign("shop_type", 2);
        
        // 相册列表
        $detault_album_detail = $album->getDefaultAlbumDetail();
        $this->assign('detault_album_id', $detault_album_detail['album_id']);
        
        $template_url = array();
        $config = new ConfigService();
        $pc_template = $config->getUsePCTemplate($this->instance_id);
        $wap_template = $config ->getUseWapTemplate($this->instance_id);

        $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Goods/';
        $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Goods/';
        $this->assign("template_url", $template_url);
        
        if ($goodsId > 0) {
            if (! is_numeric($goodsId)) {
                $this->error("参数错误");
            }
            $goods_info = $goods->getGoodsDetail($goodsId);
            if (! empty($goods_info)) {
                $goods_info['presell_time'] = getTimeStampTurnTime($goods_info['presell_time']);
                $goods_info['sku_list'] = json_encode($goods_info['sku_list']);
                $goods_info['img_list'] = json_encode($goods_info['img_list']);
                // 判断规格数组中图片路径是id还是路径
                if (trim($goods_info['goods_spec_format']) != "") {
                    $album = new Album();
                    $goods_spec_array = json_decode($goods_info['goods_spec_format'], true);
                    foreach ($goods_spec_array as $k => $v) {
                        foreach ($v["value"] as $t => $m) {
                            if (is_numeric($m["spec_value_data"]) && $m["spec_show_type"] == 3) {
                                $picture_detail = $album->getAlubmPictureDetail([
                                    "pic_id" => $m["spec_value_data"]
                                ]);
                                if (! empty($picture_detail)) {
                                    $goods_spec_array[$k]["value"][$t]["spec_value_data_src"] = $picture_detail["pic_cover_micro"];
                                }
                            } else 
                                if (! is_numeric($m["spec_value_data"]) && $m["spec_show_type"] == 3) {
                                    $goods_spec_array[$k]["value"][$t]["spec_value_data_src"] = $m["spec_value_data"];
                                }
                        }
                    }
                    $goods_spec_format = json_encode($goods_spec_array, JSON_UNESCAPED_UNICODE);
                    $goods_info['goods_spec_format'] = $goods_spec_format;
                }
                $extent_sort = count($goods_info["extend_category"]);
                $this->assign("extent_sort", $extent_sort);
                if ($goods_info["group_id_array"] == "") {
                    $this->assign("edit_group_array", array());
                } else {
                    $this->assign("edit_group_array", explode(",", $goods_info["group_id_array"]));
                }
                /**
                 * 当前cookie中存的goodsid
                 */
                $update_goods_id = isset($_COOKIE["goods_update_goodsid"]) ? $_COOKIE["goods_update_goodsid"] : 0;
                if ($update_goods_id == $goodsId) {
                    // $category_name = str_replace(":", "&gt;", $_COOKIE["goods_category_name"]);
                    $category_name = str_replace(":", "", $_COOKIE["goods_category_name"]);
                    $goods_info["category_id"] = $_COOKIE["goods_category_id"];
                    $goods_info["category_name"] = $category_name;
                }
                $goods_info['description'] = str_replace(PHP_EOL, '', $goods_info['description']);
                
                // 规格数据转json
                if (! empty($goods_info["sku_picture_array"])) {
                    $sku_picture_array_str = json_encode($goods_info["sku_picture_array"]);
                } else {
                    $sku_picture_array_str = '';
                }
                $this->assign("sku_picture_array_str", $sku_picture_array_str);
                
                // 课程阶梯优惠
                $ladder_preferential = '';
                
                $this->assign("ladder_preferential", $ladder_preferential);
                
                // 查询虚拟课程数据
                $virtual_goods_type_info ='';
                if (! empty($virtual_goods_type_info)) {
                    $virtual_goods_type_info['value_info'] = json_decode($virtual_goods_type_info['value_info'], true);
                    $this->assign("virtual_goods_type_info", $virtual_goods_type_info);
                }
                
                $virtual_goods_count = 0;
                $this->assign("virtual_goods_count", $virtual_goods_count);
                //dump($goods_info);
                $this->assign("goods_info", $goods_info);
            } else {
                $this->error("课程不存在");
            }
        }
        return view($this->style . "Goods/editGoods");
    }

    /**
     * 虚拟课程管理控制器
     */
    public function virtualGoodsList()
    {
        $goods_id = request()->get('goods_id',0);
        $this->assign('goods_id', $goods_id);
        
        //课程详情
        $goods = new GoodsService();
        $goods_info = $goods->getGoodsDetail($goods_id);
        $this->assign('goods_info', $goods_info);
        //虚拟课程信息
        $virtual_goods = new VirtualGoods();
        $virtual_goods_type_info = $virtual_goods->getVirtualGoodsTypeInfo(['relate_goods_id' => $goods_id]);
        $this->assign('virtual_goods_type_info', $virtual_goods_type_info);
        
        //卡密库存
        $virtual_goods_count = $virtual_goods->getVirtualGoodsCountByGoodsId($goods_id);
        $this->assign("virtual_goods_count", $virtual_goods_count);
        
        return view($this->style . "Goods/virtualGoodsList");
    }

    /**
     * 根据goodsid查询虚拟课程列表
     *
     * @return void|Ambigous
     */
    public function getVirtualGoodsListByGoodsId()
    {
        $goods_id = request()->post("goods_id", 0);
        $page_index = request()->post("page_index", 1);
        $page_size = request()->post("page_size", PAGESIZE);
        $search_name = request()->post("search_name", '');
        $use_status = request()->post("use_status", '');
        $virtual_code = request()->post("virtual_code", '');
        
        if ($goods_id == 0) {
            return;
        }
        
        $condition = array();
        $condition['ng.goods_id'] = $goods_id;
        $condition['ng.goods_name'] = [
            'like',
            '%' . $search_name . '%'
        ];
        if ($use_status != '') {
            $condition['nvg.use_status'] = $use_status;
        }
        if ($virtual_code != '') {
            $condition['nvg.virtual_code'] = $virtual_code;
        }
        
        $virtual_goods = new VirtualGoods();
        $res = $virtual_goods->getVirtualGoodsListByGoodsId($page_index, $page_size, $condition, 'nvg.virtual_goods_id desc');
        return $res;
    }

    /**
     * 添加虚拟课程
     *
     * @return Ambigous <boolean, number, \think\false, string>
     */
    public function addVirtualGoods()
    {
        $card_number = request()->post("card_number", "");
        $card_password = request()->post("card_password", "");
        $validity_period = request()->post("validity_period", 0);
        $confine_use_number = request()->post("confine_use_number", 0);
        $goods_id = request()->post("goods_id", 0);
        $res = - 1;
        if (! empty($card_number) && ! empty($card_password) && $goods_id > 0) {
            $virtual_goods = new VirtualGoods();
            $remark = "卡号：" . $card_number . '&nbsp;&nbsp;密码：' . $card_password;
            $res = $virtual_goods->addVirtualGoods($this->instance_id, '', 0.00, '', '', 0, '', $validity_period, 0, 0, 0, $confine_use_number, - 2, $goods_id, $remark);
        }
        return $res;
    }

    /**
     * 根据主键id删除虚拟课程，支持多个删除
     *
     * @return Ambigous <number, unknown>
     */
    public function deleteVirtualGoodsById()
    {
        $virtual_goods_id = request()->post("virtual_goods_id", "");
        $res = - 1;
        if (!empty($virtual_goods_id)) {
            $virtual_goods = new VirtualGoods();
            $res = $virtual_goods->deleteVirtualGoodsById($virtual_goods_id);
        }
        return AjaxReturn($res);
    }

    /**
     * 功能说明：通过节点的ID查询得到某个节点下的子集
     */
    public function getChildCateGory()
    {
        $categoryID = request()->post('categoryID', '');
        $goods_category = new GoodsCategory();
        $list = $goods_category->getGoodsCategoryListByParentId($categoryID);
        return $list;
    }

    /**
     * 删除课程
     */
    public function deleteGoods()
    {
        $goods_ids = request()->post('goods_ids');
        $goodservice = new GoodsService();
        $retval = $goodservice->deleteGoods($goods_ids);
        return AjaxReturn($retval);
    }

    /**
     * 删除回收站课程
     */
    public function emptyDeleteGoods()
    {
        $goods_ids = request()->post('goods_ids');
        $goodsservice = new GoodsService();
        $res = $goodsservice->deleteRecycleGoods($goods_ids);
        return AjaxReturn($res);
    }

    /**
     * 选择课程分类
     */
    function changeCategory()
    {
        $pid = request()->post('pid', 0);
        $list = array();
        if ($pid > 0) {
            $goodscategory = new GoodsCategory();
            $list = $goodscategory->getGoodsCategoryListByParentId($pid);
        }
        return $list;
    }

    /**
     * 课程分类列表
     */
    public function goodsCategoryList()
    {
        $goods_category = new GoodsCategory();
        $one_list = $goods_category->getCategoryTreeUseInAdmin();
        $this->assign("category_list", $one_list);
        return view($this->style . "Goods/goodsCategoryList");
    }

    /**
     * 添加课程分类
     */
    public function addGoodsCategory()
    {
        $goodscate = new GoodsCategory();
        if (request()->isAjax()) {
            $category_name = request()->post("category_name", '');
            $pid = request()->post("pid", '');
            $is_visible = request()->post('is_visible', '');
            $keywords = request()->post("keywords", '');
            $description = request()->post("description", '');
            $sort = request()->post("sort", '');
            $category_pic = request()->post('category_pic', '');
            $attr_id = request()->post("attr_id", 0);
            $attr_name = request()->post("attr_name", '');
            $short_name = request()->post("short_name", '');
            $pc_custom_template = request()->post("pc_custom_template", "");
            $wap_custom_template = request()->post("wap_custom_template", "");
            $result = $goodscate->addOrEditGoodsCategory(0, $category_name, $short_name, $pid, $is_visible, $keywords, $description, $sort, $category_pic, $attr_id, $attr_name, $pc_custom_template, $wap_custom_template);
            return AjaxReturn($result);
        } else {
            $category_list = $goodscate->getGoodsCategoryTree(0);
            $this->assign('category_list', $category_list);
            
            $template_url = array();
            $config = new ConfigService();
            $pc_template = $config->getUsePCTemplate($this->instance_id);
            $wap_template = $config ->getUseWapTemplate($this->instance_id);
            $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Goods/';
            $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Goods/';
            $this->assign("template_url", $template_url);
            
            return view($this->style . "Goods/addGoodsCategory");
        }
    }

    /**
     * 修改课程分类
     */
    public function updateGoodsCategory()
    {
        $goodscate = new GoodsCategory();
        if (request()->isAjax()) {
            $category_id = request()->post("category_id", '');
            $category_name = request()->post("category_name", '');
            $short_name = request()->post("short_name", '');
            $pid = request()->post("pid", '');
            $is_visible = request()->post('is_visible', '');
            $keywords = request()->post("keywords", '');
            $description = request()->post("description", '');
            $sort = request()->post("sort", '');
            $attr_id = request()->post("attr_id", 0);
            $attr_name = request()->post("attr_name", '');
            $category_pic = request()->post('category_pic', '');
            $goods_category_quick = request()->post("goods_category_quick", '');
            $pc_custom_template = request()->post("pc_custom_template", "");
            $wap_custom_template = request()->post("wap_custom_template", "");
            $goods_type = request()->post("goods_type", "");
            if ($goods_category_quick != '') {
                setcookie("goods_category_quick", $goods_category_quick, time() + 3600 * 24);
            }
            $result = $goodscate->addOrEditGoodsCategory($category_id, $category_name, $short_name, $pid, $is_visible, $keywords, $description, $sort, $category_pic, $attr_id, $attr_name, $pc_custom_template, $wap_custom_template,$goods_type);
            return AjaxReturn($result);
        } else {
            $category_id = request()->get('category_id', '');
            $result = $goodscate->getGoodsCategoryDetail($category_id);
            $this->assign("data", $result);
            // 查询比当前等级高的 分类
            if ($result['level'] == 1) {
                $chile_list = $goodscate->getGoodsCategoryTree($category_id);
                if (empty($chile_list)) {
                    $category_list = $goodscate->getGoodsCategoryTree(0);
                } else {
                    $is_have = false;
                    foreach ($chile_list as $k => $v) {
                        if ($v["level"] == 3) {
                            $is_have = true;
                        }
                    }
                    if ($is_have) {
                        $category_list = array();
                    } else {
                        $category_list = $goodscate->getGoodsCategoryListByParentId(0);
                    }
                }
            } elseif ($result['level'] == 2) {
                $chile_list = $goodscate->getGoodsCategoryListByParentId($category_id);
                if (empty($chile_list)) {
                    $category_list = $goodscate->getGoodsCategoryTree(0);
                } else {
                    $category_list = $goodscate->getGoodsCategoryListByParentId(0);
                }
            } elseif ($result['level'] == 3) {
                $category_list = $goodscate->getGoodsCategoryTree(0);
            }
            if (! empty($category_list)) {
                foreach ($category_list as $k => $v) {
                    if ($v["category_id"] == $category_id && $category_id !== 0) {
                        unset($category_list[$k]);
                    } else {
                        if (isset($v["child_list"])) {
                            $temp_array = $v["child_list"];
                            foreach ($temp_array as $t => $m) {
                                if ($m["category_id"] == $category_id && $category_id !== 0) {
                                    unset($temp_array[$t]);
                                }
                            }
                            sort($temp_array);
                            $category_list[$k]["child_list"] = $temp_array;
                        }
                    }
                }
                sort($category_list);
            }
            $this->assign('category_list', $category_list);
            
            $template_url = array();
            $config = new ConfigService();
            $pc_template = $config->getUsePCTemplate($this->instance_id);
            $wap_template = $config ->getUseWapTemplate($this->instance_id);
            $template_url["pc_template_url"] = "template/shop/".$pc_template['value'].'/Goods/';
            $template_url["wap_template_url"] = "template/wap/".$wap_template['value'].'/Goods/';
            $this->assign("template_url", $template_url);
            
            return view($this->style . "Goods/updateGoodsCategory");
        }
    }

    /**
     * 删除课程分类
     */
    public function deleteGoodsCategory()
    {
        $goodscate = new GoodsCategory();
        $category_id = request()->post('category_id', '');
        $res = $goodscate->deleteGoodsCategory($category_id);
        if ($res > 0) {
            $goods_category_quick = request()->post("goods_category_quick", '');
            if ($goods_category_quick != '') {
                setcookie("goods_category_quick", $goods_category_quick, time() + 3600 * 24);
            }
        }
        return AjaxReturn($res);
    }

    /**
     * 功能说明：课程属性规格获取
     */
    public function CateGoryPropsGet()
    {
        $name = request()->post('name', '');
        $goodservice = new GoodsService();
        $res = $goodservice->addGoodsSpec($name);
        return $res;
    }

    /**
     * 功能说明：课程属性规格值获取
     */
    public function CateGoryPropvaluesGet()
    {
        $propId = request()->post('propId', '');
        $value = request()->post('value', '');
        $goodservice = new GoodsService();
        $res = $goodservice->addGoodsSpecValue($propId, $value);
        return $res;
    }

    /**
     * 设置规格属性是否启用
     */
    public function setIsvisible()
    {
        if (request()->isAjax()) {
            $spec_id = request()->post('spec_id', '');
            $is_visible = request()->post('is_visible', '');
            $goodservice = new GoodsService();
            $retval = $goodservice->updateGoodsSpecIsVisible($spec_id, $is_visible);
            return AjaxReturn($retval);
        }
    }

    /**
     * 功能说明：添加或更新课程时 ajax调用的函数
     */
    public function GoodsCreateOrUpdate()
    {
        $res = 0;
        $product = request()->post('product', '');
        $goods_kind = request()->post('goods_kind', '');
        $allow_delete = request()->post('allow_delete', '');
        $qrcode = request()->post('is_qrcode', ''); // 1代表 需要创建 二维码 0代表不需要
        if (! empty($product)) {
            $product = json_decode($product, true);
            $product['goods_type'] = 1;
            $shopId = $this->instance_id;
            $goodservice = new GoodsService();
            $res = $goodservice->addOrEditGoods($product["goodsId"], // 课程Id
            
$product["title"], // 课程标题
$shopId, $product["categoryId"], // 课程类目
$category_id_1 = 0, $category_id_2 = 0, $category_id_3 = 0, $product["supplierId"], $product["brandId"], $product["groupArray"], // 课程分组
$product['goods_type'], $product["market_price"], $product["price"], // 课程现价
$product["cost_price"], $product["point_exchange_type"], $product['integration_available_use'], $product['integration_available_give'], $is_member_discount = 0, $product["shipping_fee"], $product["shipping_fee_id"], $product["stock"], $product['max_buy'], $product['min_buy'], $product["minstock"], $product["base_good"], $product["base_sales"], $collects = 0, $star = 0, $evaluates = 0, $product["base_share"], $product["province_id"], $product["city_id"], $product["picture"], $product['key_words'], $product["introduction"], // 课程简介，促销语
$product["description"], $product['qrcode'], // 课程二维码
$product["code"], $product["display_stock"], $is_hot = 0, $is_recommend = 0, $is_new = 0, $sort = $product['sort'], $product["imageArray"], $product["skuArray"], $product["is_sale"], '', // $product["sku_img_array"]
$product['goods_attribute_id'], $product['goods_attribute'], $product['goods_spec_format'], $product['goods_weight'], $product['goods_volume'], $product['shipping_fee_type'], $product['categoryExtendId'], $product["sku_picture_vlaues"], $product['virtual_goods_type_data'], $product['production_date'], $product['shelf_life'], $product['ladder_preference'], $product['goods_video_address'], $product['pc_custom_template'], $product['wap_custom_template'], $product['max_use_point'],
$product['is_open_presell'], $product['presell_delivery_type'], $product['presell_price'], $product['presell_time'], $product['presell_day'], $product['goods_unit'],$goods_kind,$allow_delete);
            
            // sku编码分组
            
            if ($res > 0 && $qrcode == 1) {
                $goodsId = $res;
                
                $url = __URL(Config::get('view_replace_str.APP_MAIN') . '/goods/goodsdetail?id=' . $goodsId);
                $pay_qrcode = getQRcode($url, 'upload/goods_qrcode', 'goods_qrcode_' . $goodsId);
                
                $goodservice->goods_QRcode_make($goodsId, $pay_qrcode);
            }
        }
        
        return $res;
    }

    /**
     * 获取省列表，课程添加时用户可以设置课程所在地
     */
    public function getProvince()
    {
        $address = new Address();
        $province_list = $address->getProvinceList();
        return $province_list;
    }

    /**
     * 获取城市列表
     *
     * @return Ambigous <multitype:\think\static , \think\false, \think\Collection, \think\db\false, PDOStatement, string, \PDOStatement, \think\db\mixed, boolean, unknown, \think\mixed, multitype:, array>
     */
    public function getCity()
    {
        $address = new Address();
        $province_id = request()->post('province_id', 0);
        $city_list = $address->getCityList($province_id);
        return $city_list;
    }

    /**
     * 修改 课程 分类 单个字段
     */
    public function modifyGoodsCategoryField()
    {
        $goodscate = new GoodsCategory();
        $fieldid = request()->post('fieldid', '');
        $fieldname = request()->post('fieldname', '');
        $fieldvalue = request()->post('fieldvalue', '');
        $res = $goodscate->ModifyGoodsCategoryField($fieldid, $fieldname, $fieldvalue);
        return $res;
    }

    /**
     * 课程上架
     */
    public function ModifyGoodsOnline()
    {
        $condition = request()->post('goods_ids', '');
        $goods_detail = new GoodsService();
        $result = $goods_detail->ModifyGoodsOnline($condition);
        return AjaxReturn($result);
    }

    /**
     * 课程下架
     */
    public function ModifyGoodsOffline()
    {
        $condition = request()->post('goods_ids', '');
        $goods_detail = new GoodsService();
        $result = $goods_detail->ModifyGoodsOffline($condition);
        return AjaxReturn($result);
    }

    /**
     * 获取筛选后的课程
     *
     * @return unknown
     */
    public function getSearchGoodsList()
    {
        $page_index = request()->post("page_index", 1);
        $page_size = request()->post("page_size", PAGESIZE);
        $search_text = request()->post("search_text", "");
        $is_have_sku = request()->post("is_have_sku", 1);
        $goods_type = request()->post("goods_type", "");
        $condition = array(
            "goods_name" => [
                "like",
                "%$search_text%"
            ],
            "stock" => [
                "GT",
                0
            ]
        );
        if ($is_have_sku == 0) {
            $condition["goods_spec_format"] = '[]';
        }
        if (! empty($goods_type)) {
            $condition["goods_type"] = $goods_type;
        }
        $goods_detail = new GoodsService();
        $result = $goods_detail->getSearchGoodsList($page_index, $page_size, $condition);
        return $result;
    }

    /**
     * 修改推荐课程
     */
    public function ModifyGoodsRecommend()
    {
        $goods_ids = request()->post('goods_id', '');
        $recommend_type = request()->post('recommend_type', '');
        $goods_detail = new GoodsService();
        $result = $goods_detail->ModifyGoodsRecommend($goods_ids, $recommend_type);
        return AjaxReturn($result);
    }


    /**
     * 课程规格dialog插件
     */
    public function controlDialogSku()
    {
        $attr_id = request()->get("attr_id", 0);
        $this->assign("attr_id", $attr_id);
        return view($this->style . 'Goods/controlDialogSku');
    }

    /**
     * 课程回收站列表
     */
    public function recycleList()
    {
        if (request()->isAjax()) {
            $goodservice = new GoodsService();
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $start_date = request()->post('start_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('start_date'));
            $end_date = request()->post('end_date') == '' ? 0 : getTimeTurnTimeStamp(request()->post('end_date'));
            $goods_name = request()->post('goods_name', '');
            $category_id_1 = request()->post('category_id_1', '');
            $category_id_2 = request()->post('category_id_2', '');
            $category_id_3 = request()->post('category_id_3', '');
            if ($start_date != 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ],
                    [
                        "<",
                        $end_date
                    ]
                ];
            } elseif ($start_date != 0 && $end_date == 0) {
                $condition["ng.create_time"] = [
                    [
                        ">",
                        $start_date
                    ]
                ];
            } elseif ($start_date == 0 && $end_date != 0) {
                $condition["ng.create_time"] = [
                    [
                        "<",
                        $end_date
                    ]
                ];
            }
            if (! empty($goods_name)) {
                $condition["ng.goods_name"] = array(
                    "like",
                    "%" . $goods_name . "%"
                );
            }
            if ($category_id_3 != "") {
                $condition["ng.category_id_3"] = $category_id_3;
            } elseif ($category_id_2 != "") {
                $condition["ng.category_id_2"] = $category_id_2;
            } elseif ($category_id_1 != "") {
                $condition["ng.category_id_1"] = $category_id_1;
            }
            $condition["ng.shop_id"] = $this->instance_id;
            $result = $goodservice->getGoodsDeletedList($page_index, $page_size, $condition, "ng.create_time desc");
            return $result;
        } else {
            $search_info = request()->post('search_info', '');
            $this->assign("search_info", $search_info);
            // 查找一级课程分类
            $goodsCategory = new GoodsCategory();
            $oneGoodsCategory = $goodsCategory->getGoodsCategoryListByParentId(0);
            $this->assign("oneGoodsCategory", $oneGoodsCategory);
            
            $child_menu_list = array(
                array(
                    'url' => "goods/goodslist",
                    'menu_name' => "课程出售中",
                    "active" => 0
                ),
                array(
                    'url' => "goods/goodslist?state_type=2",
                    'menu_name' => "课程已下架",
                    'active' => 0
                ),
                
                array(
                    'url' => "goods/recyclelist",
                    'menu_name' => "回收站",
                    "active" => 1
                )
            );
            $this->assign('child_menu_list', $child_menu_list);
            
            return view($this->style . 'Goods/recycleList');
        }
    }

    /**
     * 回收站课程恢复
     */
    public function regainGoodsDeleted()
    {
        if (request()->isAjax()) {
            $goods_ids = request()->post('goods_ids');
            $goods = new GoodsService();
            $res = $goods->regainGoodsDeleted($goods_ids);
            return AjaxReturn($res);
        }
    }

    /**
     * 拷贝课程
     */
    public function copyGoods()
    {
        $goods_id = request()->post('goods_id', '');
        $goodservice = new GoodsService();
        $res = $goodservice->copyGoodsInfo($goods_id);
        if ($res > 0) {
            $goodsId = $res;
            
            $url = Config::get('view_replace_str.APP_MAIN') . '/Goods/goodsDetail?id=' . $goodsId;
            $pay_qrcode = getQRcode($url, 'upload/goods_qrcode', 'goods_qrcode_' . $goodsId);
            
            $goodservice->goods_QRcode_make($goodsId, $pay_qrcode);
        }
        return AjaxReturn($res);
    }

    /**
     * 课程分类选择
     *
     * @return Ambigous <\think\response\View, \think\response\$this, \think\response\View>
     */
    public function dialogSelectCategory()
    {
        $category_id = request()->get("category_id", 0);
        $goodsid = request()->get("goodsid", 0);
        $flag = request()->get("flag", 'category');
        // 扩展分类标签id,用户回调方法
        $box_id = request()->get("box_id", '');
        // 已选择扩展分类(用于控制重复选择)
        $category_extend_id = request()->get("category_extend_id", '');
        if (! empty($category_extend_id) && $category_id != 0) {
            $category_extend_id = explode(",", $category_extend_id);
            foreach ($category_extend_id as $k => $v) {
                if ($v == $category_id) {
                    unset($category_extend_id[$k]);
                }
            }
            sort($category_extend_id);
            $category_extend_id = implode(',', $category_extend_id);
        }
        $this->assign("flag", $flag);
        $this->assign("goodsid", $goodsid);
        $this->assign("box_id", $box_id);
        $this->assign("category_extend_id", $category_extend_id);
        
        $goods_category = new GoodsCategory();
        $list = $goods_category->getGoodsCategoryListByParentId(0);
        $this->assign("cateGoryList", $list);
        $category_select_ids = "";
        $category_select_names = "";
        if ($category_id != 0) {
            $category_select_result = $goods_category->getParentCategory($category_id);
            $category_select_ids = $category_select_result["category_ids"];
            $category_select_names = $category_select_result["category_names"];
        }
      
        $this->assign("category_select_ids", $category_select_ids);
        $this->assign("category_select_names", $category_select_names);
        return view($this->style . 'Goods/dialogSelectCategory');
    }

    /**
     * 更改课程排序
     */
    public function updateGoodsSortAjax()
    {
        if (request()->isAjax()) {
            $goods_id = request()->post("goods_id", "");
            $sort = request()->post("sort", "");
            $goods = new GoodsService();
            $res = $goods->updateGoodsSort($goods_id, $sort);
            return AjaxReturn($res);
        }
    }

    /**
     * 生成课程二维码
     */
    public function updateGoodsQrcode()
    {
        $goods_ids = request()->post('goods_id', '');
        $goods_ids = explode(',', $goods_ids);
        if (! empty($goods_ids) && is_array($goods_ids)) {
            foreach ($goods_ids as $v) {
                $url = __URL(Config::get('view_replace_str.APP_MAIN') . '/goods/goodsdetail?id=' . $v);
                try {
                    $pay_qrcode = getQRcode($url, 'upload/goods_qrcode', 'goods_qrcode_' . $v);
                } catch (\Exception $e) {
                    return AjaxReturn(UPLOAD_FILE_ERROR);
                }
                $goods = new GoodsService();
                $result = $goods->goods_QRcode_make($v, $pay_qrcode);
            }
        }
        return AjaxReturn($result);
    }

    /**
     * 修改课程名称或促销语
     */
    public function ajaxEditGoodsNameOrIntroduction()
    {
        if (request()->isAjax()) {
            $goods = new GoodsService();
            $goods_id = request()->post("goods_id", "");
            $up_type = request()->post("up_type", "");
            $up_content = request()->post("up_content", "");
            $res = $goods->updateGoodsNameOrIntroduction($goods_id, $up_type, $up_content);
            return AjaxReturn($res);
        }
    }

    /**
     * 虚拟课程类型列表
     */
    public function virtualGoodsTypeList()
    {
        if (request()->isAjax()) {
            
            $virtual_goods = new VirtualGoods();
            $page_index = request()->post("page_index", 1);
            $page_size = request()->post("page_size", PAGESIZE);
            $search_name = request()->post("search_name", "");
            $condition = array();
            if (! empty($search_name)) {
                $condition['virtual_goods_type_name'] = array(
                    "like",
                    "%$search_name%"
                );
            }
            $res = $virtual_goods->getVirtualGoodsTypeList($page_index, $page_size, $condition);
            return $res;
        }
        return view($this->style . 'Goods/virtualGoodsTypeList');
    }

    /**
     * 编辑虚拟课程类型
     */
    public function editVirtualGoodsType()
    {
        $virtual_goods = new VirtualGoods();
        $virtual_goods_type_id = request()->get("virtual_goods_type_id", 0);
        if (request()->isAjax()) {
            $virtual_goods_type_id = request()->post("virtual_goods_type_id", 0); // 虚拟课程类型id
            $virtual_goods_group_id = request()->post("virtual_goods_group_id", ""); // 关联虚拟课程分组id
            $virtual_goods_type_name = request()->post("virtual_goods_type_name", ""); // 虚拟课程类型名称
            $validity_period = request()->post("validity_period", 0); // 有效期/天(0表示不限制)
            $is_enabled = request()->post("is_enabled", 1); // 是否开启
            $money = request()->post("money", ""); // 金额
            $config_info = request()->post("config_info", ""); // 配置信息JSON（API接口，参数）
            $confine_use_number = request()->post("confine_use_number", 0); // 限制使用次数
            $res = $virtual_goods->editVirtualGoodsType($virtual_goods_type_id, $virtual_goods_group_id, $virtual_goods_type_name, $validity_period, $is_enabled, $money, $config_info, $confine_use_number);
            return AjaxReturn($res);
        }
        $virtual_goods_type = $virtual_goods->getVirtualGoodsTypeById($virtual_goods_type_id);
        if (! empty($virtual_goods_type)) {
            $virtual_goods_type['config_info'] = json_decode($virtual_goods_type['config_info'], true);
        }
        $this->assign("virtual_goods_type", $virtual_goods_type);
        $this->assign("virtual_goods_type_id", $virtual_goods_type_id);
        
        return view($this->style . "Goods/editVirtualGoodsType");
    }

    /**
     * 删除虚拟课程类型
     */
    public function deleteVirtualGoodsType()
    {
        $virtual_goods = new VirtualGoods();
        $virtual_goods_type_id = request()->post("virtual_goods_type_id", "");
        $res = $virtual_goods->deleteVirtualGoodsType($virtual_goods_type_id);
        return AjaxReturn($res);
    }

    /**
     * 设置虚拟课程类型启用禁用
     *
     * @return boolean
     */
    public function setVirtualGoodsTypeIsEnabled()
    {
        $virtual_goods = new VirtualGoods();
        $virtual_goods_type_id = request()->post("virtual_goods_type_id", "");
        $is_enabled = request()->post("is_enabled", 1);
        $res = $virtual_goods->setVirtualGoodsTypeIsEnabled($virtual_goods_type_id, $is_enabled);
        return AjaxReturn($res);
    }

    /**
     * 获取添加活动课程列表
     */
    public function getSelectGoodslist()
    {
        $goods = new GoodsService();
        $page_index = request()->post("page_index", 1);
        $page_size = request()->post("page_size", PAGESIZE);
        $goods_name = request()->post('goods_name', '');
        $goods_id_array = request()->post("goods_id_array", "");
        $type = request()->post("type", "");
        $category_id_1 = request()->post('category_id_1', '');
        $category_id_2 = request()->post('category_id_2', '');
        $category_id_3 = request()->post('category_id_3', '');
        
        $data = request()->post("data");
        $data = json_decode($data, true);
        $goods_type = $data['goods_type'];
        $state = $data['state'];
        
        $condition = array();
       
        if (! empty($goods_name)) {
            $condition["goods_name"] = array(
                "like",
                "%" . $goods_name . "%"
            );
        }
        
        // 选择指定id的课程
        if (! empty($goods_id_array)) {
            if ($type == "select") {
                $condition["goods_id"] = array(
                    "not in",
                    $goods_id_array
                );
            } else 
                if ($type == "selected") {
                    $condition["goods_id"] = array(
                        "in",
                        $goods_id_array
                    );
                }
        }
        
        // 课程分类
        if ($category_id_3 != "") {
            $condition["category_id_3"] = $category_id_3;
        } elseif ($category_id_2 != "") {
            $condition["category_id_2"] = $category_id_2;
        } elseif ($category_id_1 != "") {
            $condition["category_id_1"] = $category_id_1;
        }
        
        $list = $goods->getSelectGoodsList($page_index, $page_size, $condition, "sort asc,create_time desc", "goods_id,goods_name,stock,promotion_price,price");
        return $list;
    }

    /**
     * 删除已上传的视频
     */
    function delSelectedVideo()
    {
        $src = request()->post('src');
        $res = 1;
        if (! empty($src)) {
            $res = unlink($src);
        }
        
        return $res;
    }

    /**
     * 批量处理
     */
    public function batchProcessingGoods()
    {
        if (request()->isAjax()) {
            $info = array(
                "price" => request()->post("price", 0),
                "market_price" => request()->post("market_price", 0),
                "cost_price" => request()->post("cost_price", 0),
                "stock" => request()->post("stock", 0),
                "catrgory_one" => request()->post("catrgory_one", 0),
                "catrgory_two" => request()->post("catrgory_two", 0),
                "catrgory_three" => request()->post("catrgory_three", 0),
                "brand_id" => request()->post("brand_id", 0),
                "goods_ids" => request()->post("goods_ids", "")
            );
            $goods = new GoodsService();
            $res = $goods->batchProcessingGoods($info);
            return $res;
        }
    }
    
    /**
     * 添加虚拟课程（点卡添加）
     */
    public function ajaxAddVirtualGoods(){
        
        if(request()->isAjax()){
            
            $virtual_card_json = request()->post('virtual_card', '');
            $goods_id = request()->post('goods_id', '');
            $virtual_goods_type_id = request()->post('virtual_goods_type_id', '');
            
            $virtual_goods = new VirtualGoods();
            $res = $virtual_goods->addBatchVirtualCard($virtual_goods_type_id, $goods_id, $virtual_card_json);
            return AjaxReturn($res);
        }
    }
    
    /**
     * 批量添加课程分类
     */
    public function batchAddgoodscategory(){
        if(request()->isAjax()){
            $content = request()->post("content", "");
            $goodscate = new GoodsCategory();
            $res = $goodscate -> batchAddgoodscategory($content);
            return $res;
        }
    }
    /**
     * 单一获取规格数据
     */
    public function getGoodsSpecInfoQuery(){
        $attr_id = request()->post("attr_id", 0);
        $condition = array("attr_id" => $attr_id);
        $goods = new GoodsService();
        $res = $goods->getGoodsSpecInfoQuery($condition);
        return $res;
    }
}