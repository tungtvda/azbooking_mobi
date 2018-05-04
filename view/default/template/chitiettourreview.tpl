
<link rel="stylesheet"
      href="{SITE-NAME}/view/default/themes/css/review.css"/>
<input value="{SITE_NAME_MANAGE}" id="site_name_manage" hidden>
<input hidden value="" id="url_tab_review" >
<a href="#tab-reviews" id="tab-review-click">
<i class="fa fa-comments"></i>
</a>
<div id="tab_review" data-tab="reviews" class="pagination_scroll_top">
    <div data-component="core/sliding-panel-core-a11y" data-id="hp-reviews-sliding" id="hp-reviews-sliding"
         aria-hidden="false" class="sliding-panel-widget " tabindex="0" style="">
        <div data-component="core/et-scroll-observer" data-scrollable="" class="sliding-panel-widget-scrollable ">
            <div data-toggle="tooltip" data-placement="top" title="Tắt đánh giá" class="sliding-panel-widget-close-button" data-close-button="" role="button" tabindex="0"
                 aria-label="Close">
                <i class="bicon-aclose fa fa-times " aria-hidden="true"></i>
            </div>
            <div class="sliding-panel-widget-content review_list_block one_col" data-content="">
                <div>
                </div>
                <div class=" review-policy reviews-new-title--fix-top clearfix review-policy-fix ">
                    <!--<img class="review-policy__icon" src="{SITE-NAME}/view/default/themes/images/review/checklist.png">-->
                    <div class="review-policy__header-group">
                        <h2 class="review-policy__header" style="font-size: 14px; padding-top: 15px;    margin-bottom: 0px;    padding-bottom: 15px;">
                        {percent_access}
                        </h2>
                    </div>
                </div>
                <div id="review_list_score_container" class="review_list_outer_container clearfix">
                    <div id="review_list_score" class=" review_list_score_container lang_ltr scores_full_layout">
                        <div {hidden_review} class="reviews_panel_header_score">
                            <span class=" review-score-widget review-score-widget__very_good  review-score-widget__inline   review-score-widget__20 " style="font-size: 18px; ">
                                    <span class="review-score-badge" role="link">
                                    {totalPoint}
                                    </span>
                                    <span style="margin-left: 10px" class="review-score-widget__text" role="link">
                                   {textPoint}
                                    </span>
                                    <span style="margin-left: 10px" class="review-score-widget__subtext" role="link" aria-label=" from 3,824 reviews">
                                      {total_access} đánh giá
                                    </span>
                            </span>
                            <a id="show_hide_statis" href="javascript:void(0)" style="font-style: italic;margin-left: 10px; color:#ed1c24">(Xem chi tiết thống kê)</a>
                        </div>
                        <div  id="tooltip_score_distribution" style="display: none" >
                            <div class="review_list_block one_col">
                                <div class="scores_full_layout border-review-score">
                                    <ul id="review_list_score_distribution"
                                        class="review_score_breakdown_list list_tighten clearfix">
                                        <li class="clearfix" data-question="review_adj_superb">
                                            <p class="review_score_name">
                                                Tuyệt vời: 9+
                                            </p>
                                            <div class="score_bar">
                                                <div class="score_bar_value" data-score="{countPercent910}" style="width: {countPercent910}%;"></div>
                                            </div>
                                            <p class="review_score_value">{count910}</p>
                                        </li>
                                        <li class="clearfix" data-question="review_adj_good">
                                            <p class="review_score_name">
                                                Tốt : 7 – 9
                                            </p>
                                            <div class="score_bar">
                                                <div class="score_bar_value" data-score="{countPercent79}" style="width: {countPercent79}%;"></div>
                                            </div>
                                            <p class="review_score_value">{count79}</p>
                                        </li>
                                        <li class="clearfix" data-question="review_adj_average_okay">
                                            <p class="review_score_name">
                                                Trung bình: 5 – 7
                                            </p>
                                            <div class="score_bar">
                                                <div class="score_bar_value" data-score="{countPercent57}" style="width: {countPercent57}%;"></div>
                                            </div>
                                            <p class="review_score_value">{count57}</p>
                                        </li>
                                        <li class="clearfix" data-question="review_adj_poor">
                                            <p class="review_score_name">
                                                Kém: 3 – 5
                                            </p>
                                            <div class="score_bar">
                                                <div class="score_bar_value" data-score="{countPercent35}" style="width: {countPercent35}%;"></div>
                                            </div>
                                            <p class="review_score_value">{count35}</p>
                                        </li>
                                        <li class="clearfix" data-question="review_adj_very_poor">
                                            <p class="review_score_name">
                                                Rất kém: 1 – 3
                                            </p>
                                            <div class="score_bar">
                                                <div class="score_bar_value" data-score="{countPercent13}" style="width: {countPercent13}%;"></div>
                                            </div>
                                            <p class="review_score_value">{count13}</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div {hidden_review} id="review_list_score_breakdown">
                            <div class="review_list_score_breakdown_left">
                                <ul class="review_score_breakdown_list list_tighten clearfix">
                                    <li class="clearfix" data-question="hotel_clean">
                                        <p class="review_score_name">Chương trình</p>
                                        <div class="score_bar">
                                            <div class="score_bar_value" data-score="{programPointPercent}" style="width: {programPointPercent}%;"></div>
                                        </div>
                                        <p class="review_score_value">{programPoint}</p>
                                    </li>
                                    <li class="clearfix" data-question="hotel_comfort">
                                        <p class="review_score_name">Hướng dẫn viên</p>
                                        <div class="score_bar">
                                            <div class="score_bar_value" data-score="{tourGuideFullPointPercent}" style="width: {tourGuideFullPointPercent}%;"></div>
                                        </div>
                                        <p class="review_score_value">{tourGuideFullPoint}</p>
                                    </li>
                                    <li class="clearfix" data-question="hotel_value">
                                        <p class="review_score_name">Khách sạn</p>
                                        <div class="score_bar">
                                            <div class="score_bar_value" data-score="{hotelPointPercent}" style="width: {hotelPointPercent}%;"></div>
                                        </div>
                                        <p class="review_score_value">{hotelPoint}</p>
                                    </li>
                                </ul>
                            </div>
                            <div class="review_list_score_breakdown_right">
                                <ul class="review_score_breakdown_list list_tighten clearfix">

                                    <li class="clearfix" data-question="hotel_wifi">
                                        <p class="review_score_name">Ăn uống</p>
                                        <div class="score_bar">
                                            <div class="score_bar_value" data-score="{restaurantPointPercent}" style="width: {restaurantPointPercent}%;"></div>
                                        </div>
                                        <p class="review_score_value">{restaurantPoint}</p>
                                    </li>
                                    <li class="clearfix" data-question="hotel_location">
                                        <p class="review_score_name">Phương tiện vận chuyển</p>
                                        <div class="score_bar">
                                            <div class="score_bar_value" data-score="{transportationPointPercent}" style="width: {transportationPointPercent}%;"></div>
                                        </div>
                                        <p class="review_score_value">{transportationPoint}</p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div data-et-view="adUAVGHCcZbFDEOIGO:1"></div>
                    <div class="review_list_container review-list--clean">
                        <div id="review_list_page_container" style="display: block;">
                            <div data-et-view="adUAVGZaZfLLIMLaUJeaILYJO:1"></div>
                            <ul class="review_list" style="margin-bottom: 0px">
                                <li class="review_item clearfix featured_review_item ">
                                    <div class="featured_review_item__header_block featured_review-scout_review"
                                         data-et-view="adUAVGZaeaPDERXSEJCLfeKe:1 adUAVGZaeaPDERXSEJCLfeKe:2">
                                        <div class="featured_review_item__icon_container"><img
                                                    src="{SITE-NAME}/view/default/themes/images/review/icon_review.png"
                                                    alt="Property Scout Review"></div>
                                        <div class="featured_review_item__header featured_review_item__no_votes">
                                            Form Đánh giá <a class="icon_show_hide_form_review" href="javascript:void(0)"><i class=" fa fa-align-justify"></i></a>
                                        </div>
                                    </div>
                                    <div id="form_review_show_hide" class="featured_review-scout_review-subheader widget_has_radio_checkbox_text">
                                        <div class="form_review widget_content" style="margin-bottom: 0px">
                                            <form id="form_submit_review">
                                                <input type="text" value="{code_check_send_email}" id="input_code_check_send_email" name="code_check_send_email" hidden class="valid">
                                                <input type="text" value="{code_tour_review}" id="input_code_tour_review" name="code_tour_review" hidden class="valid">
                                                <input type="text" value="{tour_id}" id="input_tour_id" name="tour_id" hidden class="valid">
                                                <input type="text" value="{name}" id="input_tour_name" name="tour_name" hidden class="valid">
                                                <input type="text" value="{code}" id="input_tour_code" name="tour_code" hidden class="valid">
                                                <input type="text" value="azbooking.vn" id="input_domain" name="domain" hidden class="valid">
                                            <fieldset style="margin-bottom: 15px">
                                                <legend><i class="fa fa-sliders"></i> Điểm dịch vụ</legend>
                                                <div class="row_slide">
                                                    <p class="review_score_name">Chương trình tour</p>
                                                    <div class="slidecontainer">
                                                        <input type="range" min="1" max="10" value="5" class="slider valid" name="program"
                                                               id="program_slide">
                                                    </div>
                                                    <div class="point_slide">
                                                        <span id="program_point" class="review_score_value_form">5</span>
                                                    </div>
                                                </div>
                                                <div class="row_slide">
                                                    <p class="review_score_name">Hướng dẫn viên</p>
                                                    <div class="slidecontainer">
                                                        <input type="range" min="1" max="10" value="5" class="slider valid" name="tour_guide_full"
                                                               id="tour_guide_full_slide">
                                                    </div>
                                                    <div class="point_slide">
                                                        <span id="tour_guide_full_point"
                                                              class="review_score_value_form">5</span>
                                                    </div>
                                                </div>
                                                <div class="row_slide">
                                                    <p class="review_score_name">Khách sạn</p>
                                                    <div class="slidecontainer">
                                                        <input type="range" min="1" max="10" value="5" class="slider valid" name="hotel"
                                                               id="hotel_slide">
                                                    </div>
                                                    <div class="point_slide">
                                                        <span id="hotel_point" class="review_score_value_form">5</span>
                                                    </div>
                                                </div>
                                                <div class="row_slide">
                                                    <p class="review_score_name">Ăn uống</p>
                                                    <div class="slidecontainer">
                                                        <input type="range" min="1" max="10" value="5" class="slider valid" name="restaurant"
                                                               id="restaurant_slide">
                                                    </div>
                                                    <div class="point_slide">
                                                        <span id="restaurant_point" class="review_score_value_form">5</span>
                                                    </div>
                                                </div>
                                                <div class="row_slide">
                                                    <p class="review_score_name">Phương tiện vận chuyển</p>
                                                    <div class="slidecontainer">
                                                        <input type="range" min="1" max="10" value="5" class="slider valid"  name="transportation"
                                                               id="transportation_slide">
                                                    </div>
                                                    <div class="point_slide">
                                                        <span id="transportation_point"
                                                              class="review_score_value_form">5</span>
                                                    </div>
                                                </div>
                                            </fieldset>
                                                <div class="row">
                                                    <div class="col-xs-12 col-md-12 col-sm-12">
                                                        <p class="review_score_name">Cảm xúc của bạn (<span id="count_length_review">80</span> ký tự)<span
                                                                    style="color: red">*</span> </br>
                                                            <span style="font-style: italic; color:#ed991c">    (Ví dụ: Chuyến đi thật tuyệt vời)</span></p>
                                                        <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                    <i class="awe-icon  fa fa-comment"></i>
                                                    <input required="required"  class="valid_input" type="text" name="content_review" id="input_content_review"
                                                           placeholder="Đánh giá ngắn gọn về chuyến đi của bạn...">
                                                </span>
                                                        </label>
                                                        <p class="error_submit_review" id="error_content_review">Bạn vui lòng nhập đánh giá tổng quan</p>
                                                        <p class="show_length_review">Số ký tự đã vượt quá giới hạn, nếu có thêm ý kiến bình luận, bạn vui lòng điền vào ô đánh giá chuyến đi</p>
                                                    </div>
                                                </div>

                                            <div class="row">

                                                <div class="col-xs-12 col-md-6 col-sm-12">
                                                    <p class="review_score_name">Họ tên <span
                                                                style="color: red">*</span></p>
                                                    <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                    <i class="awe-icon  fa fa-user"></i>
                                                    <input required="required"  class="valid_input" type="text" name="name_cus_review" id="input_name_cus_review"
                                                           placeholder="Họ tên khách hàng...">
                                                </span>
                                                    </label>
                                                    <p class="error_submit_review" id="error_name_cus_review">Bạn vui lòng nhập họ tên</p>
                                                </div>
                                                <div class="col-xs-12 col-md-6 col-sm-12">
                                                    <p class="review_score_name">Email <span style="color: red">*</span>
                                                    </p>
                                                    <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                    <i class="awe-icon fa fa-envelope"></i>
                                                    <input required="required"  class="valid_input" type="email" name="email_cus_review" id="input_email_cus_review"
                                                           placeholder="Email khách hàng...">
                                                </span>
                                                    </label>
                                                    <p class="error_submit_review" id="error_email_cus_review">Bạn vui lòng kiểm tra email</p>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-md-6 col-sm-12">
                                                    <p class="review_score_name">Điện thoại <span
                                                                style="color: red">*</span></p>
                                                    <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                    <i class="awe-icon fa fa-phone"></i>
                                                    <input required="required"  class="valid_input" type="text" name="phone_cus_review" id="input_phone_cus_review"
                                                           placeholder="Điện thoại...">
                                                </span>
                                                    </label>
                                                    <p class="error_submit_review" id="error_phone_cus_review">Bạn vui lòng nhập số điện thoại</p>
                                                </div>
                                                <div class="col-xs-12 col-md-6 col-sm-12">
                                                    <p class="review_score_name">Ngày khởi hành</p>
                                                    <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                    <i class="awe-icon fa fa-calendar"></i>
                                                    <input type="text" id="input_ngay_khoi_hanh_review"  class="datepicker_review valid " name="ngay_khoi_hanh_review" placeholder="Ngày khởi hành...">
                                                </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-md-12 col-sm-12">
                                                    <p class="review_score_name">Đánh giá chuyến đi</p>
                                                    <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                    <textarea rows="2" id="input_comment_review" name="comment_review" class="text-area-review valid"
                                                              placeholder="Ý kiến..."></textarea>
                                                </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-md-12 col-sm-12">
                                                    <p class="review_score_name">Sắp tới quý khách có dự định đi du lịch ở đâu? </p>
                                                    <label class="from" style="margin-top: 0px; padding-top: 0px">
                                                <span class="form-item db" style="margin-top: 0px">
                                                   <textarea rows="2" id="input_comment_upcoming" name="comment_upcoming" class="text-area-review valid"
                                                             placeholder="Sắp tới quý khách có dự định đi du lịch ở đâu?..."></textarea>
                                                </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-xs-12 col-md-12 col-sm-12">
                                                <div class="form-actions">
                                                    <div class="add-to-cart">
                                                        <button class="submit_review" id="submit_form_review" type="button">
                                                            <i class="awe-icon fa fa-check-square-o"></i>  Đánh giá
                                                        </button>
                                                        <button hidden class="submit_review" id="loading_form_review" type="button">
                                                            <i class="awe-icon fa fa-check-square-o"></i>  Đang thực hiện ...
                                                        </button>
                                                        <div id="show_mess" class="alert  fade in alert-dismissible">
                                                            <a href="javascript:void(0)" id="hidden_mess_review" class="close"  title="Tắt thông báo">×</a>
                                                            <strong id="show_mess_content">Danger!</strong>
                                                        </div>
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>


                    <div class="review_list_container review-list--clean">
                        <div id="review_list_page_container" style="display: block;">
                            <div class="review_list_nav language_filter_on_reviews clearfix">
                                <div style="border-top:0px " class="col-xs-12 review_sort_container">
                                    <div class="col-sm-6 col-xs-12">
                                        <label for="review_sort" class="review_label ">Sắp xếp:</label>
                                        <select class="review_sort " id="review_sort">
                                            <option value="id_desc">Đánh giá mới nhất</option>
                                            <option value="id_asc">Đánh giá cũ</option>
                                            <option value="total_desc">Điểm cao nhất</option>
                                            <option value="total_asc">Điểm thấp nhất</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <label for="review_sort" class="review_label ">Hiển thị:</label>
                                        <select class="review_sort " id="review_limit">
                                            <option value="10">10 đánh giá</option>
                                            <option value="20">20 đánh giá</option>
                                            <option value="30">30 đánh giá</option>
                                            <option value="40">40 đánh giá</option>
                                            <option value="50">50 đánh giá</option>
                                        </select>
                                    </div>

                                </div>
                                <div data-et-view="ZOOTdCNBLQFVRZaHLSGDIXaO:1"></div>
                                <div class="col-xs-12 review_sort_container">
                                    <div class="col-sm-6 col-xs-12">
                                        <label for="review_sort" class="review_label ">Lọc đánh giá:</label>
                                        <select class="review_sort " id="review_total">
                                            <option value="">-- Điểm đánhg giá --</option>
                                            <option value="9">Tuyệt vời +9</option>
                                            <option value="7">Tốt 7-9</option>
                                            <option value="5">Trung bình 5-7</option>
                                            <option value="3">Kém 3-5</option>
                                            <option value="1">Rất kém 1-3</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-6 col-xs-12">
                                        <label style="display: block;">&nbsp;</label>
                                        <a class=" btn btn-danger" href="javascript:void(0)" id="removeFilterReview">Xóa lọc</a>
                                    </div>
                                </div>
                            </div>
                            <div data-et-view="adUAVGZaZfLLIMLaUJeaILYJO:1"></div>

                            <div  class="featured_review_item__header_block featured_review-scout_review title_list_review">
                                <div class="featured_review_item__icon_container"><img
                                            src="{SITE-NAME}/view/default/themes/images/review/icon_review.png"
                                            alt="Property Scout Review"></div>
                                <div class="featured_review_item__header featured_review_item__no_votes">
                                    Danh sách đánh giá
                                </div>

                            </div>
                            <input hidden id="current_page" value="1">
                            <div {hidden_page}  class="review_list_pagination">
                                <p class="page_link review_previous_page">
                                    <i class="fa fa-angle-double-left next-pre-icon"></i>
                                </p>
                                <p class="page_link review_next_page">
                                   {nex_page}
                                </p>
                                <p class="page_showing_review">
                                    Hiển thị
                                    1 - {count_list}
                                </p>
                            </div>
                            <ul class="review_list" id="review_filter">
                                {list_reivew}
                            </ul>

                            <div id="review_photo_lightbox"></div>
                            <div  {hidden_page} class="review_list_pagination">
                                <p class="page_link review_previous_page">
                                    <i class="fa fa-angle-double-left next-pre-icon"></i>
                                </p>
                                <p class="page_link review_next_page">
                                    {nex_page}
                                </p>
                                <p  class="page_showing_review">
                                    Hiển thị
                                    1 - {count_list}
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!-- /#review_list_score_container -->
                <span data-js-uhrcpo="3," style="position:absolute;width:1px;height:1px;opacity:0;"></span>
            </div><!-- /.sliding-panel-widget-content -->
        </div><!-- /.sliding-panel-widget-scrollable -->
        <div tabindex="0"></div>
        <div tabindex="0"></div>
    </div><!-- /.sliding-panel-widget -->
</div>