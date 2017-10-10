<div class="tourmaster-template-wrapper">
    <div class="tourmaster-tour-booking-bar-container tourmaster-container">
        <div class="tourmaster-tour-booking-bar-container-inner">
            <div class="tourmaster-tour-booking-bar-anchor tourmaster-item-mglr"></div>
            <div class="tourmaster-tour-booking-bar-wrap tourmaster-item-mglr">
                <div class="tourmaster-tour-booking-bar-widget  traveltour-sidebar-area">
                    <div id="text-12" class="widget widget_text traveltour-widget">
                        <div class="textwidget">
                            <div class="gdlr-core-space-shortcode" style="margin-top: -10px;"></div>
                            <div class="gdlr-core-widget-box-shortcode"
                                 style="color: #c9e2ff;background-image: url({SITE-NAME}/view/default/themes/images/widget-bg.jpg);">
                                <h3 class="gdlr-core-widget-box-shortcode-title"
                                    style="color: #ffffff;">GỌI CHO CHÚNG TÔI</h3>
                                <div class="gdlr-core-widget-box-shortcode-content">
                                    <p><a href="tel:{Hotline}"><i class="fa fa-phone"
                                                                  style="font-size: 20px;color: #ffcf2a;margin-right: 10px;"></i>
                                            <span style="font-size: 20px; color: #ffcf2a; font-weight: 600;">{Hotline}</span></a>
                                    </p>
                                    <p><a href="tel:{Hotline}"><i class="fa fa-phone"
                                                                  style="font-size: 20px;color: #ffcf2a;margin-right: 10px;"></i>
                                            <span style="font-size: 20px; color: #ffcf2a; font-weight: 600;">{Hotline_hcm}</span></a>
                                    </p>
                                    <p><a href="mailto:{Hotline}"><i class="fa fa-envelope-o"
                                                                     style="font-size: 17px;color: #ffcf2a;margin-right: 10px;"></i>
                                            <span style="font-size: 14px; color: #fff; font-weight: 600;">{Email}</span></a>
                                    </p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tourmaster-tour-info-outer" style="    padding-left: 15px;padding-right: 15px;">
                <div class="tourmaster-tour-info-outer-container tourmaster-container">
                    <div class="tourmaster-tour-info-wrap clearfix">
                        <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                            <i class="fa fa-dollar"></i>
                            <span class="tourmaster-tour-discount-price price_detail">
                                {price_format} {vnd}
                            </span>&nbsp;&nbsp;&nbsp;&nbsp;
                            <span {price_sales_format_hidden} class="tourmaster-tour-price price_sales_detail">
                                <span class="tourmaster-tail">
                                    {price_sales_format}
                                </span>
                            </span>
                        </div>
                        {code_user}
                        <div hidden
                                class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                            <i class="fa fa-barcode"></i> Mã tour: {code}
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                            <i class="fa fa-plane"></i> Điểm khởi hành: {khoihanh}
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                            <i class="fa fa-map-marker"></i> Lịch trình: {hanh_trinh}
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                            <i class="fa fa-map-marker"></i> Điểm đến: {destination}
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                            <i class="icon_clock_alt"></i> Thời gian: {durations}
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-availability tourmaster-item-pdlr">
                            <i class="fa fa-calendar"></i>Khởi hành: {departure_time}
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-availability tourmaster-item-pdlr">
                            <i class="fa fa-building-o "></i>Khách sạn:
                            <ins>{start}</ins>
                        </div>
                        <div class="tourmaster-tour-info tourmaster-tour-info-availability tourmaster-item-pdlr">
                            <i class="fa fa-car"></i>Phương tiện: {vehicle}
                        </div>
                        <div {hidden_socho}
                                class="tourmaster-tour-info tourmaster-tour-info-maximum-people tourmaster-item-pdlr">
                            <i class="fa fa-users"></i>Số chỗ : {so_cho}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    {div_tiep_thi}
    <!--<div class="link_tiep_thi_lien_ket package-details-content"><h3 class="title "><b>Tiếp thị liên kết</b> <b
                    style="color: red">(Hoa hồng được nhận 10%)</b></h3>
        <p>Bạn hãy kích <span></span> hoặc copy nội dung trong ô textbox hoặc bạn có thể kích vào các biểu tượng mạng xã
            hội để chia sẻ liên kết</p>
        <div class="col-xs-12">
            <div class="col-md-5 col-sm-12 col-xs-12" style="text-align: center">
                <p>
                   <input style="height: 34px; width: 100%;" id="check_link_tiep_thi" class="form-control" value="">
                    <input hidden="" id="link_old" type="password" value="">
                </p>

            </div>
            <div class="col-md-6 col-sm-6 col-xs-6" style="width: 50%; display: inline-block"><p>

                    <button type="button" class="btn btn-primary" id="copy_link_tiep_thi">
                        <i class="fa fa-share-alt "></i>  Link tiếp thị
                    </button>
                </p>

            </div>
            <div class="col-md-6 col-sm-6 col-xs-6" style="text-align: right; width: 50%; display: inline-block">
                <a target="_blank"
                   href=""
                   style="margin-right: 5px;" class="btn btn-primary"><i style="background:none; color: #ffffff"
                                                                         class="fa fa-facebook"></i></a><a
                        target="_blank"
                        href=""
                        style="margin-right: 5px;" class="btn btn-info"><i style="background:none; color: #ffffff"
                                                                           class="fa fa-twitter"></i></a><a
                        target="_blank"
                        href=""
                        style="margin-right: 5px;" class="btn btn-danger"><i style="background:none; color: #ffffff"
                                                                             class="fa fa-google-plus"></i></a><a
                        target="_blank"
                        href=""
                        class="btn btn-warning"><i style="background:none ; color: #ffffff" class="fa fa-envelope"></i></a></div>
            <div class="col-md-12 col-xs-12 col-sm-12" style="margin-top: 20px; display: none" id="box_alert">
                <div class="col-xs-12">
                    <div class="alert alert-block alert-success">
                        <button type="button" class="close" id="close_alert"><i class="ace-icon fa fa-times"></i>
                        </button>
                        <i class="ace-icon fa fa-check green"></i> Link tiếp thị liên kết đã được copy
                    </div>
                </div>
            </div>
        </div>
    </div>-->
    <div class="tourmaster-tour-booking-bar-container tourmaster-container">
        <div class="tourmaster-tour-booking-bar-container-inner">
            <div class="tourmaster-tour-booking-bar-anchor tourmaster-item-mglr"></div>
            <div class="tourmaster-tour-booking-bar-wrap tourmaster-item-mglr" style="margin-top: 0px !important;">
                <div class="tourmaster-tour-booking-bar-outer">
                    <div class="tourmaster-header-price tourmaster-item-mglr">
                        <div class="tourmaster-header-price-wrap">
                            <div class="tourmaster-header-price-overlay"></div>
                            <div style="text-align: center" class="tourmaster-tour-price-wrap tourmaster-discount">
                                <p style="margin-bottom: 0px">
                                    <span class="tourmaster-tour-discount-price">ĐẶT TOUR</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <style>
                        .error_booking {
                            color: red;
                            font-size: 12px;
                            font-weight: normal;
                            display: none;
                        }

                        .traveltour-body {
                            color: inherit;
                        }

                        .tourmaster-tour-info {
                            color: #4692e7;
                        }
                    </style>
                    <div id="booking" class="tourmaster-tour-booking-bar-inner">
                        <form class="tourmaster-single-tour-booking-fields tourmaster-form-field tourmaster-with-border"
                              id="submit_form" role="form" action="" method="post"
                              enctype="multipart/form-data">
                            <input hidden type="text" id="input_price" value="{price}" name="price"
                                   class="valid">
                            <input hidden type="text" id="input_price_2" value="{price_2}"
                                   name="price_2" class="valid">
                            <input hidden type="text" id="input_price_3" value="{price_3}"
                                   name="price_3" class="valid">
                            <input hidden type="text" id="input_price_4" value="{price_4}"
                                   name="price_4" class="valid">
                            <input hidden type="text" id="input_price_5" value="{price_5}"
                                   name="price_5" class="valid">
                            <input hidden type="text" id="input_price_6" value="{price_6}"
                                   name="price_6" class="valid">
                            <div class="tourmaster-tour-booking-date clearfix" data-step="1">
                                <i class="fa fa-user"></i>
                                <label>Họ tên <span style="color: red">*</span></label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input required="required" type="text"
                                           id="input_name_customer"
                                           name="name_customer">
                                    <label class="error_booking" id="error_name_customer">Bạn vui lòng kiểm tra họ
                                        tên</label>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="2">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-envelope-o"></i>
                                <label>Email <span style="color: red">*</span></label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input required="" type="email" id="input_email" name="email">
                                    <label class="error_booking" id="error_email">Bạn vui lòng kiểm tra email</label>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="3">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-phone"></i>
                                <label>Điện thoại <span style="color: red">*</span></label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input required="" type="text" id="input_phone" name="phone">
                                    <label id="error_phone" class="error_booking">Bạn vui lòng kiểm tra điện
                                        thoại</label>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="4">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-map-marker"></i>
                                <label>Địa chỉ <span style="color: red">*</span></label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input required="" type="text" id="input_address" name="address">
                                    <label id="error_address" class="error_booking">Bạn vui lòng kiểm tra địa
                                        chỉ</label>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="5">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-calendar"></i>
                                {date_select}
                            </div>
                            <script type="text/javascript">
                                $(function () {
                                    $("#input_ngay_khoi_hanh").datepicker().datepicker("setDate", new Date());
                                });
                            </script>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="6">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-blind"></i>
                                <label>Số {name_price} <span style="color: red">*</span></label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input id_title="1" name_title="{name_price}" required=""
                                           value="1" min="1" type="number" class="valid"
                                           id="input_num_nguoi_lon" name="num_nguoi_lon">
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="7">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-male "></i>
                                <label>Số {name_price_2} </label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input id_title="2" name_title="{name_price_2}" required=""
                                           value="0" min="0" type="number" class="valid"
                                           id="input_num_tre_em" name="num_tre_em">
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="8">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-child"></i>
                                <label>Số {name_price_3} </label>
                                <div class="tourmaster-tour-booking-date-input">
                                    <input id_title="3" name_title="{name_price_3}" required=""
                                           value="0" min="0" type="number" class="valid"
                                           id="input_num_tre_em_5" name="num_tre_em_5">
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="9">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-dollar"></i>

                                <div class="tourmaster-tour-booking-date-input" style="padding-top: 13px;">
                                    <span class="tourmaster-tour-discount-price price_detail"
                                          id="amount_total">{price_format} {vnd}</span>
                                </div>
                            </div>

                            <div class="tourmaster-tour-booking-submit" data-step="10">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-check-circle"></i>

                                <div class="tourmaster-tour-booking-submit-input">
                                    <img id="loading" style="width: 150px; display: none "
                                         src="http://azbooking.vn/view/default/themes/images/loading.gif">
                                    <input id="submit_form_action"
                                           class="tourmaster-button" type="button" value="Đặt Tour"
                                           data-ask-login="proceed-without-login"/>
                                    <div class="tourmaster-tour-booking-submit-error">* Bạn vui lòng nhập thông tin bắt
                                        buộc
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="gdlr-core-page-builder-body tourmaster-tour-booking-bar-outer">

        <div class="gdlr-core-pbf-wrapper " data-skin="Blue Icon"
             id="detail">
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div {hidden_summary} class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-file-text-o"></i> <span>Tóm tắt</span>
                    </div>
                    <div {hidden_summary} class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            {summary}
                        </div>
                    </div>
                    <div {hidden_highlights} class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-check"></i> <span>Nổi bật</span>
                    </div>
                    <div {hidden_highlights} class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            {highlights}
                        </div>
                    </div>

                    <div {hidden_schedule} class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-map-marker"></i> <span>Lịch trình</span>
                    </div>
                    <div {hidden_schedule} class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            {schedule}
                        </div>
                    </div>

                    <div class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-dollar"></i> <span>Bảng giá</span>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            {price_list}
                        </div>
                    </div>

                    <div {hidden_inclusion} class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-object-group"></i> <span>Bao gồm</span>
                    </div>
                    <div {hidden_inclusion} class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            {inclusion}
                        </div>
                    </div>

                    <div {hidden_exclusion} class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-object-ungroup"></i> <span>Không bao gồm</span>
                    </div>
                    <div {hidden_exclusion} class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            {exclusion}
                        </div>
                    </div>

                    <div class="gdlr-core-pbf-element title_detail">
                        <i class="fa fa-comments-o"></i> <span>Bình luận</span>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            <div class="fb-comments" data-href="{link}" data-width="100%" data-numposts="5"></div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .ma_san_pham_tiep_thi{
        position: fixed;
        bottom: -20px;
        background: #ffffff;
        z-index: 1;
        text-align: center;
        width: 100%;
        left: 0px;
        padding: 10px 10px;
        border-top: 1px solid #438ada;
        font-size: 18px;
        font-weight: bold;
        color: red;
    }
</style>