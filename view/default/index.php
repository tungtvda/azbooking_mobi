<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_index($data = array())
{
    $asign = array();
//    $asign['danhsach'] ='';
//    if(count($data['danhsach'])>0)
//    {
//        $asign['danhsach'] = print_item('item_list', $data['danhsach']);
//    }
    $asign['banner_img']=_returnCheckLinkImg($data['banner']['banner_img']);
    print_template($asign, 'index');
}



