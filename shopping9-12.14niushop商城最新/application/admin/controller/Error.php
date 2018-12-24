<?php
namespace app\admin\controller;

class Error extends BaseController
{
    public function _empty($name)
    {
        $this->redirect(__URL(__URL__.'/admin'));
    }
}