<body class="page-template-default page page-id-4807 gdlr-core-body tourmaster-body traveltour-body traveltour-body-front traveltour-full  traveltour-with-sticky-navigation gdlr-core-link-to-lightbox">
<div id="fb-root"></div><script>window.fbAsyncInit = function() {
        FB.init({
            appId : '487430091415856',
            status : true, // check login status
            cookie : true, // enable cookies to allow the server to access the session
            xfbml : true // parse XFBML
        });
    };
    (function() {
        var e = document.createElement('script');
        e.src = document.location.protocol + '//connect.facebook.net/vi_VN/all.js';
        e.async = true;
        document.getElementById('fb-root').appendChild(e);
    }());</script>
<div class="traveltour-mobile-header-wrap">
    <div class="traveltour-mobile-header traveltour-header-background traveltour-style-slide"
         id="traveltour-mobile-header">
        <div class="traveltour-mobile-header-container traveltour-container">
            <div class="traveltour-logo  traveltour-item-pdlr">
                <div class="traveltour-logo-inner"><a href="{SITE-NAME}"><img title="{Name}"
                                src="{Logo}"
                                alt="{Name}"/></a></div>
            </div>
            <div class="traveltour-mobile-menu-right">
                <div class="traveltour-main-menu-search" id="traveltour-mobile-top-search"><i class="fa fa-search"></i>
                </div>
                <div class="traveltour-top-search-wrap">
                    <div class="traveltour-top-search-close"></div>
                    <div class="traveltour-top-search-row">
                        <div class="traveltour-top-search-cell">
                            <form role="search" method="get" class="search-form"
                                  action="{SITE-NAME}/tim-kiem/"><input type="text" style="font-size:14px"
                                                                                          class="search-field traveltour-title-font"
                                                                                          placeholder="Nhập từ khóa tìm kiếm..."
                                                                                          value="" name="value">
                                <div class="traveltour-top-search-submit"><i class="fa fa-search"></i></div>
                                <input type="submit" class="search-submit" value="Tìm">
                                <div class="traveltour-top-search-close"><i class="fa fa-times"></i></div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="traveltour-mobile-menu"><a
                            class="traveltour-mm-menu-button traveltour-mobile-menu-button traveltour-mobile-button-hamburger-with-border"
                            href="#traveltour-mobile-menu"><i class="fa fa-bars"></i></a>
                    <div class="traveltour-mm-menu-wrap traveltour-navigation-font" id="traveltour-mobile-menu"
                         data-slide="right">
                        <ul id="menu-main-navigation" class="m-menu">
                            <li class="{trangchu_mn} menu-item menu-item-type-post_type menu-item-object-page menu-item-home menu-item-has-children menu-item-4373">
                                <a href="{SITE-NAME}">{trangchu}</a>
                            </li>
                            <li class="{tour_trong_nuoc_mn} menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-4341">
                                <a href="{SITE-NAME}/tour-du-lich-trong-nuoc/">Tour trong nước</a>
                                {danhmuc_menu}
                            </li>
                            <li class="{tour_nuoc_ngoai_mn} menu-item menu-item-type-post_type menu-item-object-page  current_page_ancestor menu-item-has-children menu-item-4716">
                                <a href="{SITE-NAME}/tour-du-lich-quoc-te/">
                                    Tour nước ngoài</a>
                                    {danhmuc_menu_quocte}
                            </li>

                            <li class="{khachsan_mn} menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-4867">
                                <a href="{SITE-NAME}/khach-san/">Khạch sạn</a>
                                {danhmuc_khachsan}
                            </li>
                            <li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-4864"><a
                                        href="http://vemaybay.azbooking.vn/">Vé máy bay</a></li>
                            <li class="{tintuc_mn} menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-4975">
                                <a href="{SITE-NAME}/cam-nang/">{tintuc}</a>
                                <ul class="sub-menu">
                                    {danhmuc_tintuc}
                                </ul>
                            </li>
                            <li class="{lienhe_mn} menu-item menu-item-type-post_type menu-item-object-page menu-item-4864"><a
                                        href="{SITE-NAME}/info/lien-he.html">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>