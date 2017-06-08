<?php
/**
 * Created by PhpStorm.
 * User: ductho
 * Date: 8/15/14
 * Time: 3:43 PM
 */
require_once DIR.'/view/default/public.php';
function view_banner($data=array())
{
    $asign=array();
    $asign['name_dm']=$data['banner']['name'];
    $asign['banner_img']=SITE_NAME_MAIN.$data['banner']['banner_img'];
    $asign['url']='';
    if(isset($data['banner']['url'])&&$data['banner']['url']!=''){
        $asign['url']=$data['banner']['url'];
    }
    $asign['banner_img']=SITE_NAME_MAIN.$data['banner']['banner_img'];

    $asign['danhmuc_1_timkiem_trongnuoc'] ='';
    if(count($data['danhmuc_1_timkiem_trongnuoc'])>0)
    {
        $asign['danhmuc_1_timkiem_trongnuoc'] = print_item('danhmuc_cbox_timkiem', $data['danhmuc_1_timkiem_trongnuoc']);
    }
    $asign['danhmuc_1_timkiem_quocte'] ='';
    if(count($data['danhmuc_1_timkiem_quocte'])>0)
    {
        $asign['danhmuc_1_timkiem_quocte'] = print_item('danhmuc_cbox_timkiem', $data['danhmuc_1_timkiem_quocte']);
    }
    if(count($data['danhmuc_1_timkiem'])>0)
    {
        $asign['danhmuc_1_timkiem'] = print_item('danhmuc_cbox', $data['danhmuc_1_timkiem']);
    }
    $asign['danhmuc_khachsan_timkiem'] ='';
    if(count($data['danhmuc_khachsan_timkiem'])>0)
    {
        $asign['danhmuc_khachsan_timkiem'] = print_item('danhmuc_cbox', $data['danhmuc_khachsan_timkiem']);
    }
    $asign['danhmuc_tintuc_timkiem'] ='';
    if(count($data['danhmuc_tintuc_timkiem'])>0)
    {
        $asign['danhmuc_tintuc_timkiem'] = print_item('danhmuc_cbox', $data['danhmuc_tintuc_timkiem']);
    }

    $asign['departure_timkiem'] ='';
    if(count($data['departure_timkiem'])>0)
    {
        $asign['departure_timkiem'] = print_item('danhmuc_cbox', $data['departure_timkiem']);
    }
    $asign['list_Durations']=returnSearchDurations();
    $asign['price_timkiem']=returnPriceTour();
    $asign['price_khachsan']=returnPriceKhachSan();
    print_template($asign,'banner');
}
