<?php
/**
 * Created by PhpStorm.
 * User: tungtv
 * Date: 11/10/14
 * Time: 2:44 PM
 */
require_once DIR . '/view/default/public.php';
require_once DIR . '/common/cls_fast_template.php';
function show_chitiet_tour($data = array())
{
    $asign = array();
    $asign['name'] = $data['detail'][0]->name;
    $asign['code'] = $data['detail'][0]->code;
    $asign['hidden_code'] = '';
    if ($asign['code'] == '') {
        $asign['hidden_code'] = 'hidden';
    }
    $asign['img'] = $data['detail'][0]->img;
    $asign['durations'] = $data['detail'][0]->durations;
    $asign['destination'] = $data['detail'][0]->destination;
    $asign['start'] = sao($data['detail'][0]->hotel);
    $asign['name_url'] = $data['detail'][0]->name_url;
    $asign['id'] = $data['detail'][0]->id;
    $asign['so_cho'] = $data['detail'][0]->so_cho;
    $asign['title']= $data['detail'][0]->title;
    $asign['description']= $data['detail'][0]->description;
    $asign['price_tiep_thi']= $data['detail'][0]->price_tiep_thi;
    $asign['hidden_socho'] = '';
    if ($asign['so_cho'] == '') {
        $asign['hidden_socho'] = 'hidden';
    }
    $content = $data['detail'][0]->summary;
    if (strlen($content) > 200) {
        $ten1 = strip_tags($content);

        $ten = substr($ten1, 0, 200);
        $asign['content_short'] = substr($ten, 0, strrpos($ten, ' ')) . "...";
    } else {
        $asign['content_short'] = strip_tags($content);
    }
    $asign['summary'] = $data['detail'][0]->summary;
    $asign['summary']=str_replace('src="/view/admin/Themes/','src="'.SITE_NAME_MAIN.'/view/admin/Themes/',$asign['summary']);

    $asign['hidden_summary'] = '';
    if ($data['detail'][0]->summary == '') {
        $asign['hidden_summary'] = 'hidden';
    }
    $asign['highlights'] = $data['detail'][0]->highlights;
    $asign['highlights']=str_replace('src="/view/admin/Themes/','src="'.SITE_NAME_MAIN.'/view/admin/Themes/',$asign['highlights']);
    $asign['hidden_highlights'] = '';
    if ($asign['highlights'] == '') {
        $asign['hidden_highlights'] = 'hidden';
    }

    $asign['hidden_summary'] = '';
    if ($data['detail'][0]->summary == '') {
        $asign['hidden_summary'] = 'hidden';
    }
    $asign['price'] = $data['detail'][0]->price;
    $asign['price_2'] = $data['detail'][0]->price_2;
    $asign['price_3'] = $data['detail'][0]->price_3;
    $asign['price_4'] = $data['detail'][0]->price_4;
    $asign['price_5'] = $data['detail'][0]->price_5;
    $asign['price_6'] = $data['detail'][0]->price_6;
    $asign['link'] = $data['link_url'];
    $asign['link_share'] = $data['link_share'];

    if ($data['detail'][0]->price == 0 || $data['detail'][0]->price == '') {
        $asign['price_format'] = 'Liên hệ';
        $asign['vnd'] = '';
    } else {
        $asign['price_format'] = number_format($data['detail'][0]->price, 0, ",", ".");
        $asign['vnd'] = 'vnđ';
    }
    $asign['price_sales_format_hidden'] = 'hidden';
    $asign['price_sales_format'] = '';
    if ($data['detail'][0]->price_sales != 0 && $data['detail'][0]->price_sales != '') {
        $asign['price_sales_format'] = number_format($data['detail'][0]->price_sales, 0, ",", ".") . ' vnđ';
        $asign['price_sales_format_hidden'] = '';
    }
    $asign['name_price'] = 'người lớn';
    $asign['name_price_2'] = 'trẻ em 5-11 tuổi';
    $asign['name_price_3'] = 'trẻ em dưới 5 tuổi';
    if ($data['detail'][0]->name_price != '') {
        $asign['name_price'] = $data['detail'][0]->name_price;
    }
    if ($data['detail'][0]->name_price_2 != '') {
        $asign['name_price_2'] = $data['detail'][0]->name_price_2;
    }
    if ($data['detail'][0]->name_price_3 != '') {
        $asign['name_price_3'] = $data['detail'][0]->name_price_3;
    }


    $asign['name_price_4'] = $data['detail'][0]->name_price_4;
    $asign['name_price_5'] = $data['detail'][0]->name_price_5;
    $asign['name_price_6'] = $data['detail'][0]->name_price_6;

    if($data['detail'][0]->price_2==''){
        $asign['price_2_format']=$asign['price_format'];
        $asign['price_2']=$asign['price'];
    }else{
        $asign['price_2_format']= number_format($data['detail'][0]->price_2,0,",",".").' vnđ';
    }
    if($data['detail'][0]->price_3==''){
        $asign['price_3_format']=$asign['price_format'];
        $asign['price_3']=$asign['price'];
    }else{
        $asign['price_3_format']= number_format($data['detail'][0]->price_3,0,",",".").' vnđ';
    }
    if($data['detail'][0]->price_4==''){
        $asign['price_4_format']=$asign['price_format'];
        $asign['price_4']=$asign['price'];
    }else{
        $asign['price_4_format']= number_format($data['detail'][0]->price_4,0,",",".").' vnđ';
    }
    if($data['detail'][0]->price_5==''){
        $asign['price_5_format']=$asign['price_format'];
        $asign['price_5']=$asign['price'];
    }else{
        $asign['price_5_format']= number_format($data['detail'][0]->price_5,0,",",".").' vnđ';
    }
    if($data['detail'][0]->price_6==''){
        $asign['price_6_format']=$asign['price_format'];
        $asign['price_6']=$asign['price'];
    }else{
        $asign['price_6_format']= number_format($data['detail'][0]->price_6,0,",",".").' vnđ';
    }
    $asign['price_number']= $data['detail'][0]->price_number;
    $asign['price_number_2']= $data['detail'][0]->price_number_2;
    $asign['price_number_3']= $data['detail'][0]->price_number_3;
    $asign['price_number_4']= $data['detail'][0]->price_number_4;
    $asign['price_number_5']= $data['detail'][0]->price_number_5;
    $asign['price_number_6']= $data['detail'][0]->price_number_6;

    $asign['date_now'] = date('Y-m-d', strtotime(date(DATETIME_FORMAT)));
    $asign['date_now_vn'] = date('d-m-Y', strtotime(date(DATETIME_FORMAT)));

    $asign['schedule'] = $data['detail'][0]->schedule;
    $asign['schedule']=str_replace('src="/view/admin/Themes/','src="'.SITE_NAME_MAIN.'/view/admin/Themes/',$asign['schedule']);
    $asign['hidden_schedule'] = '';
    if ($asign['schedule'] == '') {
        $asign['hidden_schedule'] = 'hidden';
    }

    $asign['inclusion'] = $data['detail'][0]->inclusion;
    $asign['inclusion']=str_replace('src="/view/admin/Themes/','src="'.SITE_NAME_MAIN.'/view/admin/Themes/',$asign['inclusion']);
    $asign['hidden_inclusion'] = '';
    if ($data['detail'][0]->inclusion == '') {
        $asign['hidden_inclusion'] = 'hidden';
    }
    $asign['exclusion'] = $data['detail'][0]->exclusion;
    $asign['exclusion']=str_replace('src="/view/admin/Themes/','src="'.SITE_NAME_MAIN.'/view/admin/Themes/',$asign['exclusion']);
    $asign['hidden_exclusion'] = '';
    if ($data['detail'][0]->exclusion == '') {
        $asign['hidden_exclusion'] = 'hidden';
    }

    $asign['price_list'] = $data['detail'][0]->price_list;
    $asign['price_list']=str_replace('src="/view/admin/Themes/','src="'.SITE_NAME_MAIN.'/view/admin/Themes/',$asign['price_list']);
    $asign['vehicle'] = $data['detail'][0]->vehicle;

//    $asign['tour_lienquan'] ='';
//    if(count($data['tour_lienquan'])>0) {
//        $asign['tour_lienquan'] = print_item('lienquan', $data['tour_lienquan']);
//    }

    $asign['Hotline'] = $data['config'][0]->Hotline;
    $asign['Hotline_hcm'] = $data['config'][0]->Hotline_hcm;

    $asign['Email'] = $data['config'][0]->Email;

    $arr_check = explode(',', $data['detail'][0]->departure);
    if ($arr_check == '') {
        $arr_check = array();
    }
    $string_khoihanh = '';
    $data_khoihanh = departure_getByTop('', '', 'position asc');
    $count_khoihanh = 0;
    foreach ($data_khoihanh as $row_kh) {
        if (in_array($row_kh->id, $arr_check)) {
            if ($count_khoihanh == 0) {
                $string_khoihanh .= $row_kh->name;
            } else {
                $string_khoihanh .= ', ' . $row_kh->name;
            }

            $count_khoihanh++;
        }

    }
    $asign['khoihanh'] = $string_khoihanh;

    $asign['departure_time']=$data['detail'][0]->departure_time;
    $asign['hidden_date']='';
    $asign['hidden_date_select']='hidden';
    $date_option='';
    $now = getdate();
    $year_current=$now["year"];
    $string_departure_time='';
    $full_date=date("d-m-Y");
    if($data['detail'][0]->departure_time!=''){
        $array_item=explode(',',$data['detail'][0]->departure_time);
        if(count($array_item)>0){
            foreach($array_item as $key=>$value){
                $array_check_year=explode('/',$value);
                if(isset($array_check_year[1])&&$array_check_year[1]==12){
                    $year_current=date("Y");
                }else{
                    $year_current='2018';
                }
                $value=$value.'-'.$year_current;
                $value=str_replace('/','-',$value);
                if(checkmydate($value) && strtotime($value)>=strtotime($full_date)){
                    $date_en=date('Y-m-d', strtotime(trim($value)));
                    $date_option.='<option value="'.$date_en.'">'.$value.'</option>';
                    if($string_departure_time==''){
                        $string_departure_time=  $value;
                        $asign['date_now']=date('Y-m-d', strtotime(trim($value)));
                        $asign['date_now_vn'] =trim($value);
                    }else{
                        $string_departure_time.= ' ,'.$value;
                    }
                }
            }
        }
    }

    if($string_departure_time==''){
        $asign['departure_time']='Liên hệ';
        $asign['hidden_date']='';
        $asign['hidden_date_select']='hidden';

        $asign['date_select'] = '<div class="tourmaster-tour-booking-date-input">
                                    <label>Ngày khởi hành <span style="color: red">*</span></label>
                                    <div class="tourmaster-datepicker-wrap">
                                        <input name="ngay_khoi_hanh" type=\'text\' class="form-control" id=\'input_ngay_khoi_hanh\'/>
                                    </div>
                                    <label class="error_booking" id="error_ngay_khoi_hanh">Bạn vui lòng chọn ngày khởi hành</label>
                                </div>';
    }else{
        $asign['departure_time']=$string_departure_time;
        $asign['hidden_date']='hidden';
        $asign['hidden_date_select']='';

        $asign['date_select']='<div class="tourmaster-tour-booking-people-input"> <label>Ngày khởi hành <span style="color: red">*</span></label><div class="tourmaster-combobox-wrap">

                                                            <select  name="ngay_khoi_hanh" id="input_select_ngay_khoi_hanh">';
        $asign['date_select'].=$date_option;
        $asign['date_select'].='</select>
                                                        </div></div><label class="error_booking" id="error_ngay_khoi_hanh">Bạn vui lòng chọn ngày khởi hành</label>';

    }


    $asign['quocgia'] = '';
    $arr = explode(',', trim($data['detail'][0]->danhmuc_multi));
    if (count($arr) > 0) {
        $asign['quocgia'] .= '<div class="package-details-choose">
                            <h3 class="title">Quốc gia</h3>
                            <ul class="clearfix">';

        foreach ($arr as $val) {
            $data_danhmuc = danhmuc_2_getById($val);
            if (count($data_danhmuc) > 0) {
                $data_danhmuc_1 = danhmuc_1_getById($data_danhmuc[0]->danhmuc1_id);

                if (count($data_danhmuc_1) > 0) {

                    $asign['quocgia'] .= '<li><span><a href="' . link_dm_tour2($data_danhmuc[0], $data_danhmuc_1[0]->name_url, $data_danhmuc_1[0]->tour_quoc_te) . '"><i class="fa fa-check"></i>' . $data_danhmuc[0]->name . ' </span></a></li>';
                }

            }

        }
        $asign['quocgia'] .= ' </ul></div>';
    }
    $asign['link_booking'] = link_booking($data['detail'][0]);

    $arr_destination = explode(',', $data['detail'][0]->destination);
    $tring_des = '';
    if (count($arr_destination) > 0) {
        $count_check = 1;
        foreach ($arr_destination as $row_des) {
            $tring_des .= ' <span class="from">' . $row_des;
            if ($count_check < count($arr_destination)) {
                $tring_des .= ' <i class="awe-icon fa fa-long-arrow-right"></i></span> ';
            }
            $count_check++;
        }
    }
    $asign['hanh_trinh'] = $tring_des;
    $data_session=checkSession('', 1);
    $asign['div_tiep_thi']='';
    $asign['code_user']='';

    if(isset($_GET['key'])){
        $_SESSION['id_tour_'.$data['detail'][0]->id]=_returnGetParamSecurity('key');
    }
    if(isset($_SESSION['id_tour_'.$data['detail'][0]->id])){
        $asign['id_user']='&key='.$_SESSION['id_tour_'.$data['detail'][0]->id];
        $array_user_share_noti = array(
            'id'=>$_SESSION['id_tour_'.$data['detail'][0]->id],
        );
        $list_noti= returnCURL($array_user_share_noti, SITE_NAME_MANAGE.'/azbooking-hoso.html');
        $data_list_noti=json_decode($list_noti,true);
        if(isset($data_list_noti['user']['code']) && $data_list_noti['user']['code']!=''){
            $asign['code_user']='  <p class="price ma_san_pham_tiep_thi"><i class="icon-dollar"></i> <span style="color: #4692e7">Mã sản phẩm:</span>
                                    <span style="font-size: 20px" class="amount"> '.$data_list_noti['user']['code'].'</span>
                                </p>';
        }
    }else{
        if($data['detail'][0]->code!=''){
            $asign['code_user']='  <p class="price ma_san_pham_tiep_thi"><i class="icon-dollar"></i> <span style="color: #4692e7">Mã sản phẩm:</span>
                                    <span style="font-size: 20px" class="amount"> '.$data['detail'][0]->code.'</span>
                                </p>';
        }
    }


    if(count($data_session)>0 && $asign['price_tiep_thi']!='' && $asign['price_tiep_thi']>0){
//        $asign['code_user']='  <div
//                                class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
//                            <i class="fa fa-shopping-cart "></i> Mã booking: <span class="tourmaster-tour-discount-price price_detail">'.$data_session['user_code'].'</span>
//                        </div>';

        $asign['id_user']='&key='._return_mc_encrypt($data_session['id']);
        $link_tiep_thi=$asign['link_share'].'/'._return_mc_encrypt($data_session['id']);
        $array_user_share_noti = array(
            'id'=>_return_mc_encrypt($data_session['id']),
            'all'=>1,
        );
        $user_detail_pro= returnCURL($array_user_share_noti, SITE_NAME_MANAGE.'/azbooking-hoso.html');
        $user_detail_pro=json_decode($user_detail_pro,true);
        if(count($user_detail_pro)>0 && isset($user_detail_pro['user'])) {
            $link_tiep_thi = $asign['link'] . '/' . _return_mc_encrypt($data_session['id']);
            switch ($user_detail_pro['user']['type_tiep_thi']) {
                case '1':
                    $sao='4 sao';
                    $price_tiep_thi = round(($asign['price_tiep_thi'] * 50) / 100);
                    break;
                case '2':
                    $sao='5 sao';
                    $price_tiep_thi = round(($asign['price_tiep_thi'] * 70) / 100);
                    break;
                case '3':
                    $sao='đại lý';
                    $price_tiep_thi = $asign['price_tiep_thi'];
                    break;
                default;
                    $sao='3 sao';
                    $price_tiep_thi = round(($asign['price_tiep_thi'] * 30) / 100);
            }
            $asign['div_tiep_thi'] = '<div class="link_tiep_thi_lien_ket package-details-content">
                        <h3 class="title "><b>Tiếp thị liên kết</b></h3>
                            <h3 class="title "> <b style="color: red">(Hoa hồng '.number_format($price_tiep_thi,0,",",".").' vnđ - '.$sao.')</b></h3>
                        <p>Bạn hãy kích <span></span> hoặc copy nội dung trong ô textbox hoặc bạn có thể kích vào các biểu tượng mạng xã hội để chia sẻ liên kết</p>
                       <div class="col-xs-12">
            <div class="col-md-12 col-sm-12 col-xs-12" style="text-align: center">
                <p>
                   <input style="height: 34px; width: 100%;" id="check_link_tiep_thi" class="form-control" value="' . $link_tiep_thi . '">
                    <input hidden="" id="link_old" type="password" value="' . $link_tiep_thi . '">
                </p>

            </div>
            <div class="col-md-6 col-sm-6 col-xs-12" style="text-align: center"><p>

                    <button type="button" class="btn btn-primary" id="copy_link_tiep_thi">
                        <i class="fa fa-share-alt "></i>  Link tiếp thị
                    </button>
                </p>

            </div>
            <div class="col-md-6 col-sm-6 col-xs-12" style="text-align: center" >
                <a target="_blank"
                   href="https://www.facebook.com/sharer/sharer.php?u=' . $link_tiep_thi . '"
                   style="margin-right: 5px;" class="btn btn-primary"><i style="background:none; color: #ffffff"
                                                                         class="fa fa-facebook"></i></a><a
                        target="_blank"
                       href="https://twitter.com/intent/tweet?source=webclient&text=' . $link_tiep_thi . '+' . $asign['name'] . '"
                        style="margin-right: 5px;" class="btn btn-info"><i style="background:none; color: #ffffff"
                                                                           class="fa fa-twitter"></i></a><a
                        target="_blank"
                        href="https://plus.google.com/share?url=' . $link_tiep_thi . '"
                        style="margin-right: 5px;" class="btn btn-danger"><i style="background:none; color: #ffffff"
                                                                             class="fa fa-google-plus"></i></a><a
                        target="_blank"
                        href="mailto:?Subject=' . $asign['title'] . '&body=' . $asign['description'] . '%0D%0A%0D%0A' . $link_tiep_thi . '"
                        class="btn btn-warning"><i style="background:none ; color: #ffffff" class="fa fa-envelope"></i></a></div>
            <div class="col-md-12 col-xs-12 col-sm-12" style=" display: none" id="box_alert">
                <div class="col-xs-12">
                    <div class="alert alert-block alert-success">
                        <button type="button" class="close" id="close_alert"><i class="ace-icon fa fa-times"></i>
                        </button>
                        <i class="ace-icon fa fa-check green"></i> Link tiếp thị liên kết đã được copy
                    </div>
                </div>
            </div>
        </div>
                    </div>';
        }
    }else{
        $asign['id_user']='';
    }
    $asign['tour_id']= _return_mc_encrypt($data['detail'][0]->id);
    $asign['SITE_NAME_MANAGE']=SITE_NAME_MANAGE;
    $stringRandom=rand(1000,1000000);
    $code_check_send_email=_return_mc_encrypt('azmix_'.$stringRandom.'_tungtv.soict@gmail.com');
    $asign['code_check_send_email']=$code_check_send_email;
    $asign['code_tour_review']=$stringRandom;
    print_template($asign, 'chitiettour');

    $array_check_noti = array(
        'id_tour'=> _return_mc_encrypt($data['detail'][0]->id),
        'code_tour_review'=>$stringRandom,
        'domain'=>'azbooking.vn',
        'code_check_send_email'=>$code_check_send_email,
    );
    $list_review= returnCURL($array_check_noti, SITE_NAME_MANAGE.'/list-review.html');
    $data_list_noti=json_decode($list_review,true);
    $asign['list_reivew']='<p style="margin-top: 30px">Tour '. $asign['name'].' chưa có đánh giá</p>';
    $asign['percent_access']='Tour chưa có bất kỳ đánh giá nào';
    $asign['total_review']=0;
    $asign['hidden_review']='hidden';
    $asign['hidden_page']='hidden';
    if(isset($data_list_noti['listReview']) && $data_list_noti['listReview']!=''){
        $asign['list_reivew']=$data_list_noti['listReview'];
        $asign['hidden_page']='';
    }
    $asign['count_list']=0;
    if(isset($data_list_noti['countList']) &&$data_list_noti['countList']!=''){
        $asign['count_list']=$data_list_noti['countList'];
    }

    if(isset($data_list_noti['totalReview'])&& $data_list_noti['totalReview']>0){
        if(isset($data_list_noti['percentAccess']) && $data_list_noti['percentAccess']>0){
            $asign['hidden_review']='';
            $asign['percent_access']=$data_list_noti['percentAccess'].'% đánh giá đã được xác minh';
        }else{
            $asign['percent_access']='Có '.$data_list_noti['totalNoAccess'].' đánh giá đang đợi được xác minh';
        }
        $asign['total_review']=$data_list_noti['totalReview'];

    }
    $asign['total_access']=0;
    $asign['nex_page']='<i class="fa fa-angle-double-right next-pre-icon"></i>';
    if(isset($data_list_noti['totalAccess']) ){
        if( $data_list_noti['totalAccess']>10){
            $asign['nex_page']=' <a href="javascript:void(0)" data-current="2" data-max-page="'.$asign['count_list'].'"
                                       class="next_pre_review review_next_page_link">
                                        <i class="fa fa-angle-double-right next-pre-icon"></i>
                                    </a>';
        }
        $asign['total_access']=$data_list_noti['totalAccess'];
    }


    $asign['programPoint']=0;
    $asign['programPointPercent']=0;
    if(isset($data_list_noti['programPoint'])){
        $asign['programPoint']=$data_list_noti['programPoint'];
        $asign['programPointPercent']=$data_list_noti['programPoint']*10;
    }
    $asign['tourGuideFullPoint']=0;
    $asign['tourGuideFullPointPercent']=0;
    if(isset($data_list_noti['tourGuideFullPoint'])){
        $asign['tourGuideFullPoint']=$data_list_noti['tourGuideFullPoint'];
        $asign['tourGuideFullPointPercent']=$data_list_noti['tourGuideFullPoint']*10;
    }
//    $asign['tourGuideLocalPoint']=0;
//    $asign['tourGuideLocalPointPercent']=0;
//    if(isset($data_list_noti['tourGuideLocalPoint'])){
//        $asign['tourGuideLocalPoint']=$data_list_noti['tourGuideLocalPoint'];
//        $asign['tourGuideLocalPointPercent']=$data_list_noti['tourGuideLocalPoint']*10;
//    }
    $asign['hotelPoint']=0;
    $asign['hotelPointPercent']=0;
    if(isset($data_list_noti['hotelPoint'])){
        $asign['hotelPoint']=$data_list_noti['hotelPoint'];
        $asign['hotelPointPercent']=$data_list_noti['hotelPoint']*10;
    }
    $asign['restaurantPoint']=0;
    $asign['restaurantPointPercent']=0;
    if(isset($data_list_noti['restaurantPoint'])){
        $asign['restaurantPoint']=$data_list_noti['restaurantPoint'];
        $asign['restaurantPointPercent']=$data_list_noti['restaurantPoint']*10;
    }
    $asign['transportationPoint']=0;
    $asign['transportationPointPercent']=0;
    if(isset($data_list_noti['transportationPoint'])){
        $asign['transportationPoint']=$data_list_noti['transportationPoint'];
        $asign['transportationPointPercent']=$data_list_noti['transportationPoint']*10;
    }
    $asign['totalPoint']=0;
    if(isset($data_list_noti['totalPoint'])){
        $asign['totalPoint']=$data_list_noti['totalPoint'];
    }
    $asign['textPoint']='Tuyệt vời';
    if($asign['totalPoint']>=1 && $asign['totalPoint']<=2.9){
        $asign['textPoint']='Rất kém';
    }
    if($asign['totalPoint']>=3 && $asign['totalPoint']<=4.9){
        $asign['textPoint']='Kém';
    }
    if($asign['totalPoint']>=5 && $asign['totalPoint']<=6.9){
        $asign['textPoint']='Trung bình';
    }
    if($asign['totalPoint']>=7 && $asign['totalPoint']<=8.9){
        $asign['textPoint']='Tốt';
    }

    if($asign['totalPoint']<7){
        $asign['hidden_review']='hidden';
    }
    $asign['count13']='0';
    if(isset($data_list_noti['count13'])){
        $asign['count13']=$data_list_noti['count13'];
    }
    $asign['count35']='0';
    if(isset($data_list_noti['count35'])){
        $asign['count35']=$data_list_noti['count35'];
    }
    $asign['count57']='0';
    if(isset($data_list_noti['count57'])){
        $asign['count57']=$data_list_noti['count57'];
    }
    $asign['count79']='0';
    if(isset($data_list_noti['count57'])){
        $asign['count79']=$data_list_noti['count79'];
    }
    $asign['count910']='0';
    if(isset($data_list_noti['count910'])){
        $asign['count910']=$data_list_noti['count910'];
    }

    $asign['countPercent13']='0';
    if(isset($data_list_noti['countPercent13'])){
        $asign['countPercent13']=$data_list_noti['countPercent13'];
    }
    $asign['countPercent35']='0';
    if(isset($data_list_noti['countPercent35'])){
        $asign['countPercent35']=$data_list_noti['countPercent35'];
    }
    $asign['countPercent57']='0';
    if(isset($data_list_noti['countPercent57'])){
        $asign['countPercent57']=$data_list_noti['countPercent57'];
    }
    $asign['countPercent79']='0';
    if(isset($data_list_noti['countPercent79'])){
        $asign['countPercent79']=$data_list_noti['countPercent79'];
    }
    $asign['countPercent910']='0';
    if(isset($data_list_noti['countPercent910'])){
        $asign['countPercent910']=$data_list_noti['countPercent910'];
    }
    print_template($asign, 'chitiettourreview');
}

function validateDate($date, $format = 'd-m-Y')
{
    $d = DateTime::createFromFormat($format, $date);
    return $d && $d->format($format) == $date;
}

