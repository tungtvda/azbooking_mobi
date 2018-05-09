<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:40 PM
 */
if(!defined('SITE_NAME'))
{
    require_once '../../config.php';
}

require_once DIR.'/controller/default/public.php';
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');
$data_menu=$data['menu'][18];
$date_now=_returnGetDateTime();
$data['danhsach']=tour_getByTop(10,'((count_down!="" and count_down>"'.$date_now.'") or price_sales!="") and status =1 ','count_down desc,id DESC');
$data['banner']=array(
    'banner_img'=>$data_menu->img,
    'name'=>$data_menu->name,
    'url'=>'<li><a href="'.SITE_NAME.'">Trang chủ</a></li><li><span>'.$data_menu->name.'</span></li>'
);
$data['link_anh']=$data_menu->img;
$title=$data['menu'][18]->title;
$description=$data['menu'][18]->description;
$keyword=$data['menu'][18]->keyword;
$title=($title)?$title:'Azbooking.vn';
$description=($description)?$description:'Azbooking.vn';
$keywords=($keyword)?$keyword:'Azbooking.vn';
show_header($title,$description,$keywords,$data);
show_menu($data,'tour_du_lich');
show_banner($data);
show_tourdulich($data);
show_footer($data);
