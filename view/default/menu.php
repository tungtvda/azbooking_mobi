<?php
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/locdautiengviet.php';

function view_menu($data = array())
{
    $asign = array();
//    $asign['email']=$data['config'][0]->Email;
    $asign['Logo']=_returnCheckLinkImg($data['config'][0]->Logo);
    $asign['Name']=$data['config'][0]->Name;
//    $asign['Hotline']=$data['config'][0]->Hotline;
//
    $asign['trangchu']=$data['menu'][0]->name;
    $asign['tour']=$data['menu'][1]->name;
    $asign['khachsan']=$data['menu'][2]->name;
    $asign['tintuc']=$data['menu'][3]->name;
    $asign['lienhe']=$data['menu'][4]->name;
    $asign['site_name_main']=SITE_NAME_MAIN;
//
//
//    // active menu
    $asign['trangchu_mn'] = ($data['active'] == 'trangchu') ? 'current-menu-ancestor' : '';
    $asign['tour_trong_nuoc_mn'] = ($data['active'] == 'tour_trong_nuoc') ? 'current-menu-ancestor' : '';
    $asign['tour_nuoc_ngoai_mn'] = ($data['active'] == 'tour_nuoc_ngoai') ? 'current-menu-ancestor' : '';
    $asign['tour_du_lich_mn'] = ($data['active'] == 'tour_du_lich') ? 'current-menu-ancestor' : '';
//    $asign['tour_mn'] = ($data['active'] == 'tour') ? 'current-menu-parent' : '';
    $asign['khachsan_mn'] = ($data['active'] == 'khachsan') ? 'current-menu-ancestor' : '';
    $asign['tintuc_mn'] = ($data['active'] == 'tintuc') ? 'current-menu-ancestor' : '';
    $asign['lienhe_mn'] = ($data['active'] == 'lienhe') ? 'current-menu-ancestor' : '';
//
    $asign['danhmuc_menu'] ='';
    if(count($data['danhmuc_menu'])>0){
        $asign['danhmuc_menu'] .='<ul class="sub-menu">';
        foreach($data['danhmuc_menu'] as $row){
            $link_dm1=link_dm_tour1($row);
            $asign['danhmuc_menu'] .='<li class="menu-item-has-children"><a href="'.$link_dm1.'">'.$row->name.'</a>';
            $data_danhmuc2=danhmuc_2_getByTop('','id!=1 and danhmuc1_id='.$row->id,'position asc');
            if(count($data_danhmuc2)>0){
                $asign['danhmuc_menu'] .='<ul class="sub-menu">';
                foreach($data_danhmuc2 as $row2){
                    $link_dm2=link_dm_tour2($row2,$row->name_url);
                    $asign['danhmuc_menu'] .='<li><a href="'.$link_dm2.'">'.$row2->name.'</a></li>';
                }
                $asign['danhmuc_menu'] .='</ul>';
            }
            $asign['danhmuc_menu'] .='</li>';
        }
        $asign['danhmuc_menu'] .='</ul>';
    }
//
    $asign['danhmuc_menu_quocte'] ='';
    if(count($data['danhmuc_menu_quocte'])>0){
        $asign['danhmuc_menu_quocte'] .='<ul class="sub-menu">';
        foreach($data['danhmuc_menu_quocte'] as $row){
            $link_dm1=link_dm_tour1($row);
            $asign['danhmuc_menu_quocte'] .='<li class="menu-item-has-children"><a href="'.$link_dm1.'">'.$row->name.'</a>';
            $data_danhmuc2=danhmuc_2_getByTop('','id!=1 and danhmuc1_id='.$row->id,'position asc');
            if(count($data_danhmuc2)>0){
                $asign['danhmuc_menu_quocte'] .='<ul class="sub-menu">';
                foreach($data_danhmuc2 as $row2){
                    $link_dm2=link_dm_tour2($row2,$row->name_url,1);
                    $asign['danhmuc_menu_quocte'] .='<li><a href="'.$link_dm2.'">'.$row2->name.'</a></li>';
                }
                $asign['danhmuc_menu_quocte'] .='</ul>';
            }
            $asign['danhmuc_menu_quocte'] .='</li>';
        }
        $asign['danhmuc_menu_quocte'] .='</ul>';
    }
//
    $asign['danhmuc_khachsan'] ='';
    if(count($data['danhmuc_khachsan'])>0)
    {
//        $asign['danhmuc_khachsan'] = print_item('menu_item', $data['danhmuc_khachsan']);
        $asign['danhmuc_khachsan'] .='<ul class="sub-menu">';
        foreach($data['danhmuc_khachsan'] as $row){
            $link_dm1=link_danhmuc_khachsan($row);
            $asign['danhmuc_khachsan'] .='<li class="menu-item-has-children"><a href="'.$link_dm1.'">'.$row->name.'</a>';
            $data_danhmuc2=danhmuc_khachsan_2_getByTop('','id!=1 and danhmuc_id='.$row->id,'position asc');
            if(count($data_danhmuc2)>0){
                $asign['danhmuc_khachsan'] .='<ul class="sub-menu">';
                foreach($data_danhmuc2 as $row2){
                    $link_dm2=link_danhmuc_khachsan_2($row2,$row->name_url);
                    $asign['danhmuc_khachsan'] .='<li><a href="'.$link_dm2.'">'.$row2->name.'</a></li>';
                }
                $asign['danhmuc_khachsan'] .='</ul>';
            }
            $asign['danhmuc_khachsan'] .='</li>';
        }
        $asign['danhmuc_khachsan'] .='</ul>';
    }
//
    $asign['danhmuc_tintuc'] ='';
    if(count($data['danhmuc_tintuc'])>0)
    {
        $asign['danhmuc_tintuc'] = print_item('menu_item', $data['danhmuc_tintuc']);
    }
    $data_session=checkSession('', 1);
    if(count($data_session)>0){
        $asign['content_user']='<div class="tourmaster-user-top-bar tourmaster-guest">
                    <a  href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/">
                        <span class="tourmaster-user-top-bar-login" data-tmlb="login">
                            <i style="color:#ffffff;" class="icon_lock_alt"></i>
                            <span class="tourmaster-text">Đăng nhập</span>
                        </span>
                    </a>
                    <a href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/?type=dang-ky">
                    <span class="tourmaster-user-top-bar-signup" data-tmlb="signup"><i style="color:#ffffff;" class="fa fa-user"></i><span
                                class="tourmaster-text">Đăng ký</span></span>
                    </a>
                </div>';
    }else{
        $asign['content_user']='<div class="tourmaster-user-top-bar tourmaster-guest">
                    <a  href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/">
                        <span class="tourmaster-user-top-bar-login" data-tmlb="login">
                            <i style="color:#ffffff;" class="icon_lock_alt"></i>
                            <span class="tourmaster-text">Đăng nhập</span>
                        </span>
                    </a>
                    <a href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/?type=dang-ky">
                    <span class="tourmaster-user-top-bar-signup" data-tmlb="signup"><i style="color:#ffffff;" class="fa fa-user"></i><span
                                class="tourmaster-text">Đăng ký</span></span>
                    </a>
                </div>';
    }
    print_template($asign, 'menu');
}
