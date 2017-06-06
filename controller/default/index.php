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
////
$date_now=_returnGetDateTime();
$data['danhsach']=tour_getByTop(10,'(count_down!="" and count_down>"'.$date_now.'") or price_sales!="" ','count_down desc,id DESC');
$data['tieuchi']=tieuchi_getByTop('','','position asc');
$data['banner']='';
$data['slide']=slide_getByTop('','','Id desc');
$random_keys=array_rand($data['slide'],1);
$data['banner']['name']=$data['slide'][$random_keys]->name;
$data['banner']['banner_img']=$data['slide'][$random_keys]->img;
$title=$data['menu'][0]->title;
$description=$data['menu'][0]->description;
$keyword=$data['menu'][0]->keyword;
$title=($title)?$title:'Azbooking.vn';
$description=($description)?$description:'Azbooking.vn';
$keywords=($keyword)?$keyword:'Azbooking.vn';
show_header($title,$description,$keywords,$data);
show_menu($data,'trangchu');
show_banner($data);
show_index($data);
show_footer($data);
