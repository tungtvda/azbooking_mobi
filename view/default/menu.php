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
    $asign['form_']='';
    if(count($data_session)>0){
        $array_check_noti = array(
            'id'=>_return_mc_encrypt($data_session['id']),
            'name'=>_return_mc_encrypt($data_session['name']),
            'user_email'=>_return_mc_encrypt($data_session['user_email']),
            'user_code'=>_return_mc_encrypt($data_session['user_code']),
            'created'=>_return_mc_encrypt($data_session['created']),
            'avatar'=>_return_mc_encrypt($data_session['avatar']),
            'token_code'=>_return_mc_encrypt($data_session['token_code']),
            'time_token'=>_return_mc_encrypt($data_session['time_token']),
            'top_5'=>1,
        );
        $asign['form_']='<form style="display: none" action="" method="" id="form_noti">
        <input name="noti_name" value="'._return_mc_encrypt(json_encode($array_check_noti)).'">
        <input name="id" value="'._return_mc_encrypt($data_session['id']).'">
        <input name="name" value="'._return_mc_encrypt($data_session['name']).'">
        <input name="user_email" value="'._return_mc_encrypt($data_session['user_email']).'">
        <input name="user_code" value="'._return_mc_encrypt($data_session['user_code']).'">
        <input name="created" value="'._return_mc_encrypt($data_session['created']).'">
        <input name="avatar" value="'._return_mc_encrypt($data_session['avatar']).'">
        <input name="token_code" value="'._return_mc_encrypt($data_session['token_code']).'">
        <input name="time_token" value="'._return_mc_encrypt($data_session['time_token']).'">
        <input id="top_5" name="top_5" value="1">
        <input id="page_noti" name="page" value="1">
        </form>';
        $list_noti= returnCURL($array_check_noti, SITE_NAME_MANAGE.'/return-list-notification.html');
        $data_list_noti=json_decode($list_noti,true);
        $count_noti_string='';
        $count_noti=count($data_list_noti['data_noti']);
        if(isset($data_list_noti['count_active'])&& $data_list_noti['count_active']>0){
            $count_noti_string='<span class="badge badge-important" id="count_notification">'.$data_list_noti['count_active'].'</span>';
        }
        if(isset($data_list_noti['count_un_read'])&& $data_list_noti['count_un_read']>0){
            $count_un_read=' <i class="ace-icon fa fa-exclamation-triangle"></i> <span id="count_un_read"> '.$data_list_noti['count_un_read'].' Thông báo chưa đọc</span> ';
        }else{
            if($count_noti>0){
                $count_un_read='<span id="count_un_read">Tất cả thông báo đã được đọc</span>';
            }else{
                $count_un_read='<span id="count_un_read">Bạn không có thông báo nào</span>';
            }
        }
        $scroll='';
        if($count_noti>=3){
            $scroll='scroll_noti';
        }
        $hidden_div='';
        if($count_noti==0){
            $hidden_div='hidden';
        }

        if($count_noti>0){
            $list_notification='<div class="dropdown-content-noti">
                        <p class="dropdown-header">
                           '.$count_un_read.'
                        </p>
                        <div '.$hidden_div.'  class="content_ul_li '.$scroll.'">
                        <ul class="dropdown-menu dropdown-navbar navbar-pink ul_noti">';
            foreach($data_list_noti['data_noti'] as $row_noti){
                $row_color='';
                if($row_noti['status']!=1){
                    $row_color='background-color: #edf2fa;';
                }
                $date_show = date("d-m-Y H:i:s", strtotime($row_noti['created']));
                $date_noti =timeAgo($row_noti['created']);
                $list_notification.='
                            <li style="'.$row_color.'">
                                <a href="'.SITE_NAME_MAIN.'/'.$row_noti['link'].'&id_noti='._return_mc_encrypt($row_noti['id']).'" class="clearfix">
												<span class="msg-body">
													<span class="msg-title">
														'.$row_noti['name'].'
													</span>
													<span title="'.$date_show.'" class="msg-time">
														<i class="ace-icon fa fa-clock-o"></i> <span> '.$date_noti.' </span>
													</span>
												</span>
                                </a>
                                <a title="Chi tiết thông báo"
                                   href="'.SITE_NAME_MAIN.'/'.$row_noti['link'].'&id_noti='._return_mc_encrypt($row_noti['id']).'"
                                   style="position: absolute;right: 0%;bottom: 5%; "><i
                                            style="color:#4a96d9 !important;"
                                            class="ace-icon fa fa-hand-o-right"></i></a>
                            </li>
                            ';
            }
            $list_notification.='
                        </ul></div>
                         <p '.$hidden_div.' class="dropdown-footer" style="margin-bottom: 0px">
                                    <a href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thong-bao/"> Xem tất cả <i class="ace-icon fa fa-arrow-right"></i></a></p>
                    </div>

                    ';
        }
        $avatar='<img class="nav-user-photo" title="'.$data_session['name'].'" alt="'.$data_session['name'].'"  src="'.$data_session['avatar'].'">';
        $asign['content_user'].='<div class="dropdown-noti">
                    <a class="notification_menu" data-toggle="dropdown-noti">
                        <i class="icon_glo_noti ace-icon fa fa-globe icon-animated-bell color_white fa-2x"></i>
                        '.$count_noti_string.'
                    </a>
                    '.$list_notification.'
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
                        <a href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/ho-so/"><i class="fa fa-cogs "></i> Cài đặt tài
                            khoản</a>
                        <a href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/"><i class="fa fa-share-alt "></i> Tiếp thị liên
                            kết</a>
                             <a target="_blank"  href="https://www.facebook.com/sharer/sharer.php?u='.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/?type=dang-ky&key_id='._return_mc_encrypt($data_session['id']).'" ><i class="fa fa-facebook "></i> Chia sẻ đăng ký <i>(Facebook)</i> </a></a>
                                <a target="_blank"  href="https://twitter.com/intent/tweet?source=webclient&text='.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/?type=dang-ky&key_id='._return_mc_encrypt($data_session['id']).' + '.$data_session['name'].'" ><i class="fa fa fa-twitter "></i> Chia sẻ đăng ký <i>(Twitter)</i> </a></a>
                                <a target="_blank"  href="https://plus.google.com/share?url='.SITE_NAME_MAIN.'/tiep-thi-lien-ket/thanh-vien/?type=dang-ky&key_id='._return_mc_encrypt($data_session['id']).'" ><i class="fa fa fa fa-google-plus"></i> Chia sẻ đăng ký <i>(Google)</i> </a></a>
                        <a href="'.SITE_NAME_MAIN.'/tiep-thi-lien-ket/dang-xuat/"><i class="fa fa-sign-out "></i> Đăng
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
