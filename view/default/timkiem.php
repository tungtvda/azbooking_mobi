<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_timkiem($data = array())
{
    $asign = array();
    $asign['danhsach_tour'] ='';
    $asign['hidden_tour'] ='';
    if(count($data['danhsach_tour'])>0)
    {
        $asign['danhsach_tour'] = print_item('item_list', $data['danhsach_tour']);
    }
    else{
        $asign['hidden_tour'] ='hidden';
    }

    $asign['danhsach_tintuc'] ='';
    $asign['hidden_tintuc'] ='';
    if(count($data['danhsach_tintuc'])>0)
    {
        $asign['danhsach_tintuc'] = print_item('danhmuc_tintuc', $data['danhsach_tintuc']);
    }
    else{
        $asign['hidden_tintuc'] ='hidden';
    }

    print_template($asign, 'timkiem');
}



