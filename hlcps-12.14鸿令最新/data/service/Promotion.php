<?php
namespace data\service;

/**
 * 营销
 */
use data\api\IPromotion;
use data\model\AlbumPictureModel as AlbumPictureModel;
use data\model\NsCouponGoodsModel as NsCouponGoodsModel;
use data\model\NsCouponModel as NsCouponModel;
use data\model\NsCouponTypeModel as NsCouponTypeModel;
use data\model\NsGoodsModel;
use data\model\NsGoodsSkuModel;
use data\model\NsPointConfigModel;
use data\service\BaseService as BaseService;
use data\model\NsComboPackagePromotionModel;
use data\model\NsGoodsViewModel;
use data\model\NsPromotionGamesModel;
use data\model\NsPromotionGameRuleModel;
use data\model\NsPromotionTopicModel;
use data\model\NsPromotionTopicGoodsModel;
use data\model\NsMemberLevelModel;
use data\model\NsPromotionGameTypeModel;
use data\model\NsOrderModel;
use data\model\NsPromotionGamesWinningRecordsModel;
use data\model\UserModel;
use data\model\NsMemberAccountModel;
use data\service\Member\MemberAccount;
use data\service\Member\MemberCoupon;
use data\service\Order\OrderGoods;
use data\service\Order\Order as OrderService;
use data\model\NsOrderGoodsModel;
use data\model\BaseModel;

class Promotion extends BaseService implements IPromotion
{

    function __construct()
    {
        parent::__construct();
    }
    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IPromotion::getCouponGrantLogList()
     */
    public function getCouponGrantLogList($page_index = 1, $page_size = 0, $condition = '', $order = 'coupon_id asc')
    {
        $coupon = new NsCouponModel();
        $coupon_type = new NsCouponTypeModel();
        $user = new UserModel();
        $coupon_list = $coupon->pageQuery($page_index, $page_size, $condition, $order, '*');
        foreach($coupon_list['data'] as $k=>$v){
            if($v['uid']>0){
                $coupon_list['data'][$k]['user_info'] = $user->getInfo(['uid'=>$v['uid']],'nick_name');
            }
            $coupon = $coupon_type->getInfo(['coupon_type_id'=>$v['coupon_type_id']],'coupon_name');
            $coupon_list['data'][$k]['coupon_name'] = $coupon['coupon_name'];
        }
        return $coupon_list;
        // TODO Auto-generated method stub
    }
    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IPromotion::getCouponTypeList()
     */
    public function getCouponTypeList($page_index = 1, $page_size = 0, $condition = '', $order = 'create_time asc')
    {
        $coupon_type = new NsCouponTypeModel();
        $coupon_type_list = $coupon_type->pageQuery($page_index, $page_size, $condition, $order, 'coupon_type_id, coupon_name, money, count, max_fetch, at_least, need_user_level, range_type, start_time, end_time, create_time, update_time,is_show,is_show,is_bespoke');
        /*
         * if(!empty($coupon_type_list['data']))
         * foreach ($coupon_type_list['data'] as $k => $v)
         * {
         * if($v['range_type'] == 0) //部分产品
         * {
         * $coupon_goods = new NsCouponGoodsModel();
         * $goods_list = $coupon_goods->getCouponTypeGoodsList($v['coupon_type_id']);
         * $coupon_type_list['data'][$k]['goods_list'] = $goods_list;
         * }
         * }
         */
        //
        return $coupon_type_list;
        // TODO Auto-generated method stub
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IPromotion::deletecouponType()
     */
    public function deletecouponType($coupon_type_id)
    {
        $coupon = new NsCouponModel();
        $coupon_type = new NsCouponTypeModel();
        $coupon_type->startTrans();
        try {
            $condition['coupon_type_id'] = $coupon_type_id;
            $condition['state'] = 1;
            $coupon_count = $coupon->getcount($condition);
            if ($coupon_count > 0) {
                $coupon_type->rollback();
                return - 1;
            }
            $coupon_type->destroy($coupon_type_id);
            $coupon_type->commit();
            return 1;
        } catch (\Exception $e) {
            $coupon_type->rollback();
            return $e->getMessage();
        }
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICoupon::getCouponTypeDetail()
     */
    public function getCouponTypeDetail($coupon_type_id)
    {
        $coupon_type = new NsCouponTypeModel();
        $data = $coupon_type->get($coupon_type_id);
        $coupon_goods = new NsCouponGoodsModel();
        $goods_list = $coupon_goods->getCouponTypeGoodsList($coupon_type_id);
        foreach ($goods_list as $k => $v) {
            $picture = new AlbumPictureModel();
            $pic_info = array();
            $pic_info['pic_cover'] = '';
            if (! empty($v['picture'])) {
                $pic_info = $picture->get($v['picture']);
            }
            $goods_list[$k]['picture_info'] = $pic_info;
        }
        $data['goods_list'] = $goods_list;
        return $data;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     *
     * @see \data\api\ICoupon::addCouponType()
     */
    public function addCouponType($coupon_name, $money, $count, $max_fetch, $at_least, $need_user_level, $range_type, $start_time, $end_time, $is_show, $is_bespoke, $goods_list)
    {
        $coupon_type = new NsCouponTypeModel();
        $error = 0;
        $coupon_type->startTrans();
        try {
            // 添加优惠券类型表
            /**
             * coupon_type_id int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券类型Id',
             * shop_id int(11) NOT NULL DEFAULT 1 COMMENT '店铺ID',
             * coupon_name varchar(50) NOT NULL DEFAULT '' COMMENT '优惠券名称',
             * money decimal(10, 2) NOT NULL COMMENT '发放面额',
             * count int(11) NOT NULL COMMENT '发放数量',
             * max_fetch int(11) NOT NULL DEFAULT 0 COMMENT '每人最大领取个数 0无限制',
             * at_least decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '满多少元使用 0代表无限制',
             * need_user_level tinyint(4) NOT NULL DEFAULT 0 COMMENT '领取人会员等级',
             * range_type tinyint(4) NOT NULL DEFAULT 1 COMMENT '使用范围0部分产品使用 1全场产品使用',
             * start_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效日期开始时间',
             * end_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效日期结束时间',
             * create_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
             */
            $data = array(
                'shop_id' => $this->instance_id,
                'coupon_name' => $coupon_name,
                'money' => $money,
                'count' => $count,
                'max_fetch' => $max_fetch,
                'at_least' => $at_least,
                'need_user_level' => $need_user_level,
                'range_type' => $range_type,
                'start_time' => getTimeTurnTimeStamp($start_time),
                'end_time' => getTimeTurnTimeStamp($end_time),
                'is_show' => $is_show,
                'is_bespoke' => $is_bespoke,
                "create_time" => time()
            );
            $coupon_type->save($data);
            $coupon_type_id = $coupon_type->coupon_type_id;
            $this->addUserLog($this->uid, 1, '营销', '添加优惠券类型', '添加优惠券类型:'.$coupon_name);
            // 添加类型课程表
            if ($range_type == 0 && ! empty($goods_list)) {
                $goods_list_array = explode(',', $goods_list);
                foreach ($goods_list_array as $k => $v) {
                    $data_coupon_goods = array(
                        'coupon_type_id' => $coupon_type_id,
                        'goods_id' => $v
                    );
                    $coupon_goods = new NsCouponGoodsModel();
                    $retval = $coupon_goods->save($data_coupon_goods);
                }
            }
            // 添加优惠券表
            if ($count > 0) {
                for ($i = 0; $i < $count; $i ++) {
                    /**
                     * coupon_id int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券id',
                     * coupon_type_id int(11) NOT NULL COMMENT '优惠券类型id',
                     * shop_id int(11) NOT NULL COMMENT '店铺Id',
                     * coupon_code varchar(255) NOT NULL DEFAULT '' COMMENT '优惠券编码',
                     * uid int(11) NOT NULL COMMENT '领用人',
                     * use_order_id int(11) NOT NULL COMMENT '优惠券使用订单id',
                     * create_order_id int(11) NOT NULL DEFAULT 0 COMMENT '创建订单id(优惠券只有是完成订单发放的优惠券时才有值)',
                     * money decimal(10, 2) NOT NULL COMMENT '面额',
                     * fetch_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '领取时间',
                     * use_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '使用时间',
                     * state tinyint(4) NOT NULL DEFAULT 0 COMMENT '优惠券状态 0未领用 1已领用（未使用） 2已使用 3已过期',
                     */
                    $data_coupon = array(
                        'coupon_type_id' => $coupon_type_id,
                        'shop_id' => $this->instance_id,
                        'coupon_code' => time() . rand(111, 999),
                        'uid' => 0,
                        'create_order_id' => 0,
                        'money' => $money,
                        'state' => 0,
                        "start_time" => getTimeTurnTimeStamp($start_time),
                        "end_time" => getTimeTurnTimeStamp($end_time)
                    );
                    $coupon = new NsCouponModel();
                    $retval = $coupon->save($data_coupon);
                }
            }
            $coupon_type->commit();
            return 1;
        } catch (\Exception $e) {
            $coupon_type->rollback();
            return $e->getMessage();
        }
        return 0;
        // TODO Auto-generated method stub
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IPromotion::updateCouponType()
     */
    public function updateCouponType($coupon_type_id, $coupon_name, $money, $count, $repair_count, $max_fetch, $at_least, $need_user_level, $range_type, $start_time, $end_time, $is_show, $is_bespoke, $goods_list)
    {
        $coupon_type = new NsCouponTypeModel();
        $error = 0;
        $coupon_type->startTrans();
        try {
            // 更新优惠券类型表
            /**
             * coupon_type_id int(11) NOT NULL AUTO_INCREMENT COMMENT '优惠券类型Id',
             * shop_id int(11) NOT NULL DEFAULT 1 COMMENT '店铺ID',
             * coupon_name varchar(50) NOT NULL DEFAULT '' COMMENT '优惠券名称',
             * money decimal(10, 2) NOT NULL COMMENT '发放面额',
             * count int(11) NOT NULL COMMENT '发放数量',
             * max_fetch int(11) NOT NULL DEFAULT 0 COMMENT '每人最大领取个数 0无限制',
             * at_least decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '满多少元使用 0代表无限制',
             * need_user_level tinyint(4) NOT NULL DEFAULT 0 COMMENT '领取人会员等级',
             * range_type tinyint(4) NOT NULL DEFAULT 1 COMMENT '使用范围0部分产品使用 1全场产品使用',
             * start_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效日期开始时间',
             * end_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效日期结束时间',
             * create_time datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
             */
            $data = array(
                'shop_id' => $this->instance_id,
                'coupon_name' => $coupon_name,
                'money' => $money,
                'count' => $count + $repair_count,
                'max_fetch' => $max_fetch,
                'at_least' => $at_least,
                'need_user_level' => $need_user_level,
                'range_type' => $range_type,
                'start_time' => getTimeTurnTimeStamp($start_time),
                'end_time' => getTimeTurnTimeStamp($end_time),
                'is_show' => $is_show,
                'is_bespoke' => $is_bespoke
            );
            $coupon_type->save($data, [
                'coupon_type_id' => $coupon_type_id
            ]);
            $this->addUserLog($this->uid, 1, '营销', '修改优惠券类型', '修改优惠券类型:'.$coupon_name);
            // 更新类型课程表
            $coupon_goods = new NsCouponGoodsModel();
            $coupon_goods->destroy([
                'coupon_type_id' => $coupon_type_id
            ]);
            if ($range_type == 0 && ! empty($goods_list)) {
                $goods_list_array = explode(',', $goods_list);
                foreach ($goods_list_array as $k => $v) {
                    $data_coupon_goods = array(
                        'coupon_type_id' => $coupon_type_id,
                        'goods_id' => $v
                    );
                    $coupon_goods = new NsCouponGoodsModel();
                    $retval = $coupon_goods->save($data_coupon_goods);
                }
            }
            // 添加优惠券表
            if ($repair_count > 0) {
                for ($i = 0; $i < $repair_count; $i ++) {
                    $data_coupon = array(
                        'coupon_type_id' => $coupon_type_id,
                        'shop_id' => $this->instance_id,
                        'coupon_code' => time() . rand(111, 999),
                        'uid' => 0,
                        'create_order_id' => 0,
                        'money' => $money,
                        'state' => 0,
                        'start_time' => getTimeTurnTimeStamp($start_time),
                        'end_time' => getTimeTurnTimeStamp($end_time)
                    );
                    $coupon = new NsCouponModel();
                    $retval = $coupon->save($data_coupon);
                }
            }
            // 修改优惠券时，更新优惠券的使用状态，金额
            $coupon = new NsCouponModel();
            $coupon_condition['state'] = array(
                'in',
                [
                    0,
                    3
                ]
            ); // 未领用或者已过期的优惠券
            $coupon_condition['coupon_type_id'] = $coupon_type_id;
            $coupon->save([
                'end_time' => getTimeTurnTimeStamp($end_time),
                'start_time' => getTimeTurnTimeStamp($start_time),
                'state' => 0,
                'money' => $money
            ], $coupon_condition);
            $coupon_type->commit();
            return 1;
        } catch (\Exception $e) {
            $coupon_type->rollback();
            return 0;
        }
        return 0;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICoupon::getTypeCouponList()
     */
    public function getTypeCouponList($coupon_type_id, $get_type = 0, $use_type = 0)
    {
        $coupon = new NsCouponModel();
        $condition = array(
            'coupon_type_id' => $coupon_type_id,
            'state' => $use_type
        );
        $list = $coupon->pageQuery(1, 0, $condition, '', '*');
        return $list['data'];
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICoupon::useCoupon()
     */
    public function useCoupon($uid, $coupon_id, $order_id)
    {
        $coupon = new NsCouponModel();
        $data = array(
            'use_order_id' => $order_id,
            'state' => 2
        );
        $res = $coupon->save($data, [
            'coupon_id' => $coupon_id
        ]);
        return $res;
        // TODO Auto-generated method stub
    }
    
    /*
     * (non-PHPdoc)
     * @see \data\api\ICoupon::getCouponDetail()
     */
    public function getCouponDetail($coupon_id)
    {
        // TODO Auto-generated method stub
    }

    
    /**
     * 添加或编辑组合套餐
     */
    public function addOrEditComboPackage($id, $combo_package_name, $combo_package_price, $goods_id_array, $is_shelves, $shop_id, $original_price, $save_the_price)
    {
        $data = array(
            "combo_package_name" => $combo_package_name,
            "combo_package_price" => $combo_package_price,
            "goods_id_array" => $goods_id_array,
            "is_shelves" => $is_shelves,
            "shop_id" => $shop_id,
            "original_price" => $original_price,
            "save_the_price" => $save_the_price
        );
        $nsComboPackage = new NsComboPackagePromotionModel();
        if ($id == 0) {
            $data["create_time"] = time();
            $nsComboPackage->save($data);
            $this->addUserLog($this->uid, 1, '营销', '组合套餐', '添加组合套餐：'.$combo_package_name);
            return $nsComboPackage->id;
        } else 
            if ($id > 0) {
                $data["update_time"] = time();
                $res = $nsComboPackage->save($data, [
                    "id" => $id,
                    "shop_id" => $shop_id
                ]);
                $this->addUserLog($this->uid, 1, '营销', '组合套餐', '修改组合套餐：'.$combo_package_name);
                return $res;
            }
    }

    /**
     * 获取组合套餐详情
     */
    public function getComboPackageDetail($id)
    {
        $nsComboPackage = new NsComboPackagePromotionModel();
        $info = $nsComboPackage->getInfo([
            "id" => $id
        ]);
        return $info;
    }

    /**
     * 获取组合套餐列表
     *
     * @param unknown $page_index            
     * @param unknown $page_size            
     * @param unknown $condition            
     * @param string $order            
     * @param string $field            
     * @return number[]|unknown[]
     */
    public function getComboPackageList($page_index, $page_size, $condition, $order = "", $field = "*")
    {
        $nsComboPackage = new NsComboPackagePromotionModel();
        $list = $nsComboPackage->pageQuery($page_index, $page_size, $condition, $order, $field);
        return $list;
    }

    /**
     * 删除组合套餐
     */
    public function deleteComboPackage($ids)
    {
        $nsComboPackage = new NsComboPackagePromotionModel();
        $res = $nsComboPackage->destroy([
            "id" => array(
                "in",
                $ids
            )
        ]);
        return $res;
    }

    /**
     * 获取组合套餐课程列表
     *
     * @param unknown $goods_id            
     */
    public function getComboPackageGoodsArray($goods_id)
    {
        $nsComboPackage = new NsComboPackagePromotionModel();
        $condition = "FIND_IN_SET($goods_id, goods_id_array ) AND is_shelves = 1";
        $list = $nsComboPackage->getQuery($condition, "*", "");
        $goods = new NsGoodsViewModel();
        foreach ($list as $k => $v) {
            $main_goods = $goods->getGoodsViewQuery(1, 1, [
                "ng.state" => 1,
                "ng.goods_id" => $goods_id,
                "ng.goods_type" => 1
            ], "");
            $list[$k]["main_goods"] = $main_goods[0];
            $goods_array = $goods->getGoodsViewQuery(1, 0, [
                "ng.state" => 1,
                "ng.goods_id" => array(
                    array(
                        "in",
                        $v["goods_id_array"]
                    ),
                    array(
                        "neq",
                        $goods_id
                    )
                ),
                "ng.goods_type" => 1
            ], "");
            $goods_count = $goods->getGoodsrViewCount([
                "ng.goods_id" => array(
                    array(
                        "in",
                        $v["goods_id_array"]
                    ),
                    array(
                        "neq",
                        $goods_id
                    )
                ),
                "ng.goods_type" => 1
            ]);
            // 计算原价
            $list[$k]["original_price"] = $goods->getSum([
                "goods_id" => array(
                    "in",
                    $v["goods_id_array"]
                ),
                "goods_type" => 1
            ], "price");
            
            $list[$k]["save_the_price"] = $list[$k]["original_price"] - $v["combo_package_price"];
            $list[$k]["goods_array"] = $goods_array;
            // 如果套餐中有课程已下架，则整个套餐都不予显示
            if (count($goods_array) != $goods_count) {
                unset($list[$k]);
            }
        }
        return $list;
    }

    /**
     * 获取指定组合套餐课程列表
     *
     * @param 组合套餐id $id            
     * @param 当前访问的goods_id $curr_goods_id            
     * @return list
     */
    public function getComboPackageGoodsById($id, $curr_goods_id)
    {
        $combo_package_model = new NsComboPackagePromotionModel();
        $combo_package_condition = "id = $id AND is_shelves = 1";
        $combo_package = $combo_package_model->getInfo($combo_package_condition, "id,combo_package_name,combo_package_price,goods_id_array,is_shelves,shop_id,original_price,save_the_price", "");
        if (! empty($combo_package)) {
            // 查询组合套餐中的课程信息
            $goods_condition = "goods_id in(" . $combo_package['goods_id_array'] . ")";
            $combo_package['goods_list'] = array();
            if (! empty($curr_goods_id)) {
                $curr_goods = $this->getCollatingGoodsDetail($curr_goods_id);
                array_push($combo_package['goods_list'], $curr_goods);
            }
            $goods_id_array = explode(",", $combo_package['goods_id_array']);
            foreach ($goods_id_array as $k => $v) {
                if ($v != $curr_goods_id) {
                    $item = $this->getCollatingGoodsDetail($v);
                    array_push($combo_package['goods_list'], $item);
                }
            }
        }
        return $combo_package;
    }

    public function getCollatingGoodsDetail($goods_id)
    {
        $goods = new Goods();
        $curr_goods = $goods->getGoodsDetail($goods_id);
        $default_gallery_img = $curr_goods["img_list"][0]["pic_cover_big"];
        $curr_goods['default_gallery_img'] = $default_gallery_img;
        $spec_list = $curr_goods["spec_list"];
        if (! empty($spec_list)) {
            $album = new Album();
            foreach ($spec_list as $k => $v) {
                foreach ($v["value"] as $t => $m) {
                    if ($m["spec_show_type"] == 3) {
                        if (is_numeric($m["spec_value_data"])) {
                            $picture_detail = $album->getAlubmPictureDetail([
                                "pic_id" => $m["spec_value_data"]
                            ]);
                            
                            if (! empty($picture_detail)) {
                                $spec_list[$k]["value"][$t]["picture_id"] = $picture_detail['pic_id'];
                                $spec_list[$k]["value"][$t]["spec_value_data"] = $picture_detail["pic_cover_micro"];
                                $spec_list[$k]["value"][$t]["spec_value_data_big_src"] = $picture_detail["pic_cover_big"];
                            } else {
                                $spec_list[$k]["value"][$t]["spec_value_data"] = '';
                                $spec_list[$k]["value"][$t]["spec_value_data_big_src"] = '';
                                $spec_list[$k]["value"][$t]["picture_id"] = 0;
                            }
                        } else {
                            $spec_list[$k]["value"][$t]["spec_value_data_big_src"] = $m["spec_value_data"];
                            $spec_list[$k]["value"][$t]["picture_id"] = 0;
                        }
                    }
                }
            }
            $curr_goods['spec_list'] = $spec_list;
        }
        return $curr_goods;
    }

    /**
     * (non-PHPdoc)
     *
     * @see \data\api\IPromotion::getCouponTypeList()
     */
    public function getCouponTypeInfoList($page_index = 1, $page_size = 0, $condition = '', $order = '', $uid = 0)
    {
        $coupon_type = new NsCouponTypeModel();
        $coupon = new NsCouponModel();
        $coupon_type_list = $coupon_type->pageQuery($page_index, $page_size, $condition, $order, 'coupon_type_id, coupon_name, money, count, max_fetch, at_least, need_user_level, range_type, start_time, end_time, create_time, update_time,is_show');
        foreach ($coupon_type_list['data'] as $k => $v) {
            // 剩余数量
            $surplus_num = $coupon->getCount([
                "coupon_type_id" => $v["coupon_type_id"],
                "state" => 0
            ]);
            $coupon_type_list["data"][$k]["surplus_num"] = $surplus_num;
            // 当前用户已领取数量
            $received_num = 0;
            if(!empty($uid)){
                $received_num = $coupon->getCount([
                    "coupon_type_id" => $v["coupon_type_id"],
                    "uid" => $uid
                ]); 
            }
            $coupon_type_list["data"][$k]["received_num"] = $received_num;
            // 计算优惠券未领取百分比
            $surplus_percentage = 0;
            if ($v["count"] > 0) {
                $surplus_percentage = floor($surplus_num / $v["count"] * 100);
            }
            $coupon_type_list["data"][$k]["surplus_percentage"] = $surplus_percentage;
        }
        return $coupon_type_list;
        // TODO Auto-generated method stub
    }

    /**
     * 获取营销游戏列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    public function getPromotionGamesList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        $promotion_games = new NsPromotionGamesModel();
        $list = $promotion_games->pageQuery($page_index, $page_size, $condition, $order, '*');
        
        foreach ($list['data'] as $item) {
            
            $game_type_info = $this->getPromotionGameTypeInfo($item['game_type']);
            $item['game_type_name'] = $game_type_info['type_name'];
            
            switch ($item['status']) {
                case 0:
                    $item['status_name'] = '未开始';
                    break;
                case 1:
                    $item['status_name'] = '已开始';
                    break;
                case - 1:
                    $item['status_name'] = '已结束';
                    break;
                default:
                    break;
            }
        }
        return $list;
    }

    /**
     * 营销游戏列表
     *
     * @param unknown $game_type            
     */
    public function getPromotionGameTypeInfo($game_type)
    {
        $game_type_model = new NsPromotionGameTypeModel();
        $info = $game_type_model->getInfo([
            'game_type' => $game_type
        ], '*');
        return $info;
    }

    /**
     * 获取营销游戏详情
     *
     * @param unknown $game_id            
     */
    public function getPromotionGameDetail($game_id)
    {
        $promotion_games = new NsPromotionGamesModel();
        $game_info = $promotion_games->getInfo([
            'game_id' => $game_id
        ], '*');
        $promotion_games_rule = new NsPromotionGameRuleModel();
        $rule_list = $promotion_games_rule->getQuery([
            'game_id' => $game_id
        ], '*', '');
        
        $game_info['rule'] = $rule_list;
        return $game_info;
    }

    /**
     * 添加营销游戏
     *
     * @param unknown $shop_id            
     * @param unknown $name            
     * @param unknown $type            
     * @param unknown $member_level            
     * @param unknown $points            
     * @param unknown $start_time            
     * @param unknown $end_time            
     * @param unknown $remark            
     * @param unknown $rule_array            
     */
    public function addUpdatePromotionGame($game_id, $shop_id, $name, $type, $member_level, $points, $start_time, $end_time, $remark, $winning_rate, $no_winning_des, $rule_json, $activity_images, $winning_list_display, $join_type, $join_frequency, $winning_type, $winning_max)
    {
        $promotion_games = new NsPromotionGamesModel();
        $promotion_games->startTrans();
        
        try {
            $member_level_model = new NsMemberLevelModel();
            if ($member_level == 0) {
                $level_name = '所有用户';
            } else {
                $level_info = $member_level_model->getInfo([
                    'level_id' => $member_level
                ], 'level_name');
                $level_name = $level_info['level_name'];
            }
            
            $data = array(
                'shop_id' => $shop_id,
                'name' => $name,
                'game_type' => $type,
                'member_level' => $member_level,
                'level_name' => $level_name,
                'points' => $points,
                'start_time' => getTimeTurnTimeStamp($start_time),
                'end_time' => getTimeTurnTimeStamp($end_time),
                'remark' => $remark,
                'winning_rate' => $winning_rate,
                'no_winning_des' => $no_winning_des,
                'activity_images' => $activity_images,
                "winning_list_display" => $winning_list_display,
                "join_type" => $join_type,
                "join_frequency" => $join_frequency,
                "winning_type" => $winning_type,
                "winning_max" => $winning_max
            );
            
            if (empty($game_id)) {
                $this->addUserLog($this->uid, 1, '营销', '营销游戏', '添加游戏：'.$name);
                $game_id = $promotion_games->save($data);
            } else {
                $this->addUserLog($this->uid, 1, '营销', '营销游戏', '修改游戏：'.$name);
                $promotion_games->save($data, [
                    'game_id' => $game_id
                ]);
            }
            
            // 删除已有的规则
            $this->delPromotionGameRule($game_id);
            
            // 添加规则表
            $rule_array = json_decode($rule_json, true);
            foreach ($rule_array as $item) {
                
                $this->addPromotionGameRule($game_id, $item['rule_name'], $item['rule_num'], $item['type'], $item['type_value'], $item['points'], $item['coupon_type_id'], $item['hongbao'], $item['gift_id']);
            }
            
            $promotion_games->commit();
            
            return 1;
        } catch (\Exception $e) {
            
            $promotion_games->rollback();
            return $e->getMessage();
        }
    }

    /**
     * 添加活动规则
     *
     * @param unknown $game_id            
     * @param unknown $rule_num            
     * @param unknown $type            
     * @param unknown $sum            
     * @param string $remark            
     */
    public function addPromotionGameRule($game_id, $rule_name, $rule_num, $type, $type_value, $points, $coupon_type_id, $hongbao, $gift_id, $remark = '')
    {
        $game_rule_model = new NsPromotionGameRuleModel();
        $data = array(
            'game_id' => $game_id,
            'rule_name' => $rule_name,
            'rule_num' => $rule_num,
            'remaining_number' => $rule_num, // 剩余奖品数量
            'type' => $type,
            'remark' => $remark,
            'points' => $points,
            'coupon_type_id' => $coupon_type_id,
            'hongbao' => $hongbao,
            'gift_id' => $gift_id,
            'type_value' => $type_value,
            'create_time' => time()
        );
        
        $res = $game_rule_model->save($data);
        return $res;
    }

    /**
     * 删除活动规则
     *
     * @param unknown $game_id            
     */
    public function delPromotionGameRule($game_id)
    {
        $game_rule_model = new NsPromotionGameRuleModel();
        $res = $game_rule_model->destroy([
            'game_id' => $game_id
        ]);
        return $res;
    }

    /**
     *
     * @param unknown $game_id            
     * @param unknown $shop_id            
     * @param unknown $name            
     * @param unknown $type            
     * @param unknown $member_level            
     * @param unknown $points            
     * @param unknown $start_time            
     * @param unknown $end_time            
     * @param unknown $remark            
     * @param unknown $rule_array            
     */
    public function updatePromotionGame($game_id, $shop_id, $name, $type, $member_level, $points, $start_time, $end_time, $remark, $rule_array)
    {
        $promotion_games = new NsPromotionGamesModel();
        $member_level_model = new NsMemberLevelModel();
        if ($member_level == 0) {
            $level_name = '所有用户';
        } else {
            $level_info = $member_level_model->getInfo([
                'level_id' => $member_level
            ], 'level_name');
            $level_name = $level_info['level_name'];
        }
        
        $data = array(
            'shop_id' => $shop_id,
            'name' => $name,
            'type' => $type,
            'member_level' => $member_level,
            'level_name' => $level_name,
            'points' => $points,
            'start_time' => $start_time,
            'end_time' => $end_time,
            'remark' => $remark
        );
        $promotion_games->save($data, [
            'game_id' => $game_id
        ]);
        $promotion_games_rule = new NsPromotionGameRuleModel();
        $promotion_games_rule->destroy([
            'game_id' => $game_id
        ]);
        // 添加规则表
    }

    /**
     * 获取营销游戏类型列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     * @param string $field            
     */
    public function getPromotionGameTypeList($page_index = 1, $page_size = 0, $condition = '', $order = '', $field = '*')
    {
        $game_type_model = new NsPromotionGameTypeModel();
        $game_type_list = $game_type_model->pageQuery($page_index, $page_size, $condition, $order, $field);
        return $game_type_list;
    }

    /**
     * 删除营销游戏
     *
     * @param unknown $game_id            
     */
    public function delPromotionGame($game_id)
    {
        $condition = array(
            'game_id' => $game_id
        );
        $promotion_games = new NsPromotionGamesModel();
        $game_rule = new NsPromotionGameRuleModel();
        $game_rule->destroy($condition);
        $res = $promotion_games->destroy($condition);
        return $res;
    }

    /**
     * 获取中奖记录表
     *
     * @param unknown $page_index            
     * @param unknown $page_size            
     * @param unknown $condition            
     * @param unknown $order            
     * @param unknown $field            
     * @return number[]|unknown[]
     */
    public function getPromotionGameWinningRecordsList($page_index, $page_size, $condition, $order, $field)
    {
        $WinningRecords = new NsPromotionGamesWinningRecordsModel();
        $list = $WinningRecords->pageQuery($page_index, $page_size, $condition, $order, $field);
        return $list;
    }

    /**
     * 获取奖项
     *
     * @param unknown $game_id            
     */
    public function getRandAward($game_id)
    {
        // 获取游戏详情
        $promotionGameDetail = $this->getPromotionGameDetail($game_id);
        if (! empty($promotionGameDetail)) {
            // 中奖概率 按百分比
            $winning_rate = round($promotionGameDetail["winning_rate"]);
            // 取一个 1 到 100 的随机数 如果这个数组小于概率则通过 第一步
            $rand_num = mt_rand(1, 100);
            if ($rand_num <= $winning_rate) {
                $rule_list = $promotionGameDetail["rule"];
                $retval = $this->getRandAwardRules($rule_list);
                if (count($retval) > 0) {
                    return $result = array(
                        "is_winning" => 1,
                        "winning_info" => $retval,
                        "no_winning_instruction" => $promotionGameDetail["no_winning_des"]
                    );
                } else {
                    return $result = array(
                        "is_winning" => 0,
                        "no_winning_instruction" => $promotionGameDetail["no_winning_des"],
                        "winning_info" => [
                            "rule_id" => 0
                        ]
                    );
                }
            } else {
                return $result = array(
                    "is_winning" => 0,
                    "no_winning_instruction" => $promotionGameDetail["no_winning_des"],
                    "winning_info" => [
                        "rule_id" => 0
                    ]
                );
            }
        } else {
            return null;
        }
    }

    /**
     * 获取随机奖项
     *
     * @param unknown $rule_list            
     */
    public function getRandAwardRules($rule_list)
    {
        $result = array();
        if (count($rule_list) > 0) {
            $roll_array = array(); //根据奖品数量生成权重区间
            $total_number = 0;
            foreach ($rule_list as $k => $v) {
                $roll_array[$k][0] = $total_number;
                if ($v["remaining_number"] > 0) {
                    $total_number += $v["remaining_number"];
                }
                $roll_array[$k][1] = $total_number;
            }
            $rand_num = mt_rand(0, $total_number);
            if(count($roll_array) > 1){
                foreach ($roll_array as $k=>$v){
                    if($v[0]<= $rand_num && $rand_num < $v[1]){
                        $result = [
                            "rule_id" => $rule_list[$k]["rule_id"],
                            "type" => $rule_list[$k]["type"],
                            "coupon_type_id" => $rule_list[$k]["coupon_type_id"],
                            "points" => $rule_list[$k]["points"],
                            "hongbao" => $rule_list[$k]["hongbao"],
                            "gift_id" => $rule_list[$k]["gift_id"],
                            "rule_name" => $rule_list[$k]["rule_name"],
                            "type_value" => $rule_list[$k]["type_value"]
                        ];
                        return $result;
                    }
                }
            }
        }
        return $result;
    }

    /**
     * 获取活动名称
     * @param unknown $coupon_type_id
     */
    public function getCouponTypeName($coupon_type_id)
    {
    	$coupon_type = new NsCouponTypeModel();
    	$coupon_type_info = $coupon_type->getInfo(['coupon_type_id'=>$coupon_type_id], 'coupon_name');
    	return $coupon_type_info['coupon_name'];
    }
    

}