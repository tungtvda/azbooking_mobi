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
    $asign['content_user']='';
    if(count($data_session)>0){
        $array_check_noti = array(
            'id'=>_return_mc_encrypt($data_session['id']),
            'name'=>_return_mc_encrypt($data_session['name']),
            'user_email'=>_return_mc_encrypt($data_session['user_email']),
            'user_code'=>_return_mc_encrypt($data_session['user_code']),
            'created'=>_return_mc_encrypt($data_session['created']),
            'avatar'=>_return_mc_encrypt($data_session['avatar']),
            'token_code'=>_return_mc_decrypt($data_session['token_code']),
            'time_token'=>_return_mc_decrypt($data_session['time_token']),
        );
       $list_noti= returnCURL($array_check_noti, SITE_NAME_MANAGE.'/return-list-notification.html');
//        print_r($list_noti);
//        exit;
        $avatar='<img class="nav-user-photo" title="'.$data_session['name'].'" alt="'.$data_session['name'].'"  src="'.$data_session['avatar'].'">';
        $asign['content_user'].='<div class="dropdown-noti">
                    <a class="notification_menu" data-toggle="dropdown-noti">
                        <i class="ace-icon fa fa-bell icon-animated-bell color_white"></i>
                        <span class="badge badge-important">1</span>
                    </a>
                    <div class="dropdown-content-noti">
                        <p class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i> 1 Thông báo
                        </p>
                        <ul class="dropdown-menu dropdown-navbar navbar-pink ul_noti">
                            <li >
                                <a title="Chi tiết bài viết"
                                   href="http://localhost/manage_mix/booking-new/sua?noti=1&amp;confirm=1&amp;id=Vm0xMGEwNUdWWGhWYms1U1lrVndVbFpyVWtKUFVUMDk=&amp;id_noti=Vm0xMGEwNUdWWGhXYms1U1lrVndVbFpyVWtKUFVUMDk="
                                   class="clearfix">

												<span class="msg-body">
													<span class="msg-title">
														Khách hàng Trần Hoài Anh đã thêm một đơn hàng từ 4
													</span>

													<span class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i> <span>28-03-2017 19:07:33 </span>

													</span>
												</span>
                                </a>
                                <a title="Chi tiết thông báo"
                                   href=""
                                   style="position: absolute;right: 0%;bottom: 5%; "><i
                                            style="color:#4a96d9 !important;"
                                            class="ace-icon fa fa-hand-o-right"></i></a>
                            </li>
                            <li class="dropdown-footer">
                                <a href=""> Xem tất cả <i class="ace-icon fa fa-arrow-right"></i>
                                </a>
                            </li>
                        </ul>

                    </div>
                </div>';
        $asign['content_user'].='<div class="dropdown">
                    <a class="user_profile" data-toggle="dropdown">
                       '.$avatar.'
								<span class="user-info">
									<small>Xin chào,</small>
                                    '.$data_session['name'].'
                                    </span>

                        <i class="ace-icon fa fa-caret-down color_white" style="margin-left: 10px"></i>
                    </a>
                    <div class="dropdown-content">
                        <a href="'.SITE_NAME.'/tiep-thi-lien-ket/ho-so/"><i class="fa fa-cogs "></i> Cài đặt tài
                            khoản</a>
                        <a href="'.SITE_NAME.'/tiep-thi-lien-ket/"><i class="fa fa-share-alt "></i> Tiếp thị liên
                            kết</a>
                        <a href="'.SITE_NAME.'/tiep-thi-lien-ket/dang-xuat/"><i class="fa fa-sign-out "></i> Đăng
                            xuất</a>
                    </div>
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
