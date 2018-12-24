<?php
namespace data\model;

use data\model\BaseModel as BaseModel;
/**
 * 课程浏览足迹表
 * @author Administrator
 *
 */
class NsGoodsBrowseModel extends BaseModel {

    protected $table = 'ns_goods_browse';
    protected $rule = [
        'browse_id'  =>  '',
    ];
    protected $msg = [
        'browse_id'  =>  '',
    ];

}