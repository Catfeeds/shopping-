<?php

namespace data\Model;
use data\model\BaseModel as BaseModel;
/**
 * 虚拟课程点卡库存表
 */

class NsVirtualCardModel extends BaseModel {

    protected $table = 'ns_virtua_card';
    protected $rule = [
        'id'  =>  '',
    ];
    protected $msg = [
        'id'  =>  '',
    ];
}