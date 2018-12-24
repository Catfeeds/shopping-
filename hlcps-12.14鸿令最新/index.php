<?php
// 检测PHP环境
if (version_compare(PHP_VERSION, '5.4.0', '<'))
    die('require PHP > 5.4.0 !');

// [ 应用入口文件 ]
define('INTERCALATE',"public/admin/set.txt"); //二级分销设置
define('ADMINID',59); //超级管理员Id
define('LEVEL',2);    //分销级别
define('CONFIG_HTTP','javascript:;'); 
define('CONFIG_YYA',1);   //运营-运营状态 1 超级管理员能修改 2 管理员能修改
define('CONFIG_YYB',1);   //注册与访问-微信端会员注册方式 1 超级管理员能修改 2 管理员能修改
define('CONFIG_YYC',1);   //上传设置-上传参数设置和默认文章缩略图 1 超级管理员能修改 2 管理员能修改
define('TGY_NUMBER_QZ','HL');   //推广员编号前缀
// 定义应用目录
define('APP_PATH', __DIR__ . '/application/');
// 加载框架引导文件
require __DIR__ . '/thinkphp/start.php';


