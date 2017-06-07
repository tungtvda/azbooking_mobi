<div class="gdlr-core-item-list  tourmaster-item-pdlr tourmaster-column-15">
    <div class="tourmaster-tour-grid tourmaster-tour-frame tourmaster-price-right-title">
        <div class="tourmaster-tour-thumbnail tourmaster-media-image"><a
                    href="{link}"><img
                        src="{img}"
                        alt="{name}"/></a>
            <div {hidden_sales} class="tourmaster-thumbnail-ribbon gdlr-core-outer-frame-element"
                                style="color: #ffffff;background-color: {backgroup};">
                <div class="tourmaster-thumbnail-ribbon-cornor"
                     style="border-right-color: rgba(70, 146, 231, 0.5);">

                </div>
                {check_sales_coundown}
            </div>
        </div>
        <div class="tourmaster-tour-content-wrap gdlr-core-skin-e-background">
            <h3 class="tourmaster-tour-title gdlr-core-skin-title"
                style="font-size: 17px;"><a
                        href="{link}">{name}</a></h3>
            <div class="tourmaster-tour-info-wrap clearfix">
                <div {show_code} class="tourmaster-tour-info tourmaster-tour-info-duration-text ">
                    <i class="fa fa-barcode"></i> Mã tour: {code}
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-duration-text ">
                    <i class="icon_clock_alt"></i> Thời gian: {durations}
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-departure-location ">
                    <i class="fa fa-plane"></i> Lịch trình: {tring_des}
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-departure-location ">
                    <i class="fa fa-calendar"></i> Khởi hành: {departure_time}
                </div>
               {so_nguoi}
            </div>
            <div class="tourmaster-tour-rating">
                <div class="price_div">
                    <div class="tourmaster-tour-price-wrap tourmaster-discount">
                        <span  class="tourmaster-tour-price">
                            <span class="tourmaster-tail" {show_sales}>{price_sales}</span>
                        </span>
                        <span class="tourmaster-tour-discount-price">{price_format}</span>
                    </div>
                </div>
                <div class="dat_tour">
                    <a  href="{link}#booking">Đặt tour</a>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        {js_coundown}
    });

    function cBack() {
        console.log('THE END - Function callback!');
    }
</script>