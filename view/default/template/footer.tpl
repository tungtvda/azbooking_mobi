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

    $('body').on("blur", '#input_num_nguoi_lon', function () {
        returnDanhSachDoan('#input_num_nguoi_lon');
    });
    $('body').on("blur", '#input_num_tre_em', function () {
        returnDanhSachDoan('#input_num_tre_em');
    });
    $('body').on("blur", '#input_num_tre_em_5', function () {
        returnDanhSachDoan('#input_num_tre_em_5');
    });
    function returnDanhSachDoan(id_field){
        var value=$(id_field).val();
        var id=$(id_field).attr('id_title');
        var name_1=$('#input_num_nguoi_lon').attr('name_title');
        var name_2=$('#input_num_tre_em').attr('name_title');
        var name_3=$('#input_num_tre_em_5').attr('name_title');
        if(value==''){
            if(id==1){
                $(id_field).val(1);
            }
            if(id==2||id==3){
                $(id_field).val(0);
            }
        }
        if(value==0&&id==1){
            $(id_field).val(1);
        }
        var numbe_1=parseInt($('#input_num_nguoi_lon').val());
        var numbe_2=parseInt($('#input_num_tre_em').val());
        var numbe_3=parseInt($('#input_num_tre_em_5').val());
        var so_cho=$('#input_so_cho').val();
        var check_show_table=true;
        var total=numbe_1+numbe_2+numbe_3;
        $('#input_total_num').val(total);
        if(so_cho!=undefined){
            so_cho=parseInt(so_cho);
            if(total>so_cho){
                check_show_table=false;
                $('#input_total_num').addClass("input-error").removeClass("valid");
                $('#error_total_num').show().html('Số người bạn vừa nhập đã vượt quá số chỗ, bạn vui lòng nhập lại số người');
            }else{
                check_show_table=true;
                $('#input_total_num').addClass("valid").removeClass("input-error");
                $('#error_total_num').hide().html('Bạn vui lòng kiểm tra lại số người');
            }
        }
        var row='';
        var stt=1;
        var price= $('#input_price').val();
        if(price===''||price===0){
            price==='Liên hệ'
        }
        var price_2= $('#input_price_2').val();
        if(price_2===''||price_2===0){
            price_2==price
        }
        var price_3= $('#input_price_3').val();
        if(price_3===''||price_3===0){
            price_3==price
        }
        var total_nguoi_lon=0;
        var ti_le_nguoi_lon='';
        if(check_show_table==true){
            $(".show_hide_table").html('');
            if(numbe_1>0){
                if(price==='Liên hệ'){
                    total_nguoi_lon='Liên hệ';
                    var price_item='Liên hệ';
                }else{
                    var price_item= price.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                    total_nguoi_lon=price*numbe_1;
                }
                if(numbe_1>1){
                    var price_in_array=$('#input_price_nguoi_lon_'+numbe_1).val();
                    if(price_in_array!=undefined){
                        if(price_in_array==='Liên hệ'){
                            total_nguoi_lon='Liên hệ'
                        }else{
                            price_item= price_in_array.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                            total_nguoi_lon=(price_in_array*numbe_1);

                            ti_le_nguoi_lon=((price-price_in_array)/price)*100;
                            ti_le_nguoi_lon = Math.round(ti_le_nguoi_lon);
                            if(ti_le_nguoi_lon!=0){
                                ti_le_nguoi_lon='(<i class="fa fa-long-arrow-down"></i>'+ti_le_nguoi_lon+'%)';
                            }else{
                                ti_le_nguoi_lon='';
                            }


                        }
                    }else{
                        var price_tu=$('#input_price_nguoi_lon_tu').val();
                        if(price_tu!=undefined){
                            if(parseInt(numbe_1)>=parseInt(price_tu)){
                                var price_in_array=$('#input_price_nguoi_lon_lon_hon_'+price_tu).val();
                                if(price_in_array==='Liên hệ'){
                                    total_nguoi_lon='Liên hệ'
                                }else{
                                    price_item= price_in_array.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                                    total_nguoi_lon=(price_in_array*numbe_1);

                                    ti_le_nguoi_lon=((price-price_in_array)/price)*100;
                                    ti_le_nguoi_lon = Math.round(ti_le_nguoi_lon);
                                    if(ti_le_nguoi_lon!=0){
                                        ti_le_nguoi_lon='(<i class="fa fa-long-arrow-down"></i>'+ti_le_nguoi_lon+'%)';
                                    }else{
                                        ti_le_nguoi_lon='';
                                    }
                                }
                            }
                        }
                    }
                }
            }
            var ti_le_tre_em_511='';
            var total_tre_em_511=0;
            if(numbe_2>0){
                if(price_2==='Liên hệ'){
                    total_tre_em_511='Liên hệ';
                    var price_item='Liên hệ';
                }else{
                    var price_item= price_2.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                    total_tre_em_511=price_2*numbe_2;
                }
                if(numbe_2>1){
                    var price_in_array=$('#input_price_tre_em_511_'+numbe_2).val();
                    if(price_in_array!=undefined){
                        if(price_in_array==='Liên hệ'){
                            total_tre_em_511='Liên hệ'
                        }else{
                            price_item= price_in_array.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                            total_tre_em_511=(price_in_array*numbe_2);

                            ti_le_tre_em_511=((price_2-price_in_array)/price_2)*100;
                            ti_le_tre_em_511 = Math.round(ti_le_tre_em_511);
                            if(ti_le_tre_em_511!=0){
                                ti_le_tre_em_511='(<i class="fa fa-long-arrow-down"></i>'+ti_le_tre_em_511+'%)';
                            }else{
                                ti_le_tre_em_511='';
                            }
                        }
                    }else{
                        var price_tu=$('#input_price_tre_em_511_tu').val();
                        if(price_tu!=undefined){
                            if(parseInt(numbe_2)>=parseInt(price_tu)){
                                var price_in_array=$('#input_price_tre_em_511_lon_hon_'+price_tu).val();
                                if(price_in_array==='Liên hệ'){
                                    total_tre_em_511='Liên hệ'
                                }else{
                                    price_item= price_in_array.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                                    total_tre_em_511=(price_in_array*numbe_2);

                                    ti_le_tre_em_511=((price_2-price_in_array)/price_2)*100;
                                    ti_le_tre_em_511 = Math.round(ti_le_tre_em_511);
                                    if(ti_le_tre_em_511!=0){
                                        ti_le_tre_em_511='(<i class="fa fa-long-arrow-down"></i>'+ti_le_tre_em_511+'%)';
                                    }else{
                                        ti_le_tre_em_511='';
                                    }
                                }
                            }
                        }
                    }
                }

            }
            var ti_le_tre_em_5='';
            var total_tre_em_5=0;
            if(numbe_3>0){
                if(price_3==='Liên hệ'){
                    total_tre_em_5='Liên hệ';
                    var price_item='Liên hệ';
                }else{
                    var price_item= price_3.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                    total_tre_em_5=price_3*numbe_3;
                }
                if(numbe_3>1){
                    var price_in_array=$('#input_price_tre_em_5_'+numbe_3).val();
                    if(price_in_array!=undefined){
                        if(price_in_array==='Liên hệ'){
                            total_tre_em_5='Liên hệ'
                        }else{
                            price_item= price_in_array.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                            total_tre_em_5=(price_in_array*numbe_3);

                            ti_le_tre_em_5=((price_3-price_in_array)/price_3)*100;
                            ti_le_tre_em_5 = Math.round(ti_le_tre_em_5);
                            if(ti_le_tre_em_5!=0){
                                ti_le_tre_em_5='(<i class="fa fa-long-arrow-down"></i>'+ti_le_tre_em_5+'%)';
                            }else{
                                ti_le_tre_em_5='';
                            }
                        }
                    }else{
                        var price_tu=$('#input_price_tre_em_5_tu').val();
                        if(price_tu!=undefined){
                            if(parseInt(numbe_3)>=parseInt(price_tu)){
                                var price_in_array=$('#input_price_tre_em_5_lon_hon_'+price_tu).val();
                                if(price_in_array==='Liên hệ'){
                                    total_tre_em_5='Liên hệ'
                                }else{
                                    price_item= price_in_array.replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                                    total_tre_em_5=(price_in_array*numbe_3);

                                    ti_le_tre_em_5=((price_3-price_in_array)/price_3)*100;
                                    ti_le_tre_em_5 = Math.round(ti_le_tre_em_5);
                                    if(ti_le_tre_em_5!=0){
                                        ti_le_tre_em_5='(<i class="fa fa-long-arrow-down"></i>'+ti_le_tre_em_5+'%)';
                                    }else{
                                        ti_le_tre_em_5='';
                                    }
                                }
                            }
                        }
                    }
                }
            }

            $(".show_hide_table").html(row);

            if(total_nguoi_lon==="Liên hệ"||total_tre_em_511==="Liên hệ"||total_tre_em_5==="Liên hệ")
            {
                $('#amount_total').html('Liên hệ');
            }else{
                var total_price=total_nguoi_lon+total_tre_em_511+total_tre_em_5;
                total_price= total_price.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1.") + ' vnđ';
                $('#amount_total').html(total_price);
            }
        }


    }
    $('body').on("click", '#submit_form_action', function () {
        var form_data = $("#submit_form").serializeArray();
        var error_free = true;
        for (var input in form_data) {
            var name_input=form_data[input]['name'];
            if (name_input != "note"&&name_input!='name_customer_sub[]'&&name_input!='email_customer[]'&&name_input!='phone_customer[]'&&name_input!='address_customer[]'&&name_input!='tuoi_customer[]'&&name_input!='httt'&&name_input!='dongia_customer[]'&&name_input!='birthday_customer[]'&&name_input!='date_passport_customer[]'&&name_input!='passport_customer[]'&&name_input!='tuoi_number_customer[]') {
                var element = $("#input_" + name_input);

                var error = $("#error_" + name_input);
                var valid = element.hasClass("valid");
                if(name_input=="ngay_khoi_hanh"){
                    var ngay_khoi_hanh= $( "#input_select_ngay_khoi_hanh option:selected" ).val();
                    if(ngay_khoi_hanh==undefined){
                        var ngay_khoi_hanh= $("#input_ngay_khoi_hanh").val();
                        if(ngay_khoi_hanh==''){
                            valid=false;
                        }else{
                            valid=true;
                        }
                    }else{
                        if(ngay_khoi_hanh==''){
                            valid=false;
                        }else{
                            valid=true;
                        }
                    }
                }
                if (valid == false) {
                    console.log(name_input);
                    element.addClass("input-error").removeClass("valid");
                    error.show();
                    error_free = false
                }


            }
        }
        if (error_free != false) {
            $('#loading').show();
            $("#submit_form").submit();
        }else{
            $('.tourmaster-tour-booking-submit-error').show();

        }

    });
    $('body').on("input", '#input_name_customer', function () {
        checkNameCustomer();
    });
    function checkNameCustomer() {
        var value = $("#input_name_customer").val();
        if (value == '') {
            var mess = 'Bạn vui lòng nhập tên khách hàng';
            showHiddenNameCustomer(0, mess);
        } else {
            var mess = '';
            showHiddenNameCustomer(1, mess);
        }
    }
    function showHiddenNameCustomer(res, mess) {
        var error_name_customner = $("#error_name_customer");
        if (res == 1) {
            error_name_customner.hide();
            $('#input_name_customer').removeClass("input-error").addClass("valid");
        }
        else {
            if (res != 0) {
                mess = res;
            }
            $('#input_name_customer').addClass("input-error").removeClass("valid");
            error_name_customner.removeClass("success-color");
            error_name_customner.addClass("error-color");
            error_name_customner.html(mess);
            error_name_customner.show();
        }
    }
    $('body').on("input", '#input_phone', function () {
        checkPhoneCustomer();
    });
    function checkPhoneCustomer() {
        var value = $("#input_phone").val();
        if (value == '') {
            var mess = 'Bạn vui lòng nhập điện thoại';
            showHiddenPhoneCustomer(0, mess);
        } else {
            var mess = '';
            var check_phone=telephoneCheck(value);
            if(check_phone==true){
                showHiddenPhoneCustomer(1, mess);
            }else{
                showHiddenPhoneCustomer(0, 'Điện thoại không đúng định dạng');
            }

        }
    }
    function showHiddenPhoneCustomer(res, mess) {
        var error_phone = $("#error_phone");
        if (res == 1) {
            error_phone.hide();
            $('#input_phone').removeClass("input-error").addClass("valid");
        }
        else {
            if (res != 0) {
                mess = res;
            }
            $('#input_phone').addClass("input-error").removeClass("valid");
            error_phone.removeClass("success-color");
            error_phone.addClass("error-color");
            error_phone.html(mess);
            error_phone.show();
        }
    }
    $('body').on("input", '#input_email', function () {
        checkEmailCustomer();
    });

    //
    function checkEmailCustomer() {
        var value = $("#input_email").val();
        if (value != '') {
            var re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;
            var is_email = re.test(value);
            if (is_email) {
                var mess = '';
                showHiddenEmail(1, mess);
            }
            else {
                var mess = 'Email không đúng định dạng';
                showHiddenEmail(0, mess);
            }
        }
        else {
            var mess = 'Bạn vui lòng nhập email';
            showHiddenEmail(0, mess);
        }

    }
    // check mã nhân viên
    function showHiddenEmail(res, mess) {
        var email_user_error = $("#error_email");
        if (res == 1) {
            email_user_error.hide();
            $('#input_email').removeClass("input-error").addClass("valid");
        }
        else {
            $('#input_email').addClass("input-error").removeClass("valid");
            email_user_error.removeClass("success-color");
            email_user_error.addClass("error-color");
            email_user_error.html(mess);
            email_user_error.show();
        }
    }
    $('body').on("input", '#input_address', function () {
        checkAddressCustomer();
    });
    //
    function checkAddressCustomer() {
        var value = $("#input_address").val();
        if (value == '') {
            var mess = 'Bạn vui lòng nhập điện thoại';
            showHiddenAddressCustomer(0, mess);
        } else {
            var mess = '';
            showHiddenAddressCustomer(1, mess);
        }
    }
    function showHiddenAddressCustomer(res, mess) {
        var error_address = $("#error_address");
        if (res == 1) {
            error_address.hide();
            $('#input_address').removeClass("input-error").addClass("valid");
        }
        else {
            if (res != 0) {
                mess = res;
            }
            $('#input_address').addClass("input-error").removeClass("valid");
            error_address.removeClass("success-color");
            error_address.addClass("error-color");
            error_address.html(mess);
            error_address.show();
        }
    }
    function telephoneCheck(str) {
        var patt = new RegExp(/^[+]*[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$/g);
        return patt.test(str);
    }
    show_date_format();
    function show_date_format(){
        $('.datepicker').datepicker({
            format: 'dd/mm/yyyy',
            startDate: '-3d'
        });
    }
</script>

<script type='text/javascript'
        src='{SITE-NAME}/view/default/themes/js/script-core.js?ver=1.0.0'></script>
<script type="text/javascript"
        src="{SITE-NAME}/view/default/themes/js/kkcountdown.js"></script>
</body>
</html>
