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
require_once DIR . '/common/redict.php';
$data['menu']=menu_getByTop('','','');
$data['config']=config_getByTop(1,'','');
if(!isset($_GET['Id'])||$_GET['Id']==''){
    redict(SITE_NAME);
}

$function='';
$active='';
$id=addslashes(strip_tags($_GET['Id']));

$data['detail']=thong_tin_tiep_thi_getByTop('1','name_url="'.$id.'"','id desc');
if(count($data['detail'])==0){
    redict(SITE_NAME);
}
$name=$data['detail'][0]->name;
$data['banner']=array(
    'banner_img'=>$data['menu'][19]->img,
    'name'=>$name,
    'url'=>'<li><a href="'.SITE_NAME.'">Trang chủ</a></li><li><a >Tiếp thị liên kết</a></li><li><span>'.$name.'</span></li>'
);
$data['link_anh']=$data['detail'][0]->img;
$data['link_url']=SITE_NAME.'/tiep-thi-lien-ket-info/'.$id.'.html';
$title=$data['detail'][0]->title;
$description=$data['detail'][0]->description;
$keyword=$data['detail'][0]->keyword;
$active='';
$function='show_info';

$data['tab_tour_title']='active_tab_left';
$data['tab_khachsan_title']='';
$data['tab_tintuc_title']='';

$data['tab_tour']='';
$data['tab_khachsan']='hidden';
$data['tab_tintuc']='hidden';


$title=($title)?$title:'Azbooking.vn';
$description=($description)?$description:'Azbooking.vn';
$keywords=($keyword)?$keyword:'Azbooking.vn';
show_header($title,$description,$keywords,$data);
show_menu($data,'');
show_banner($data);
show_chitiet_tiepthi($data);
show_footer($data);