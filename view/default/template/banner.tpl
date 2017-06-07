<div class="traveltour-body-outer-wrapper ">
    <div class="traveltour-body-wrapper clearfix  traveltour-with-transparent-header traveltour-with-frame">
        <div class="traveltour-header-background-transparent">

            <header class="traveltour-header-wrap traveltour-header-style-plain  traveltour-style-menu-right traveltour-sticky-navigation traveltour-style-slide">
                <div class="traveltour-header-background"></div>
            </header>
        </div>
        <div class="traveltour-page-title-wrap  traveltour-style-medium traveltour-center-align"
             style="background: url({banner_img}); background-size: 100%;">
            <div class="traveltour-header-transparent-substitute"></div>
            <div class="traveltour-page-title-overlay"></div>
            <div class="traveltour-page-title-container traveltour-container">
                <div class="traveltour-page-title-content traveltour-item-pdlr">
                    <h3 style="color: #ffffff; font-size: 20px">
                        {name_dm}</h3>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                <div class="gdlr-core-pbf-element">
                    <div class="tourmaster-tour-search-item tourmaster-item-pdlr clearfix tourmaster-style-column tourmaster-column-count-5">
                        <div class="tourmaster-tour-search-wrap ">
                            <form class="tourmaster-form-field tourmaster-with-border"
                                  action="{SITE-NAME}/tim-kiem-tour" method="GET">

                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-location"><label>Nơi
                                        khởi hành</label>
                                    <div class="tourmaster-combobox-wrap">
                                        <select name="departure" id="">
                                            <option value="">Nơi khởi hành...</option>
                                            {departure_timkiem}
                                        </select>
                                    </div>
                                </div>
                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-duration"><label>Loại
                                        tour</label>
                                    <div class="tourmaster-combobox-wrap">
                                        <select name="danhmuc_tour_1" id="DanhMuc1Id" class="awe-select">
                                            <option value="">Loại tour</option>
                                            <option value="tour_trong_nuoc" style="font-weight: bold">Tour du lịch trong
                                                nước
                                            </option>
                                            {danhmuc_1_timkiem_trongnuoc}
                                            <option value="tour_quoc_te" style="font-weight: bold">Tour du lịch quốc
                                                tế
                                            </option>
                                            {danhmuc_1_timkiem_quocte}
                                        </select>
                                    </div>
                                </div>

                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-duration"><label>Loại
                                        tour</label>
                                    <div class="tourmaster-combobox-wrap">
                                        <select name="danhmuc_tour_2" id="DanhMuc2Id" class="awe-select">
                                            <option value="">Điểm đến</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-duration"><label>Giá
                                        tiền</label>
                                    <div class="tourmaster-combobox-wrap">
                                        <select name="gia_timkiem" class="awe-select">
                                            <option value="">Giá tiền</option>
                                            {price_timkiem}
                                        </select>
                                    </div>
                                </div>

                                <div class="tourmaster-tour-search-field tourmaster-tour-search-field-duration"><label>Thời
                                        gian</label>
                                    <div class="tourmaster-combobox-wrap">
                                        <select name="thoigian_timkiem" class="awe-select">
                                            <option value="">Thời gian</option>
                                            {list_Durations}
                                        </select>
                                    </div>
                                </div>

                                <input class="tourmaster-tour-search-submit" type="submit" value="Tìm kiếm"></form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
            <div style="padding-top: 0px" class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                <p style="padding: 20px; padding-top: 0px">
                   <button class="btn_timkiem">Ẩn tìm kiếm <i class="fa fa-arrow-circle-o-down"></i></button>
                </p>
            </div>
        </div>