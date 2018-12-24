<?php
namespace data\api;

/**
 * 营销接口
 */
interface IPromotion
{
     /**
     * 获取优惠券发放记录列表
     *
     * @param unknown $shop_id            
     */
    function getCouponGrantLogList($page_index, $page_size, $condition, $order);
    /**
     * 获取优惠券类型列表
     *
     * @param number $page_index            
     * @param number $page_size            
     * @param string $condition            
     * @param string $order            
     */
    function getCouponTypeList($page_index = 1, $page_size = 0, $condition = '', $order = 'create_time desc');

    /**
     * 删除优惠券
     *
     * @param unknown $coupon_type_id            
     */
    function deletecouponType($coupon_type_id);

    /**
     * 获取优惠券类型详情
     *
     * @param unknown $coupon_type_id
     *            类型主键
     */
    function getCouponTypeDetail($coupon_type_id);

    /**
     * 添加优惠券类型
     *
     * @param unknown $coupon_name            
     * @param unknown $money            
     * @param unknown $count            
     * @param unknown $max_fetch            
     * @param unknown $at_least            
     * @param unknown $need_user_level            
     * @param unknown $range_type            
     * @param unknown $start_time            
     * @param unknown $end_time            
     * @param unknown $goods_list            
     */
    function addCouponType($coupon_name, $money, $count, $max_fetch, $at_least, $need_user_level, $range_type, $start_time, $end_time, $goods_list, $is_show, $is_bespoke);

    /**
     * 修改优惠券类型
     *
     * @param unknown $data            
     */
    function updateCouponType($coupon_id, $coupon_name, $money, $count, $repair_count, $max_fetch, $at_least, $need_user_level, $range_type, $start_time, $end_time, $goods_list, $is_show, $is_bespoke);


    /**
     * 获取优惠券类型的优惠券列表
     *
     * @param unknown $coupon_type_id            
     * @param unknown $get_type
     *            获取类型 0 标示全部
     * @param unknown $use_type
     *            获取类型 0 标示全部
     */
    function getTypeCouponList($coupon_type_id, $get_type = 0, $use_type = 0);

    /**
     * 获取优惠券详情
     *
     * @param unknown $coupon_id            
     */
    function getCouponDetail($coupon_id);

}