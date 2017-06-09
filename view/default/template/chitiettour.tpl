<div class="tourmaster-template-wrapper">
    <div class="tourmaster-tour-booking-bar-container tourmaster-container">
        <div class="tourmaster-tour-booking-bar-container-inner">
            <div class="tourmaster-tour-booking-bar-anchor tourmaster-item-mglr"></div>
            <div class="tourmaster-tour-booking-bar-wrap tourmaster-item-mglr">
                <div class="tourmaster-tour-booking-bar-outer">
                    <div class="tourmaster-header-price tourmaster-item-mglr">
                        <div class="tourmaster-header-price-ribbon">Special Offer</div>
                        <div class="tourmaster-header-price-wrap">
                            <div class="tourmaster-header-price-overlay"></div>
                            <div class="tourmaster-tour-price-wrap tourmaster-discount"><span
                                        class="tourmaster-tour-price"><span
                                            class="tourmaster-head">From</span><span class="tourmaster-tail">$2,600</span></span><span
                                        class="tourmaster-tour-discount-price">$2,100</span><span
                                        class="fa fa-info-circle tourmaster-tour-price-info"
                                        data-rel="tipsy"
                                        title="The ininital price based on 1 adult with the lowest price in low season"></span>
                            </div>
                        </div>
                    </div>
                    <div class="tourmaster-tour-booking-bar-inner">
                        <form class="tourmaster-single-tour-booking-fields tourmaster-form-field tourmaster-with-border"
                              method="post"
                              action="https://demo.goodlayers.com/traveltour/?tourmaster-payment"
                              id="tourmaster-single-tour-booking-fields"
                              data-ajax-url="https://demo.goodlayers.com/traveltour/wp-admin/admin-ajax.php">
                            <input type="hidden" name="tour-id" value="4641"/>
                            <div class="tourmaster-tour-booking-date clearfix" data-step="1"><i
                                        class="fa fa-calendar"></i>
                                <div class="tourmaster-tour-booking-date-input">
                                    <div class="tourmaster-datepicker-wrap">
                                        <input type='text' class="form-control" id='datetimepicker4' />

                                        <script type="text/javascript">
                                            $(function () {
                                                $("#datetimepicker4").datepicker().datepicker("setDate", new Date());
                                            });
                                        </script>

                                    </div>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room clearfix" data-step="2">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-bed"></i>
                                <div class="tourmaster-tour-booking-room-input">
                                    <div class="tourmaster-combobox-wrap"><select name="tour-room">
                                            <option value="">Number Of Rooms</option>
                                            <option value="1" selected>1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select></div>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-people-container" data-step="999">
                                <div class="tourmaster-tour-booking-people tourmaster-variable clearfix"
                                     data-step="3" data-max-ppl="4"><span
                                            class="tourmaster-tour-booking-room-text">Room <span>1</span> :</span>
                                    <div class="tourmaster-tour-booking-people-input tourmaster-variable clearfix">
                                        <div class="tourmaster-combobox-wrap"><select
                                                    name="tour-adult[]">
                                                <option value="">Adult</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select></div>
                                        <div class="tourmaster-combobox-wrap"><select
                                                    name="tour-children[]">
                                                <option value="">Child</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select></div>
                                    </div>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-room-template" data-step="999">
                                <div class="tourmaster-tour-booking-people tourmaster-variable clearfix"
                                     data-max-ppl="4"><span class="tourmaster-tour-booking-room-text">Room <span>1</span> :</span>
                                    <div class="tourmaster-tour-booking-people-input tourmaster-variable clearfix">
                                        <div class="tourmaster-combobox-wrap"><select
                                                    name="tour-adult[]">
                                                <option value="">Adult</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select></div>
                                        <div class="tourmaster-combobox-wrap"><select
                                                    name="tour-children[]">
                                                <option value="">Child</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                            </select></div>
                                    </div>
                                </div>
                            </div>
                            <div class="tourmaster-tour-booking-submit" data-step="4">
                                <div class="tourmaster-tour-booking-next-sign"><span></span></div>
                                <i class="fa fa-check-circle"></i>
                                <div class="tourmaster-tour-booking-submit-input"><input
                                            class="tourmaster-button" type="submit" value="Proceed Booking"
                                            data-ask-login="proceed-without-login"/>
                                    <div class="tourmaster-tour-booking-submit-error">* Please select
                                        all required fields to proceed to the next step.
                                    </div>
                                    <div class="tourmaster-tour-booking-error-max-people">* You can
                                        select maximum 4 persons per each room.
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="tourmaster-lightbox-content-wrap"
                             data-tmlb-id="proceed-without-login">
                            <div class="tourmaster-lightbox-head"><h3 class="tourmaster-lightbox-title">
                                    Proceed Booking</h3><i class="tourmaster-lightbox-close icon_close"></i>
                            </div>
                            <div class="tourmaster-lightbox-content">
                                <div class="tourmaster-login-form2-wrap clearfix">
                                    <form class="tourmaster-login-form2 tourmaster-form-field tourmaster-with-border"
                                          method="post"
                                          action="https://demo.goodlayers.com/traveltour/wp-login.php">
                                        <h3 class="tourmaster-login-title">Already A Member?</h3>
                                        <div class="tourmaster-login-form-fields clearfix"><p
                                                    class="tourmaster-login-user"><label>Username</label>
                                                <input type="text" name="log"/></p>
                                            <p class="tourmaster-login-pass"><label>Password</label>
                                                <input type="password" name="pwd"/></p></div>
                                        <p class="tourmaster-login-submit"><input type="submit"
                                                                                  name="wp-submit"
                                                                                  class="tourmaster-button"
                                                                                  value="Sign In!"/></p>
                                        <p class="tourmaster-login-lost-password"><a
                                                    href="https://demo.goodlayers.com/traveltour/my-account/lost-password/?source=tm">Forget
                                                Password?</a></p><input type="hidden" name="rememberme"
                                                                        value="forever"/> <input
                                                type="hidden" name="redirect_to"
                                                value="https://demo.goodlayers.com/traveltour/?tourmaster-payment"/>
                                        <input type="hidden" name="source" value="tm"/></form>
                                    <div class="tourmaster-login2-right"><h3
                                                class="tourmaster-login2-right-title">Don&#039;t have an
                                            account? Create one.</h3>
                                        <div class="tourmaster-login2-right-content">
                                            <div class="tourmaster-login2-right-description">When you
                                                book with an account, you will be able to track your
                                                payment status, track the confirmation and you can also
                                                rate the tour after you finished the tour.
                                            </div>
                                            <a class="tourmaster-button"
                                               href="https://demo.goodlayers.com/traveltour/register/?redirect=payment">Sign
                                                Up</a></div>
                                        <h3 class="tourmaster-login2-right-title">Or Continue As
                                            Guest</h3> <a class="tourmaster-button"
                                                          href="https://demo.goodlayers.com/traveltour/?tourmaster-payment">Continue
                                            As Guest</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="tourmaster-booking-bottom clearfix">
                            <div class="tourmaster-save-wish-list" data-tmlb="wish-list-login"><span
                                        class="tourmaster-save-wish-list-icon-wrap"><i
                                            class="tourmaster-icon-active fa fa-heart"></i><i
                                            class="tourmaster-icon-inactive fa fa-heart-o"></i></span>Save To
                                Wish List
                            </div>
                            <div class="tourmaster-lightbox-content-wrap"
                                 data-tmlb-id="wish-list-login">
                                <div class="tourmaster-lightbox-head"><h3
                                            class="tourmaster-lightbox-title">Adding item to wishlist
                                        requires an account</h3><i
                                            class="tourmaster-lightbox-close icon_close"></i></div>
                                <div class="tourmaster-lightbox-content">
                                    <div class="tourmaster-login-form2-wrap clearfix">
                                        <form class="tourmaster-login-form2 tourmaster-form-field tourmaster-with-border"
                                              method="post"
                                              action="https://demo.goodlayers.com/traveltour/wp-login.php">
                                            <h3 class="tourmaster-login-title">Already A Member?</h3>
                                            <div class="tourmaster-login-form-fields clearfix"><p
                                                        class="tourmaster-login-user">
                                                    <label>Username</label> <input type="text" name="log"/>
                                                </p>
                                                <p class="tourmaster-login-pass"><label>Password</label>
                                                    <input type="password" name="pwd"/></p></div>
                                            <p class="tourmaster-login-submit"><input type="submit"
                                                                                      name="wp-submit"
                                                                                      class="tourmaster-button"
                                                                                      value="Sign In!"/>
                                            </p>
                                            <p class="tourmaster-login-lost-password"><a
                                                        href="https://demo.goodlayers.com/traveltour/my-account/lost-password/?source=tm">Forget
                                                    Password?</a></p><input type="hidden" name="rememberme"
                                                                            value="forever"/> <input
                                                    type="hidden" name="redirect_to"
                                                    value="/traveltour/tour/austria-6-days-in-vienna-hallstatt-salzburg/"/>
                                            <input type="hidden" name="source" value="tm"/></form>
                                        <div class="tourmaster-login2-right"><h3
                                                    class="tourmaster-login2-right-title">Don&#039;t have an
                                                account? Create one.</h3>
                                            <div class="tourmaster-login2-right-content">
                                                <div class="tourmaster-login2-right-description">When
                                                    you book with an account, you will be able to track
                                                    your payment status, track the confirmation and you
                                                    can also rate the tour after you finished the tour.
                                                </div>
                                                <a class="tourmaster-button"
                                                   href="https://demo.goodlayers.com/traveltour/register/?redirect=4641">Sign
                                                    Up</a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tourmaster-view-count"><i class="fa fa-eye"></i><span
                                        class="tourmaster-view-count-text">273</span></div>
                        </div>
                    </div>
                </div>
                <div class="tourmaster-tour-booking-bar-widget  traveltour-sidebar-area">
                    <div id="text-11" class="widget widget_text traveltour-widget">
                        <div class="textwidget">
                            <div class="gdlr-core-space-shortcode" style="margin-top: -20px;"></div>
                            <div class="gdlr-core-widget-list-shortcode" id="gdlr-core-widget-list-0">
                                <h3 class="gdlr-core-widget-list-shortcode-title">Why Book With Us?</h3>
                                <ul>
                                    <li><i class="fa fa-dollar"
                                           style="font-size: 15px;color: #ffa127;margin-right: 13px;"></i>No-hassle
                                        best price guarantee
                                    </li>
                                    <li><i class="fa fa-headphones"
                                           style="font-size: 15px;color: #ffa127;margin-right: 10px;"></i>Customer
                                        care available 24/7
                                    </li>
                                    <li><i class="fa fa-star"
                                           style="font-size: 15px;color: #ffa127;margin-right: 10px;"></i>Hand-picked
                                        Tours & Activities
                                    </li>
                                    <li><i class="fa fa-support"
                                           style="font-size: 15px;color: #ffa127;margin-right: 10px;"></i>Free
                                        Travel Insureance
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="text-12" class="widget widget_text traveltour-widget">
                        <div class="textwidget">
                            <div class="gdlr-core-space-shortcode" style="margin-top: -10px;"></div>
                            <div class="gdlr-core-widget-box-shortcode"
                                 style="color: #c9e2ff;background-image: url(https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2017/01/widget-bg.jpg);">
                                <h3 class="gdlr-core-widget-box-shortcode-title"
                                    style="color: #ffffff;">Get a Question?</h3>
                                <div class="gdlr-core-widget-box-shortcode-content"><p>Do not hesitage
                                        to give us a call. We are an expert team and we are happy to talk to
                                        you.</p>
                                    <p><i class="fa fa-phone"
                                          style="font-size: 20px;color: #ffcf2a;margin-right: 10px;"></i>
                                        <span style="font-size: 20px; color: #ffcf2a; font-weight: 600;">1.8445.3356.33</span>
                                    </p>
                                    <p><i class="fa fa-envelope-o"
                                          style="font-size: 17px;color: #ffcf2a;margin-right: 10px;"></i>
                                        <span style="font-size: 14px; color: #fff; font-weight: 600;">Help@goodlayers.com</span>
                                    </p></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tourmaster-tour-info-outer">
        <div class="tourmaster-tour-info-outer-container tourmaster-container">
            <div class="tourmaster-tour-info-wrap clearfix">
                <div class="tourmaster-tour-info tourmaster-tour-info-duration-text tourmaster-item-pdlr">
                    <i class="icon_clock_alt"></i>2 Days 1 Nights
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-availability tourmaster-item-pdlr">
                    <i class="fa fa-calendar"></i>Availability : Jan 16’ - Dec 16’
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-departure-location tourmaster-item-pdlr">
                    <i class="flaticon-takeoff-the-plane"></i>San Francisco
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-return-location tourmaster-item-pdlr">
                    <i class="flaticon-plane-landing"></i>Vienna
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-minimum-age tourmaster-item-pdlr">
                    <i class="fa fa-user"></i>Min Age : 10+
                </div>
                <div class="tourmaster-tour-info tourmaster-tour-info-maximum-people tourmaster-item-pdlr">
                    <i class="fa fa-users"></i>Max People : 34
                </div>
            </div>
        </div>
    </div>
    <div class="gdlr-core-page-builder-body">
        <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 0px 0px;">
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full">
                    <div class="gdlr-core-pbf-element">
                        <div class="tourmaster-content-navigation-item-wrap clearfix"
                             style="padding-bottom: 0px;">
                            <div class="tourmaster-content-navigation-item-outer"
                                 id="tourmaster-content-navigation-item-outer">
                                <div class="tourmaster-content-navigation-item-container tourmaster-container">
                                    <div class="tourmaster-content-navigation-item tourmaster-item-pdlr">
                                        <a class="tourmaster-content-navigation-tab tourmaster-active"
                                           href="#detail">Detail</a><a
                                                class="tourmaster-content-navigation-tab "
                                                href="#itinerary">Itinerary</a><a
                                                class="tourmaster-content-navigation-tab "
                                                href="#map">Map</a><a
                                                class="tourmaster-content-navigation-tab " href="#photos">Photos</a><a
                                                class="tourmaster-content-navigation-tab "
                                                href="#tourmaster-single-review">Reviews</a>
                                        <div class="tourmaster-content-navigation-slider"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper " style="padding: 70px 0px 30px 0px;" data-skin="Blue Icon"
             id="detail">
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr"
                             style="padding-bottom: 35px;">
                            <div class="gdlr-core-title-item-title-wrap"><h6
                                        class="gdlr-core-title-item-title gdlr-core-skin-title"
                                        style="font-size: 24px;font-weight: 600;letter-spacing: 0px;text-transform: none;">
                                                <span class="gdlr-core-title-item-left-icon" style="font-size: 18px;"><i
                                                            class="fa fa-file-text-o"></i></span>Tour Details<span
                                            class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h6></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
                            <div class="gdlr-core-text-box-item-content"><p>Maecenas sed diam eget risus
                                    varius blandit sit amet non magna. Cras mattis consectetur purus sit
                                    amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor
                                    ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta
                                    gravida at eget metus. Donec id elit non mi porta gravida at eget
                                    metus.</p>
                                <p>Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus
                                    mollis interdum. Cras mattis consectetur purus sit amet fermentum.
                                    Curabitur blandit tempus porttitor. Nulla vitae elit libero, a
                                    pharetra augue. Vivamus sagittis lacus vel augue laoreet rutrum.</p>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 19px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap"><h3
                                                    class="gdlr-core-title-item-title gdlr-core-skin-title"
                                                    style="font-size: 15px;font-weight: 500;letter-spacing: 0px;text-transform: none;">
                                                Departure & Return Location <span
                                                        class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content"><p>John F.K.
                                                International Airport (<a href="#">Google Map</a>)</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 19px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap"><h3
                                                    class="gdlr-core-title-item-title gdlr-core-skin-title"
                                                    style="font-size: 15px;font-weight: 500;letter-spacing: 0px;text-transform: none;">
                                                Departure Time<span
                                                        class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-text-box-item-content"><p>3 Hours Before
                                                Flight Time</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 19px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap"><h3
                                                    class="gdlr-core-title-item-title gdlr-core-skin-title"
                                                    style="font-size: 15px;font-weight: 500;letter-spacing: 0px;text-transform: none;">
                                                Price Includes<span
                                                        class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb "
                                         style="padding-bottom: 10px;">
                                        <ul>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Air fares</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">3 Nights Hotel Accomodation</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Tour Guide</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Entrance Fees</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">All transportation in destination location</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 19px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap"><h3
                                                    class="gdlr-core-title-item-title gdlr-core-skin-title"
                                                    style="font-size: 15px;font-weight: 500;letter-spacing: 0px;text-transform: none;">
                                                Price Excludes<span
                                                        class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb "
                                         style="padding-bottom: 10px;">
                                        <ul>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-close"
                                                            style="color: #7f7f7f;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Guide Service Fee</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-close"
                                                            style="color: #7f7f7f;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Driver Service Fee</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-close"
                                                            style="color: #7f7f7f;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Any Private Expenses</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-close"
                                                            style="color: #7f7f7f;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Room Service Fees</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 19px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr"
                                         style="padding-bottom: 0px;">
                                        <div class="gdlr-core-title-item-title-wrap"><h3
                                                    class="gdlr-core-title-item-title gdlr-core-skin-title"
                                                    style="font-size: 15px;font-weight: 500;letter-spacing: 0px;text-transform: none;">
                                                Complementaries<span
                                                        class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                            </h3></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-column gdlr-core-column-30">
                        <div class="gdlr-core-pbf-column-content-margin gdlr-core-js ">
                            <div class="gdlr-core-pbf-column-content clearfix gdlr-core-js ">
                                <div class="gdlr-core-pbf-element">
                                    <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb "
                                         style="padding-bottom: 10px;">
                                        <ul>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Umbrella</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Sunscreen</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">T-Shirt</span>
                                            </li>
                                            <li class=" gdlr-core-skin-divider"><span
                                                        class="gdlr-core-icon-list-icon-wrap"><i
                                                            class="gdlr-core-icon-list-icon fa fa-check"
                                                            style="color: #4692e7;"></i></span><span
                                                        class="gdlr-core-icon-list-content">Entrance Fees</span>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 45px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr">
                            <div class="gdlr-core-title-item-title-wrap"><h6
                                        class="gdlr-core-title-item-title gdlr-core-skin-title"
                                        style="font-size: 16px;font-weight: 600;letter-spacing: 0px;text-transform: none;">
                                    What to Expect<span
                                            class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h6></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align"
                             style="padding-bottom: 10px;">
                            <div class="gdlr-core-text-box-item-content"><p>Curabitur blandit tempus
                                    porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras
                                    mattis consectetur purus sit amet fermentum. Etiam porta sem malesuada
                                    magna mollis euismod. Lorem ipsum dolor sit amet, consectetur adipiscing
                                    elit.</p>
                                <p>Maecenas sed diam eget risus varius blandit sit amet non magna. Morbi
                                    leo risus, porta ac consectetur ac, vestibulum at eros. Nullam id
                                    dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla
                                    non metus auctor fringilla.</p></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-icon-list-item gdlr-core-item-pdlr gdlr-core-item-pdb ">
                            <ul>
                                <li class=" gdlr-core-skin-divider"><span
                                            class="gdlr-core-icon-list-icon-wrap"><i
                                                class="gdlr-core-icon-list-icon fa fa-dot-circle-o"
                                                style="color: #4692e7;"></i></span><span
                                            class="gdlr-core-icon-list-content">Ipsum Amet Mattis Pellentesque</span>
                                </li>
                                <li class=" gdlr-core-skin-divider"><span
                                            class="gdlr-core-icon-list-icon-wrap"><i
                                                class="gdlr-core-icon-list-icon fa fa-dot-circle-o"
                                                style="color: #4692e7;"></i></span><span
                                            class="gdlr-core-icon-list-content">Ultricies Vehicula Mollis Vestibulum Fringilla</span>
                                </li>
                                <li class=" gdlr-core-skin-divider"><span
                                            class="gdlr-core-icon-list-icon-wrap"><i
                                                class="gdlr-core-icon-list-icon fa fa-dot-circle-o"
                                                style="color: #4692e7;"></i></span><span
                                            class="gdlr-core-icon-list-content">Condimentum Sollicitudin Fusce Vestibulum Ultricies</span>
                                </li>
                                <li class=" gdlr-core-skin-divider"><span
                                            class="gdlr-core-icon-list-icon-wrap"><i
                                                class="gdlr-core-icon-list-icon fa fa-dot-circle-o"
                                                style="color: #4692e7;"></i></span><span
                                            class="gdlr-core-icon-list-content">Sollicitudin Consectetur Quam Ligula Vehicula</span>
                                </li>
                                <li class=" gdlr-core-skin-divider"><span
                                            class="gdlr-core-icon-list-icon-wrap"><i
                                                class="gdlr-core-icon-list-icon fa fa-dot-circle-o"
                                                style="color: #4692e7;"></i></span><span
                                            class="gdlr-core-icon-list-content">Cursus Pharetra Purus Porta Parturient</span>
                                </li>
                                <li class=" gdlr-core-skin-divider"><span
                                            class="gdlr-core-icon-list-icon-wrap"><i
                                                class="gdlr-core-icon-list-icon fa fa-dot-circle-o"
                                                style="color: #4692e7;"></i></span><span
                                            class="gdlr-core-icon-list-content">Risus Malesuada Tellus Porta Commodo</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 15px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper " style="padding: 20px 0px 30px 0px;" data-skin="Blue Icon"
             id="itinerary">
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr"
                             style="padding-bottom: 35px;">
                            <div class="gdlr-core-title-item-title-wrap"><h6
                                        class="gdlr-core-title-item-title gdlr-core-skin-title"
                                        style="font-size: 24px;font-weight: 600;letter-spacing: 0px;text-transform: none;">
                                                <span class="gdlr-core-title-item-left-icon" style="font-size: 18px;"><i
                                                            class="fa fa-bus"></i></span>Itinerary<span
                                            class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h6></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-toggle-box-item gdlr-core-item-pdlr gdlr-core-item-pdb  gdlr-core-toggle-box-style-background-title gdlr-core-left-align"
                             style="padding-bottom: 25px;">
                            <div class="gdlr-core-toggle-box-item-tab clearfix  gdlr-core-active">
                                <div class="gdlr-core-toggle-box-item-icon gdlr-core-js gdlr-core-skin-icon "></div>
                                <div class="gdlr-core-toggle-box-item-content-wrapper"><h4
                                            class="gdlr-core-toggle-box-item-title gdlr-core-js  gdlr-core-skin-e-background gdlr-core-skin-e-content">
                                        <span class="gdlr-core-head">Day 1</span> Arrive in Zürich,
                                        Switzerland</h4>
                                    <div class="gdlr-core-toggle-box-item-content"><p>We&#8217;ll meet
                                            at 4 p.m. at our hotel in Luzern (Lucerne) for a &#8220;Welcome
                                            to Switzerland&#8221; meeting. Then we&#8217;ll take a
                                            meandering evening walk through Switzerland&#8217;s most
                                            charming lakeside town, and get acquainted with one another over
                                            dinner together. Sleep in Luzern (2 nights). No bus. Walking:
                                            light.</p></div>
                                </div>
                            </div>
                            <div class="gdlr-core-toggle-box-item-tab clearfix  gdlr-core-active">
                                <div class="gdlr-core-toggle-box-item-icon gdlr-core-js gdlr-core-skin-icon "></div>
                                <div class="gdlr-core-toggle-box-item-content-wrapper"><h4
                                            class="gdlr-core-toggle-box-item-title gdlr-core-js  gdlr-core-skin-e-background gdlr-core-skin-e-content">
                                        <span class="gdlr-core-head">Day 2</span>Zürich–Biel/Bienne–Neuchâtel–Geneva
                                    </h4>
                                    <div class="gdlr-core-toggle-box-item-content"><p>Enjoy an
                                            orientation walk of Zurich’s OLD TOWN, Switzerland’s center of
                                            banking and commerce. Then, leave Zurich and start your Swiss
                                            adventure. You’ll quickly discover that Switzerland isn’t just
                                            home to the Alps, but also to some of the most beautiful lakes.
                                            First, stop at the foot of the Jura Mountains in the picturesque
                                            town of Biel, known as Bienne by French-speaking Swiss, famous
                                            for watch-making, and explore the historical center. Next, enjoy
                                            a scenic drive to lakeside Neuchâtel, dominated by the medieval
                                            cathedral and castle. Time to stroll along the lake promenade
                                            before continuing to stunning Geneva, the second-largest city in
                                            Switzerland, with its fantastic lakeside location and
                                            breathtaking panoramas of the Alps.</p></div>
                                </div>
                            </div>
                            <div class="gdlr-core-toggle-box-item-tab clearfix  gdlr-core-active">
                                <div class="gdlr-core-toggle-box-item-icon gdlr-core-js gdlr-core-skin-icon "></div>
                                <div class="gdlr-core-toggle-box-item-content-wrapper"><h4
                                            class="gdlr-core-toggle-box-item-title gdlr-core-js  gdlr-core-skin-e-background gdlr-core-skin-e-content">
                                        <span class="gdlr-core-head">Day 3</span>Enchanting Engelberg</h4>
                                    <div class="gdlr-core-toggle-box-item-content"><p>Our morning drive
                                            takes us from Swiss lakes to Swiss Army. At the once-secret
                                            Swiss army bunker at Fortress Fürigen, we&#8217;ll see part of
                                            the massive defense system designed to keep Switzerland strong
                                            and neutral. Afterward, a short drive into the countryside
                                            brings us to the charming Alpine village of Engelberg, our
                                            picturesque home for the next two days. We&#8217;ll settle into
                                            our lodge then head out for an orientation walk. Our stroll
                                            through the village will end at the Engelberg Abbey, a
                                            Benedictine monastery with its own cheese-making operation. You&#8217;ll
                                            have free time to wander back before dinner together. Sleep in
                                            Engelberg (2 nights). Bus: 1 hr. Walking: light.</p></div>
                                </div>
                            </div>
                            <div class="gdlr-core-toggle-box-item-tab clearfix  gdlr-core-active">
                                <div class="gdlr-core-toggle-box-item-icon gdlr-core-js gdlr-core-skin-icon "></div>
                                <div class="gdlr-core-toggle-box-item-content-wrapper"><h4
                                            class="gdlr-core-toggle-box-item-title gdlr-core-js  gdlr-core-skin-e-background gdlr-core-skin-e-content">
                                        <span class="gdlr-core-head">Day 4</span>Interlaken Area. Excursion
                                        to The Jungfrau Massif</h4>
                                    <div class="gdlr-core-toggle-box-item-content"><p>An unforgettable
                                            trip to the high Alpine wonderland of ice and snow is the true
                                            highlight of a visit to Switzerland. Globus Local Favorite At an
                                            amazing 11,332 feet, the JUNGFRAUJOCH is Europe’s highest
                                            railway station. Jungfrau’s 13,642-foot summit was first
                                            ascended in 1811 and in 1912 the rack railway was opened. There
                                            are lots of things to do here: enjoy the ALPINE SENSATION, THE
                                            PANORAMA 360° EXPERIENCE, and the ICE PALACE. Also receive your
                                            JUNGFRAU PASSPORT as a souvenir to take home with you. The round
                                            trip to the “Top of Europe” by MOUNTAIN TRAIN will take most of
                                            the day.</p></div>
                                </div>
                            </div>
                            <div class="gdlr-core-toggle-box-item-tab clearfix  gdlr-core-active">
                                <div class="gdlr-core-toggle-box-item-icon gdlr-core-js gdlr-core-skin-icon "></div>
                                <div class="gdlr-core-toggle-box-item-content-wrapper"><h4
                                            class="gdlr-core-toggle-box-item-title gdlr-core-js  gdlr-core-skin-e-background gdlr-core-skin-e-content">
                                        <span class="gdlr-core-head">Day 5</span>Lake Geneva and Château de
                                        Chillon</h4>
                                    <div class="gdlr-core-toggle-box-item-content"><p>It&#8217;s market
                                            day in Lausanne! Enjoy browsing and packing a picnic lunch for
                                            our 11 a.m. boat cruise on Lake Geneva. A few miles down-shore
                                            we&#8217;ll dock at Château de Chillon, where we&#8217;ll have a
                                            guided tour of this delightfully medieval castle on the water.
                                            On our way back we&#8217;ll take time to peek into the vineyards
                                            surrounding Lutry before returning to Lausanne. Boat: 2 hrs.
                                            Bus: 1 hr. Walking: moderate.</p></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 25px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"
                                 style="border-bottom-width: 2px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 30px 0px;" data-skin="Blue Icon"
             id="map">
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr"
                             style="padding-bottom: 35px;">
                            <div class="gdlr-core-title-item-title-wrap"><h6
                                        class="gdlr-core-title-item-title gdlr-core-skin-title"
                                        style="font-size: 24px;font-weight: 600;letter-spacing: 0px;text-transform: none;">
                                                <span class="gdlr-core-title-item-left-icon" style="font-size: 18px;"><i
                                                            class="fa fa-map-o"></i></span>Map<span
                                            class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h6></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align"
                             style="padding-bottom: 55px;">
                            <div class="gdlr-core-text-box-item-content">
                                <div class="">
                                    <iframe src="https://www.google.com/maps/d/embed?mid=1mGgtylMQHGAKR6HR8r8YLe5W4LU"
                                            width="100%" height="480"></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-divider-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-divider-item-normal"
                             style="padding-bottom: 25px;">
                            <div class="gdlr-core-divider-line gdlr-core-skin-divider"
                                 style="border-bottom-width: 2px;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="gdlr-core-pbf-wrapper " style="padding: 0px 0px 30px 0px;" data-skin="Blue Icon"
             id="photos">
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-bottom gdlr-core-item-pdlr"
                             style="padding-bottom: 35px;">
                            <div class="gdlr-core-title-item-title-wrap"><h6
                                        class="gdlr-core-title-item-title gdlr-core-skin-title"
                                        style="font-size: 24px;font-weight: 600;letter-spacing: 0px;text-transform: none;">
                                                <span class="gdlr-core-title-item-left-icon" style="font-size: 18px;"><i
                                                            class="icon_images"></i></span>Photos<span
                                            class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
                                </h6></div>
                        </div>
                    </div>
                    <div class="gdlr-core-pbf-element">
                        <div class="gdlr-core-gallery-item gdlr-core-item-pdb clearfix  gdlr-core-gallery-item-style-slider gdlr-core-item-pdlr ">
                            <div class="gdlr-core-flexslider flexslider gdlr-core-js-2 "
                                 data-type="slider" data-effect="default" data-nav="bullet">
                                <ul class="slides">
                                    <li>
                                        <div class="gdlr-core-gallery-list gdlr-core-media-image"><a
                                                    class="gdlr-core-ilightbox gdlr-core-js "
                                                    href="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2017/01/pexels-photo-copy-2.jpg"
                                                    data-ilightbox-group="gdlr-core-img-group-1"><img
                                                        src="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2017/01/pexels-photo-copy-2-1500x1000.jpg"
                                                        alt="" width="1500" height="1000"/><span
                                                        class="gdlr-core-image-overlay "><i
                                                            class="gdlr-core-image-overlay-icon fa fa-search gdlr-core-size-22"></i></span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="gdlr-core-gallery-list gdlr-core-media-image"><a
                                                    class="gdlr-core-ilightbox gdlr-core-js "
                                                    href="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2016/11/photo-1451337516015-6b6e9a44a8a3.jpg"
                                                    data-ilightbox-group="gdlr-core-img-group-1"><img
                                                        src="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2016/11/photo-1451337516015-6b6e9a44a8a3-1500x1000.jpg"
                                                        alt="" width="1500" height="1000"/><span
                                                        class="gdlr-core-image-overlay "><i
                                                            class="gdlr-core-image-overlay-icon fa fa-search gdlr-core-size-22"></i></span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="gdlr-core-gallery-list gdlr-core-media-image"><a
                                                    class="gdlr-core-ilightbox gdlr-core-js "
                                                    href="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2016/11/italian-landscape-mountains-nature.jpg"
                                                    data-ilightbox-group="gdlr-core-img-group-1"><img
                                                        src="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2016/11/italian-landscape-mountains-nature-1500x1000.jpg"
                                                        alt="" width="1500" height="1000"/><span
                                                        class="gdlr-core-image-overlay "><i
                                                            class="gdlr-core-image-overlay-icon fa fa-search gdlr-core-size-22"></i></span></a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="gdlr-core-gallery-list gdlr-core-media-image"><a
                                                    class="gdlr-core-ilightbox gdlr-core-js "
                                                    href="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2016/06/shutterstock_195507533.jpg"
                                                    data-caption="Map"
                                                    data-ilightbox-group="gdlr-core-img-group-1"><img
                                                        src="https://demos-pirftc7xlgm3gz2xr9zm.stackpathdns.com/traveltour/wp-content/uploads/2016/06/shutterstock_195507533-1500x1000.jpg"
                                                        alt="" width="1500" height="1000"/><span
                                                        class="gdlr-core-image-overlay "><i
                                                            class="gdlr-core-image-overlay-icon fa fa-search gdlr-core-size-22"></i></span></a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="tourmaster-single-review-container tourmaster-container">
        <div class="tourmaster-single-review-item tourmaster-item-pdlr">
            <div class="tourmaster-single-review" id="tourmaster-single-review">
                <div class="tourmaster-single-review-head clearfix">
                    <div class="tourmaster-single-review-head-info clearfix">
                        <div class="tourmaster-tour-rating"><span class="tourmaster-tour-rating-text">1 Review</span><i
                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star"></i><i class="fa fa-star"></i><i
                                    class="fa fa-star-half-o"></i></div>
                        <div class="tourmaster-single-review-filter"
                             id="tourmaster-single-review-filter">
                            <div class="tourmaster-single-review-sort-by"><span class="tourmaster-head">Sort By:</span><span
                                        class="tourmaster-sort-by-field" data-sort-by="rating">Rating</span><span
                                        class="tourmaster-sort-by-field tourmaster-active"
                                        data-sort-by="date">Date</span></div>
                            <div class="tourmaster-single-review-filter-by tourmaster-form-field tourmaster-with-border">
                                <div class="tourmaster-combobox-wrap"><select id="tourmaster-filter-by">
                                        <option value="">Filter By</option>
                                        <option value="solo">Solo</option>
                                        <option value="couple">Couple</option>
                                        <option value="family">Family</option>
                                    </select></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tourmaster-single-review-content" id="tourmaster-single-review-content"
                     data-tour-id="4641"
                     data-ajax-url="https://demo.goodlayers.com/traveltour/wp-admin/admin-ajax.php">
                    <div class="tourmaster-single-review-content-item clearfix">
                        <div class="tourmaster-single-review-user clearfix">
                            <div class="tourmaster-single-review-avatar tourmaster-media-image"><img
                                        alt=''
                                        src='https://secure.gravatar.com/avatar/3fd67cef7cae9956b8831c16a70dba11?s=85&#038;d=mm&#038;r=g'
                                        srcset="https://secure.gravatar.com/avatar/3fd67cef7cae9956b8831c16a70dba11?s=170&amp;d=mm&amp;r=g 2x"
                                        class='avatar avatar-85 photo' height='85' width='85'/></div>
                            <h4 class="tourmaster-single-review-user-name">Jenifer Janeth</h4>
                            <div class="tourmaster-single-review-user-type">Couple Traveller</div>
                        </div>
                        <div class="tourmaster-single-review-detail">
                            <div class="tourmaster-single-review-detail-description"><p>Sollicitudin
                                    Cras Commodo</p></div>
                            <div class="tourmaster-single-review-detail-rating"><i
                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                        class="fa fa-star"></i><i class="fa fa-star"></i><i
                                        class="fa fa-star-half-o"></i></div>
                            <div class="tourmaster-single-review-detail-date">January 23, 2017</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>