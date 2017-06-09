<footer>
    <div class="traveltour-footer-wrapper">
        <div class="traveltour-footer-container traveltour-container clearfix">
            <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                <div id="text-1" class="widget widget_text traveltour-widget">
                    <div class="textwidget"><img
                                src="{Logo}"
                                alt="{Name}"/>
                    </div>
                    <p><a href="{facebook}" target="_blank"><i class="fa fa-facebook" style="font-size: 18px;color: red;margin-right: 20px;"></i></a>
                        <a href="{twitter}" target="_blank"><i class="fa fa-twitter" style="font-size: 18px;color: red;margin-right: 20px;"></i></a>
                        <a href="{google}" target="_blank"><i class="fa fa-google-plus" style="font-size: 18px;color: red;margin-right: 20px;"></i></a>
                        <a href="{youtube}" target="_blank"><i class="fa fa-youtube-play" style="font-size: 18px;color: red;margin-right: 20px;"></i></a>
                        <a href="" target="_blank"><i class="fa fa-linkedin" style="font-size: 18px;color: red;margin-right: 20px;"></i></a>
                    </p>
                </div>

            </div>
            <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                <div id="tourmaster-widget-tour-category-6"
                     class="widget widget_tourmaster-widget-tour-category traveltour-widget"><h3
                            class="traveltour-widget-title"><span class="traveltour-widget-head-text">Tại sao bạn nên lựa chọn chúng tôi</span>
                    </h3><span class="clear"></span>
                    <div class="tourmaster-widget-tour-category">
                        <div id="text-11" class="widget widget_text traveltour-widget">
                            <div class="textwidget">
                                <div class="gdlr-core-widget-list-shortcode" id="gdlr-core-widget-list-0" style="text-align: left;">
                                    <ul>
                                       {tieuchi}
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="traveltour-footer-column traveltour-item-pdlr traveltour-column-20">
                <div id="text-2" class="widget widget_text traveltour-widget"><h3
                            class="traveltour-widget-title"><span
                                class="traveltour-widget-head-text">Văn phòng Hà Nội</span></h3><span class="clear"></span>
                    <div class="textwidget"><p>Địa chỉ : {Address}</p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Điện thoại : <a style="color: #0091EA" href="tel:{Phone}">{Phone}</a></p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Di dộng : <a style="color: #0091EA" href="tel:{Hotline}">{Hotline}</a></p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Fax : {Fax}</p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Email : <a style="color: #0091EA" href="mailto:{Email}">{Email}</a></p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: 20px;"></div>
                    </div>
                </div>
                <div id="text-2" class="widget widget_text traveltour-widget"><h3
                            class="traveltour-widget-title"><span
                                class="traveltour-widget-head-text">Văn phòng TP.Hồ Chí Minh</span></h3><span class="clear"></span>
                    <div class="textwidget"><p>Địa chỉ : {Address_hcm}</p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Điện thoại : <a style="color: #0091EA" href="tel:{Phone_hcm}">{Phone_hcm}</a></p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Di dộng : <a style="color: #0091EA" href="tel:{Hotline_hcm}">{Hotline_hcm}</a></p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Fax : {Fax_hcm}</p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: -13px;"></div>
                        <p>Email : <a style="color: #0091EA" href="mailto:{Email_hcm}">{Email_hcm}</a></p>
                        <div class="gdlr-core-space-shortcode" style="margin-top: 20px;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="traveltour-copyright-wrapper">
        <div class="traveltour-copyright-container traveltour-container">
            <div class="traveltour-copyright-text traveltour-item-pdlr">Copyright 2017 Azbooking.vn
            </div>
        </div>
    </div>
</footer>
</div>
</div>
<!--<script type="text/javascript" src="{SITE-NAME}/view/default/themes/js/jquery-ui.min.js"></script>-->
<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/js/datepicker.min.js?ver=1.11.4'></script>

<script>
    $("#DanhMuc1Id").change(function () {
        if ($('#DanhMuc1Id  option:selected').val() != '') {
            $.post('{SITE-NAME}/controller/default/ajax.php',
                    {
                        Tour: $('#DanhMuc1Id  option:selected').val()
                    },
                    function (data, status) {
                        $("#DanhMuc2Id").html(data);

                    });
        }
        else {
            $("#DanhMuc2Id").html('');
        }

    });
    $(".btn_timkiem").click(function () {
        $('#box_timkiem').slideToggle();
    });
</script>

<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/js/script-core.js?ver=1.0.0'></script>
<script type="text/javascript"
        src="{SITE-NAME}/view/default/themes/js/kkcountdown.js"></script>
</body>
</html>
