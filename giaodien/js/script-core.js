!function (a) {
    "use strict";
    var b = "desktop";
    "function" == typeof window.matchMedia ? (a(window).on("resize traveltour-set-display", function () {
        b = window.matchMedia("(max-width: 419px)").matches ? "mobile-portrait" : window.matchMedia("(max-width: 767px)").matches ? "mobile-landscape" : window.matchMedia("(max-width: 959px)").matches ? "tablet" : "desktop"
    }), a(window).trigger("traveltour-set-display")) : (a(window).on("resize traveltour-set-display", function () {
        b = a(window).innerWidth() <= 419 ? "mobile-portrait" : a(window).innerWidth() <= 767 ? "mobile-landscape" : a(window).innerWidth() <= 959 ? "tablet" : "desktop"
    }), a(window).trigger("traveltour-set-display"));
    var c = function (a, b, c) {
        var d;
        return function () {
            function h() {
                c || a.apply(f, g), d = null
            }

            var f = this, g = arguments;
            d ? clearTimeout(d) : c && a.apply(f, g), d = setTimeout(h, b)
        }
    }, d = function (a, b) {
        var c;
        return function () {
            function g() {
                a.apply(e, f), c = null
            }

            var e = this, f = arguments;
            c || (c = setTimeout(g, b))
        }
    }, e = function (a) {
        0 != a.length && (this.main_menu = a, this.slide_bar = this.main_menu.children(".traveltour-navigation-slide-bar"), this.slide_bar_val = {
            width: 0,
            left: 0
        }, this.slide_bar_offset = "3", this.current_menu = this.main_menu.children(".sf-menu").children(".current-menu-item, .current-menu-ancestor").children("a"), this.init())
    };
    e.prototype = {
        init: function () {
            var b = this;
            b.sf_menu_mod(), "function" == typeof a.fn.superfish && (b.main_menu.superfish({
                delay: 400,
                speed: "fast"
            }), b.sf_menu_position(), a(window).resize(c(function () {
                b.sf_menu_position()
            }, 300))), b.slide_bar.length > 0 && b.init_slidebar()
        }, sf_menu_mod: function () {
            this.main_menu.find(".sf-mega > ul").each(function () {
                var b = a("<div></div>"), c = a('<div class="sf-mega-section-wrap" ></div>'), d = 0;
                a(this).children("li").each(function () {
                    var e = parseInt(a(this).attr("data-size"));
                    d + e <= 60 ? d += e : (d = e, b.append(c), c = a('<div class="sf-mega-section-wrap" ></div>')), c.append(a('<div class="sf-mega-section" ></div>').addClass("traveltour-column-" + e).html(a('<div class="sf-mega-section-inner" ></div>').addClass(a(this).attr("class")).attr("id", a(this).attr("id")).html(a(this).html())))
                }), b.append(c), a(this).replaceWith(b.html())
            })
        }, sf_menu_position: function () {
            if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b) {
                var c = this.main_menu.find(".sf-menu > li.traveltour-normal-menu .sub-menu");
                c.css({display: "block"}).removeClass("sub-menu-right"), c.each(function () {
                    a(this).offset().left + a(this).width() > a(window).width() && a(this).addClass("sub-menu-right")
                }), c.css({display: "none"}), this.main_menu.find(".sf-menu > li.traveltour-mega-menu .sf-mega").each(function () {
                    a(this).hasClass("sf-mega-full") || (a(this).css({display: "block"}), a(this).css({
                        right: "",
                        "margin-left": -((a(this).width() - a(this).parent().outerWidth()) / 2)
                    }), a(this).offset().left + a(this).width() > a(window).width() && a(this).css({
                        right: 0,
                        "margin-left": ""
                    }), a(this).css({display: "none"}))
                })
            }
        }, init_slidebar: function () {
            var b = this;
            b.init_slidebar_pos(), a(window).load(function () {
                b.init_slidebar_pos()
            }), b.main_menu.children(".sf-menu").children("li").hover(function () {
                var c = a(this).children("a");
                c.length > 0 && b.slide_bar.animate({
                    width: c.outerWidth() + 2 * b.slide_bar_offset,
                    left: c.position().left - b.slide_bar_offset
                }, {queue: !1, duration: 250})
            }, function () {
                b.slide_bar.animate({width: b.slide_bar_val.width, left: b.slide_bar_val.left}, {
                    queue: !1,
                    duration: 250
                })
            }), a(window).on("resize", function () {
                b.init_slidebar_pos()
            }), a(window).on("traveltour-navigation-slider-bar-init", function () {
                b.current_menu = b.main_menu.children(".sf-menu").children(".current-menu-item, .current-menu-ancestor").children("a"), b.animate_slidebar_pos()
            }), a(window).on("traveltour-navigation-slider-bar-animate", function () {
                b.animate_slidebar_pos()
            })
        }, init_slidebar_pos: function () {
            if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b) {
                var a = this;
                a.current_menu.length > 0 ? a.slide_bar_val = {
                    width: a.current_menu.outerWidth() + 2 * a.slide_bar_offset,
                    left: a.current_menu.position().left - a.slide_bar_offset
                } : a.slide_bar_val = {
                    width: 0,
                    left: a.main_menu.children("ul").children("li:first-child").position().left
                }, a.slide_bar.css({width: a.slide_bar_val.width, left: a.slide_bar_val.left, display: "block"})
            }
        }, animate_slidebar_pos: function () {
            if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b) {
                var a = this;
                a.current_menu.length > 0 ? a.slide_bar_val = {
                    width: a.current_menu.outerWidth() + 2 * a.slide_bar_offset,
                    left: a.current_menu.position().left - a.slide_bar_offset
                } : a.slide_bar_val = {
                    width: 0,
                    left: a.main_menu.children("ul").children("li:first-child").position().left
                }, a.slide_bar.animate({width: a.slide_bar_val.width, left: a.slide_bar_val.left}, {
                    queue: !1,
                    duration: 250
                })
            }
        }
    }, a.fn.traveltour_mobile_menu = function (b) {
        var c = a(this).siblings(".traveltour-mm-menu-button"), d = {
            navbar: {title: '<span class="mmenu-custom-close" ></span>'},
            extensions: ["pagedim-black"]
        }, e = {offCanvas: {pageNodetype: ".traveltour-body-outer-wrapper"}};
        if (a(this).find('a[href="#"]').each(function () {
                var b = a(this).html();
                a('<span class="traveltour-mm-menu-blank" ></span>').html(b).insertBefore(a(this)), a(this).remove()
            }), a(this).attr("data-slide")) {
            var f = "traveltour-mmenu-" + a(this).attr("data-slide");
            a("html").addClass(f), d.offCanvas = {position: a(this).attr("data-slide")}
        }
        a(this).mmenu(d, e);
        var g = a(this).data("mmenu");
        a(this).find("a").not(".mm-next, .mm-prev").click(function () {
            g.close()
        }), a(this).find(".mmenu-custom-close").click(function () {
            g.close()
        }), g.bind("open", function (a) {
            c.addClass("traveltour-active")
        }), g.bind("close", function (a) {
            c.removeClass("traveltour-active")
        })
    };
    var f = function (a) {
        this.menu = a, this.menu_button = a.children(".traveltour-overlay-menu-icon"), this.menu_content = a.children(".traveltour-overlay-menu-content"), this.menu_close = this.menu_content.children(".traveltour-overlay-menu-close"), this.init()
    };
    f.prototype = {
        init: function () {
            var b = this, c = 0;
            b.menu_content.appendTo("body"), b.menu_content.find("ul.menu > li").each(function () {
                a(this).css("transition-delay", 150 * c + "ms"), c++
            }), b.menu_button.click(function () {
                return a(this).addClass("traveltour-active"), b.menu_content.fadeIn(200, function () {
                    a(this).addClass("traveltour-active")
                }), !1
            }), b.menu_close.click(function () {
                return b.menu_button.removeClass("traveltour-active"), b.menu_content.fadeOut(400, function () {
                    a(this).removeClass("traveltour-active")
                }), b.menu_content.find(".sub-menu").slideUp(200).removeClass("traveltour-active"), !1
            }), b.menu_content.find("a").click(function (c) {
                var d = a(this).siblings(".sub-menu");
                if (d.length > 0) {
                    if (!d.hasClass("traveltour-active")) {
                        var e = d.closest("li").siblings().find(".sub-menu.traveltour-active");
                        return e.length > 0 ? (e.removeClass("traveltour-active").slideUp(150), d.delay(150).slideDown(400, "easeOutQuart").addClass("traveltour-active")) : d.slideDown(400, "easeOutQuart").addClass("traveltour-active"), a(this).addClass("traveltour-no-preload"), !1
                    }
                    a(this).removeClass("traveltour-no-preload")
                } else b.menu_close.trigger("click")
            })
        }
    };
    var g = function (a) {
        0 != a.length && (this.prev_scroll = 0, this.side_nav = a, this.side_nav_content = a.children(), this.init())
    };
    g.prototype = {
        init: function () {
            var c = this;
            c.init_nav_bar_element(), a(window).resize(function () {
                c.init_nav_bar_element()
            }), a(window).scroll(function () {
                if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b && c.side_nav.hasClass("traveltour-allow-slide")) {
                    var d = parseInt(a("html").css("margin-top")), e = a(window).scrollTop() > c.prev_scroll;
                    if (c.prev_scroll = a(window).scrollTop(), e)c.side_nav.hasClass("traveltour-fix-bottom") || (c.side_nav.hasClass("traveltour-fix-top") ? (c.side_nav.css("top", c.side_nav.offset().top), c.side_nav.removeClass("traveltour-fix-top")) : a(window).height() + a(window).scrollTop() > c.side_nav_content.offset().top + c.side_nav_content.outerHeight() && (c.side_nav.hasClass("traveltour-fix-bottom") || (c.side_nav.addClass("traveltour-fix-bottom"), c.side_nav.css("top", "")))); else if (!c.side_nav.hasClass("traveltour-fix-top"))if (c.side_nav.hasClass("traveltour-fix-bottom")) {
                        var f = a(window).scrollTop() + (a(window).height() - d) - c.side_nav_content.outerHeight();
                        c.side_nav.css("top", f), c.side_nav.removeClass("traveltour-fix-bottom")
                    } else a(window).scrollTop() + d < c.side_nav_content.offset().top && (c.side_nav.hasClass("traveltour-fix-top") || (c.side_nav.addClass("traveltour-fix-top"), c.side_nav.css("top", "")))
                }
            })
        }, init_nav_bar_element: function () {
            if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b) {
                var c = this, d = c.side_nav_content.children(".traveltour-pos-middle").addClass("traveltour-active"), e = c.side_nav_content.children(".traveltour-pos-bottom").addClass("traveltour-active");
                c.side_nav_content.children(".traveltour-pre-spaces").remove(), a(window).height() < c.side_nav_content.height() ? c.side_nav.addClass("traveltour-allow-slide") : (c.side_nav.removeClass("traveltour-allow-slide traveltour-fix-top traveltour-fix-bottom").css("top", ""), c.side_nav.hasClass("traveltour-style-middle") && d.each(function () {
                    var b = parseInt(a(this).css("padding-top")), d = (c.side_nav.height() - (c.side_nav_content.height() - b)) / 2 - b;
                    d > 0 && a('<div class="traveltour-pre-spaces" ></div>').css("height", d).insertBefore(a(this))
                }), e.each(function () {
                    var b = c.side_nav.height() - c.side_nav_content.height();
                    b > 0 && a('<div class="traveltour-pre-spaces" ></div>').css("height", b).insertBefore(a(this))
                }))
            }
        }
    };
    var h = function () {
        this.anchor_link = a('a[href^="#"]').not('[href="#"]').filter(function () {
            return !a(this).is(".traveltour-mm-menu-button, .mm-next, .mm-prev, .mm-title") && (!a(this).parent(".description_tab, .reviews_tab").length && !a(this).closest(".woocommerce").length)
        }), this.anchor_link.length && (this.menu_anchor = a("#traveltour-main-menu, #traveltour-bullet-anchor, #tourmaster-content-navigation-item-outer"), this.home_anchor = this.menu_anchor.find("ul.sf-menu > li.current-menu-item > a, ul.sf-menu > li.current-menu-ancestor > a, .traveltour-bullet-anchor-link.current-menu-item, .tourmaster-content-navigation-tab.tourmaster-active"), this.init())
    };
    h.prototype = {
        init: function () {
            var b = this;
            b.animate_anchor(), b.scroll_section(), b.menu_anchor.filter("#traveltour-bullet-anchor").each(function () {
                a(this).css("margin-top", -b.menu_anchor.height() / 2).addClass("traveltour-init")
            });
            var c = window.location.hash;
            c && setTimeout(function () {
                var d = b.menu_anchor.find('a[href*="' + c + '"]');
                d.is(".current-menu-item, .current-menu-ancestor") || (d.addClass("current-menu-item").siblings().removeClass("current-menu-item current-menu-ancestor"), a(window).trigger("traveltour-navigation-slider-bar-init")), b.scroll_to(c, !1, 300)
            }, 500)
        }, animate_anchor: function () {
            var b = this;
            b.home_anchor.click(function () {
                if (window.location.href == this.href)return a("html, body").animate({scrollTop: 0}, {
                    duration: 1500,
                    easing: "easeOutQuart"
                }), !1
            }), b.anchor_link.click(function () {
                if (location.hostname == this.hostname && location.pathname.replace(/^\//, "") == this.pathname.replace(/^\//, ""))return b.scroll_to(this.hash, !0)
            })
        }, scroll_to: function (b, c, d) {
            if ("#traveltour-top-anchor" == b)var e = 0; else {
                var f = a(b);
                if (f.length)var e = f.offset().top
            }
            return "undefined" != typeof e ? (e -= parseInt(a("html").css("margin-top")), "undefined" != typeof window.traveltour_anchor_offset && (e -= parseInt(window.traveltour_anchor_offset)), e < 0 && (e = 0), a("html, body").animate({scrollTop: e}, {
                duration: 1500,
                easing: "easeOutQuart",
                queue: !1
            }), !1) : c ? ("#tourmaster-single-review" != b && (window.location.href = traveltour_script_core.home_url + b), !1) : void 0
        }, scroll_section: function () {
            var c = this, d = this.menu_anchor.find('a[href*="#"]').not('[href="#"]');
            if (d.length) {
                var e = a("#traveltour-page-wrapper"), f = e.find("[id]");
                f.length && (d.each(function () {
                    a(this.hash).length && a(this).attr("data-anchor", this.hash)
                }), a(window).scroll(function () {
                    if ("mobile-landscape" != b && "mobile-portrait" != b)if (c.home_anchor.length && a(window).scrollTop() < e.offset().top)c.home_anchor.each(function () {
                        a(this).hasClass("tourmaster-content-navigation-tab") ? a(this).addClass("tourmaster-active").siblings().removeClass("tourmaster-active tourmaster-slidebar-active") : a(this).hasClass("traveltour-bullet-anchor-link") ? (a(this).addClass("current-menu-item").siblings().removeClass("current-menu-item"), a(this).parent(".traveltour-bullet-anchor").attr("data-anchor-section", "traveltour-home")) : a(this).parent(".current-menu-item, .current-menu-ancestor").length || (a(this).parent().addClass("current-menu-item").siblings().removeClass("current-menu-item current-menu-ancestor"), a(window).trigger("traveltour-navigation-slider-bar-init"))
                    }); else {
                        var g = a(window).scrollTop() + a(window).height() / 2;
                        f.each(function () {
                            if ("none" != a(this).css("display") && !a(this).closest(".tourmaster-tour-booking-bar-wrap").length && !a(this).is("#tourmaster-page-wrapper")) {
                                var b = a(this).offset().top;
                                if (g > b && g < b + a(this).outerHeight()) {
                                    var c = a(this).attr("id");
                                    return d.filter('[data-anchor="#' + c + '"]').each(function () {
                                        a(this).hasClass("tourmaster-content-navigation-tab") ? (a(this).addClass("tourmaster-active").siblings().removeClass("tourmaster-active tourmaster-slidebar-active"), a(this).closest("#tourmaster-content-navigation-item-outer").trigger("tourmaster-change")) : a(this).hasClass("traveltour-bullet-anchor-link") ? (a(this).addClass("current-menu-item").siblings().removeClass("current-menu-item"), a(this).parent(".traveltour-bullet-anchor").attr("data-anchor-section", c)) : a(this).parent("li.menu-item").length && !a(this).parent("li.menu-item").is(".current-menu-item, .current-menu-ancestor") && (a(this).parent("li.menu-item").addClass("current-menu-item").siblings().removeClass("current-menu-item current-menu-ancestor"), a(window).trigger("traveltour-navigation-slider-bar-init"))
                                    }), !1
                                }
                            }
                        })
                    }
                }))
            }
        }
    };
    var i = function () {
        this.sticky_nav = a(".traveltour-with-sticky-navigation .traveltour-sticky-navigation"), this.sticky_nav_logo = this.sticky_nav.find(".traveltour-logo-inner img"), this.logo_height = 35, this.sticky_nav.length && (this.mobile_menu = a("#traveltour-mobile-header"), this.init())
    };
    i.prototype = {
        init: function () {
            var b = this;
            b.sticky_nav.hasClass("traveltour-style-fixed") ? b.style_fixed() : b.sticky_nav.hasClass("traveltour-style-slide") && b.style_slide(), b.style_mobile_slide(), b.sticky_nav.hasClass("traveltour-sticky-navigation-height") ? (window.traveltour_anchor_offset = b.sticky_nav.outerHeight(), a(window).resize(function () {
                window.traveltour_anchor_offset = b.sticky_nav.outerHeight()
            })) : window.traveltour_anchor_offset = 75, a(window).trigger("traveltour-set-sticky-navigation"), a(window).trigger("traveltour-set-sticky-mobile-navigation")
        }, style_fixed: function () {
            var c = this, d = a('<div class="traveltour-sticky-menu-placeholder" ></div>');
            a(window).on("scroll traveltour-set-sticky-navigation", function () {
                if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b) {
                    var e = parseInt(a("html").css("margin-top"));
                    if (c.sticky_nav.hasClass("traveltour-fixed-navigation"))a(window).scrollTop() + e <= d.offset().top && (c.sticky_nav.hasClass("traveltour-without-placeholder") || c.sticky_nav.height(d.height()), c.sticky_nav.insertBefore(d), c.sticky_nav.removeClass("traveltour-fixed-navigation"), d.remove(), c.sticky_nav_logo.css({
                        "padding-top": "",
                        "padding-bottom": ""
                    }), setTimeout(function () {
                        c.sticky_nav.removeClass("traveltour-animate-fixed-navigation traveltour-animate-logo-height")
                    }, 10), setTimeout(function () {
                        c.sticky_nav.css("height", ""), c.sticky_nav_logo.css({
                            height: "",
                            width: ""
                        }), a(window).trigger("traveltour-navigation-slider-bar-animate")
                    }, 200)); else if (a(window).scrollTop() + e > c.sticky_nav.offset().top) {
                        c.sticky_nav.hasClass("traveltour-without-placeholder") || d.height(c.sticky_nav.outerHeight()), d.insertAfter(c.sticky_nav), a("body").append(c.sticky_nav), c.sticky_nav.addClass("traveltour-fixed-navigation");
                        var f = (c.logo_height - c.sticky_nav_logo.height()) / 2;
                        f > 0 ? c.sticky_nav_logo.css({
                            "padding-top": f,
                            "padding-bottom": f
                        }) : (c.sticky_nav_logo.css({
                            height: c.sticky_nav_logo.height(),
                            width: "auto"
                        }), c.sticky_nav.addClass("traveltour-animate-logo-height")), setTimeout(function () {
                            c.sticky_nav.addClass("traveltour-animate-fixed-navigation")
                        }, 10), setTimeout(function () {
                            c.sticky_nav.css("height", ""), a(window).trigger("traveltour-navigation-slider-bar-animate")
                        }, 200)
                    }
                }
            })
        }, style_slide: function () {
            var c = this, d = a('<div class="traveltour-sticky-menu-placeholder" ></div>');
            a(window).on("scroll traveltour-set-sticky-navigation", function () {
                if ("mobile-landscape" != b && "mobile-portrait" != b && "tablet" != b) {
                    var e = parseInt(a("html").css("margin-top"));
                    if (c.sticky_nav.hasClass("traveltour-fixed-navigation")) {
                        if (a(window).scrollTop() + e <= d.offset().top + d.height() + 200) {
                            var g = c.sticky_nav.clone();
                            g.insertAfter(c.sticky_nav), g.slideUp(200, function () {
                                a(this).remove()
                            }), c.sticky_nav.insertBefore(d), c.sticky_nav_logo.css({
                                "padding-top": "",
                                "padding-bottom": ""
                            }), d.remove(), c.sticky_nav.removeClass("traveltour-fixed-navigation traveltour-animate-fixed-navigation"), c.sticky_nav.css("display", "block"), a(window).trigger("traveltour-navigation-slider-bar-animate")
                        }
                    } else if (a(window).scrollTop() + e > c.sticky_nav.offset().top + c.sticky_nav.outerHeight() + 200) {
                        c.sticky_nav.hasClass("traveltour-without-placeholder") || d.height(c.sticky_nav.outerHeight()), d.insertAfter(c.sticky_nav);
                        var f = (c.logo_height - c.sticky_nav_logo.height()) / 2;
                        f > 0 && c.sticky_nav_logo.css({
                            "padding-top": f,
                            "padding-bottom": f
                        }), a("body").append(c.sticky_nav), c.sticky_nav.addClass("traveltour-fixed-navigation traveltour-animate-fixed-navigation"), c.sticky_nav.css("display", "none").slideDown(200), a(window).trigger("traveltour-navigation-slider-bar-animate")
                    }
                }
            })
        }, style_mobile_slide: function () {
            var c = this, d = a('<div class="traveltour-sticky-mobile-placeholder" ></div>');
            a(window).on("scroll traveltour-set-sticky-mobile-navigation", function () {
                if ("mobile-landscape" == b || "mobile-portrait" == b || "tablet" == b) {
                    var e = parseInt(a("html").css("margin-top"));
                    if (c.mobile_menu.hasClass("traveltour-fixed-navigation")) {
                        if (a(window).scrollTop() + e <= d.offset().top + d.height() + 200) {
                            var f = c.mobile_menu.clone();
                            f.insertAfter(c.mobile_menu), f.slideUp(200, function () {
                                a(this).remove()
                            }), c.mobile_menu.insertBefore(d), d.remove(), c.mobile_menu.removeClass("traveltour-fixed-navigation"), c.mobile_menu.css("display", "block")
                        }
                    } else a(window).scrollTop() + e > c.mobile_menu.offset().top + c.mobile_menu.outerHeight() + 200 && (d.height(c.mobile_menu.outerHeight()).insertAfter(c.mobile_menu), a("body").append(c.mobile_menu), c.mobile_menu.addClass("traveltour-fixed-navigation"), c.mobile_menu.css("display", "none").slideDown(200))
                }
            })
        }
    };
    var j = function () {
        this.heading_font = a("h1, h2, h3, h4, h5, h6"), this.init()
    };
    j.prototype = {
        init: function () {
            var b = this;
            b.resize(), a(window).on("resize", d(function () {
                b.resize()
            }, 100))
        }, resize: function () {
            var c = this;
            "mobile-landscape" == b || "mobile-portrait" == b ? c.heading_font.each(function () {
                parseInt(a(this).css("font-size")) > 40 && (a(this).attr("data-orig-font") || a(this).attr("data-orig-font", a(this).css("font-size")), a(this).css("font-size", "20px"))
            }) : c.heading_font.filter("[data-orig-font]").each(function () {
                a(this).css("font-size", a(this).attr("data-orig-font"))
            })
        }
    }, a(document).ready(function () {
        new j, a("#traveltour-main-menu, #traveltour-right-menu, #traveltour-mobile-menu").each(function () {
            a(this).hasClass("traveltour-overlay-menu") ? new f(a(this)) : a(this).hasClass("traveltour-mm-menu-wrap") ? a(this).traveltour_mobile_menu() : new e(a(this))
        }), a("#traveltour-top-search, #traveltour-mobile-top-search").each(function () {
            var b = a(this).siblings(".traveltour-top-search-wrap");
            b.appendTo("body"), a(this).click(function () {
                b.fadeIn(200, function () {
                    a(this).addClass("traveltour-active")
                })
            }), b.find(".traveltour-top-search-close").click(function () {
                b.fadeOut(200, function () {
                    a(this).addClass("traveltour-active")
                })
            }), b.find(".search-submit").click(function () {
                if (0 == b.find(".search-field").val().length)return !1
            })
        }), a("#traveltour-main-menu-cart, #traveltour-mobile-menu-cart").each(function () {
            a(this).hover(function () {
                a(this).addClass("traveltour-active traveltour-animating")
            }, function () {
                var b = a(this);
                b.removeClass("traveltour-active"), setTimeout(function () {
                    b.removeClass("traveltour-animating")
                }, 400)
            })
        }), a(".traveltour-header-boxed-wrap, .traveltour-header-background-transparent, .traveltour-navigation-bar-wrap.traveltour-style-transparent").each(function () {
            var b = a(this), c = a(".traveltour-header-transparent-substitute");
            c.height(b.outerHeight()), a(window).on("load resize", function () {
                c.height(b.outerHeight())
            })
        }), a("body.error404, body.search-no-results").each(function () {
            var b = a(this).find("#traveltour-full-no-header-wrap"), c = parseInt(a(this).children(".traveltour-body-outer-wrapper").children(".traveltour-body-wrapper").css("margin-bottom")), d = (a(window).height() - b.offset().top - b.outerHeight() - c) / 2;
            d > 0 && b.css({"padding-top": d, "padding-bottom": d}), a(window).on("load resize", function () {
                b.css({
                    "padding-top": 0,
                    "padding-bottom": 0
                }), d = (a(window).height() - b.offset().top - b.outerHeight() - c) / 2, d > 0 && b.css({
                    "padding-top": d,
                    "padding-bottom": d
                })
            })
        });
        var b = a("#traveltour-footer-back-to-top-button");
        b.length && a(window).on("scroll", function () {
            a(window).scrollTop() > 300 ? b.addClass("traveltour-scrolled") : b.removeClass("traveltour-scrolled")
        }), a("body").children("#traveltour-page-preload").each(function () {
            var b = a(this), c = parseInt(b.attr("data-animation-time"));
            a("a[href]").not('[href^="#"], [target="_blank"], .gdlr-core-js, .strip').click(function (d) {
                1 != d.which || a(this).hasClass("traveltour-no-preload") || window.location.href != this.href && b.addClass("traveltour-out").fadeIn(c)
            }), a(window).load(function () {
                b.fadeOut(c)
            })
        })
    }), a(window).bind("pageshow", function (b) {
        b.originalEvent.persisted && a("body").children("#traveltour-page-preload").each(function () {
            a(this).fadeOut(400)
        })
    }), a(window).on("beforeunload", function () {
        a("body").children("#traveltour-page-preload").each(function () {
            a(this).fadeOut(400)
        })
    }), a(window).load(function () {
        a("#traveltour-fixed-footer").each(function () {
            var b = a(this), c = a('<div class="traveltour-fixed-footer-placeholder" ></div>');
            c.insertBefore(b), c.height(b.outerHeight()), a(window).resize(function () {
                c.height(b.outerHeight())
            })
        }), new g(a("#traveltour-header-side-nav")), a("body").hasClass("single-tour") || a("body").hasClass("tourmaster-template-payment") || new i, new h
    })
}(jQuery), !function (a) {
    function b() {
        a[c].glbl || (h = {
            $wndw: a(window),
            $docu: a(document),
            $html: a("html"),
            $body: a("body")
        }, e = {}, f = {}, g = {}, a.each([e, f, g], function (a, b) {
            b.add = function (a) {
                a = a.split(" ");
                for (var c = 0, d = a.length; d > c; c++)b[a[c]] = b.mm(a[c])
            }
        }), e.mm = function (a) {
            return "mm-" + a
        }, e.add("wrapper menu panels panel nopanel current highest opened subopened navbar hasnavbar title btn prev next listview nolistview inset vertical selected divider spacer hidden fullsubopen"), e.umm = function (a) {
            return "mm-" == a.slice(0, 3) && (a = a.slice(3)), a
        }, f.mm = function (a) {
            return "mm-" + a
        }, f.add("parent sub"), g.mm = function (a) {
            return a + ".mm"
        }, g.add("transitionend webkitTransitionEnd click scroll keydown mousedown mouseup touchstart touchmove touchend orientationchange"), a[c]._c = e, a[c]._d = f, a[c]._e = g, a[c].glbl = h)
    }

    var c = "mmenu", d = "5.6.1";
    if (!(a[c] && a[c].version > d)) {
        a[c] = function (a, b, c) {
            this.$menu = a, this._api = ["bind", "init", "update", "setSelected", "getInstance", "openPanel", "closePanel", "closeAllPanels"], this.opts = b, this.conf = c, this.vars = {}, this.cbck = {}, "function" == typeof this.___deprecated && this.___deprecated(), this._initMenu(), this._initAnchors();
            var d = this.$pnls.children();
            return this._initAddons(), this.init(d), "function" == typeof this.___debug && this.___debug(), this
        }, a[c].version = d, a[c].addons = {}, a[c].uniqueId = 0, a[c].defaults = {
            extensions: [],
            navbar: {add: !0, title: "Menu", titleLink: "panel"},
            onClick: {setSelected: !0},
            slidingSubmenus: !0
        }, a[c].configuration = {
            classNames: {
                divider: "Divider",
                inset: "Inset",
                panel: "Panel",
                selected: "Selected",
                spacer: "Spacer",
                vertical: "Vertical"
            }, clone: !1, openingInterval: 25, panelNodetype: "ul, ol, div", transitionDuration: 400
        }, a[c].prototype = {
            init: function (a) {
                a = a.not("." + e.nopanel), a = this._initPanels(a), this.trigger("init", a), this.trigger("update")
            }, update: function () {
                this.trigger("update")
            }, setSelected: function (a) {
                this.$menu.find("." + e.listview).children().removeClass(e.selected), a.addClass(e.selected), this.trigger("setSelected", a)
            }, openPanel: function (b) {
                var d = b.parent(), f = this;
                if (d.hasClass(e.vertical)) {
                    var g = d.parents("." + e.subopened);
                    if (g.length)return void this.openPanel(g.first());
                    d.addClass(e.opened), this.trigger("openPanel", b), this.trigger("openingPanel", b), this.trigger("openedPanel", b)
                } else {
                    if (b.hasClass(e.current))return;
                    var h = this.$pnls.children("." + e.panel), i = h.filter("." + e.current);
                    h.removeClass(e.highest).removeClass(e.current).not(b).not(i).not("." + e.vertical).addClass(e.hidden), a[c].support.csstransitions || i.addClass(e.hidden), b.hasClass(e.opened) ? b.nextAll("." + e.opened).addClass(e.highest).removeClass(e.opened).removeClass(e.subopened) : (b.addClass(e.highest), i.addClass(e.subopened)), b.removeClass(e.hidden).addClass(e.current), f.trigger("openPanel", b), setTimeout(function () {
                        b.removeClass(e.subopened).addClass(e.opened), f.trigger("openingPanel", b), f.__transitionend(b, function () {
                            f.trigger("openedPanel", b)
                        }, f.conf.transitionDuration)
                    }, this.conf.openingInterval)
                }
            }, closePanel: function (a) {
                var b = a.parent();
                b.hasClass(e.vertical) && (b.removeClass(e.opened), this.trigger("closePanel", a), this.trigger("closingPanel", a), this.trigger("closedPanel", a))
            }, closeAllPanels: function () {
                this.$menu.find("." + e.listview).children().removeClass(e.selected).filter("." + e.vertical).removeClass(e.opened);
                var a = this.$pnls.children("." + e.panel), b = a.first();
                this.$pnls.children("." + e.panel).not(b).removeClass(e.subopened).removeClass(e.opened).removeClass(e.current).removeClass(e.highest).addClass(e.hidden), this.openPanel(b)
            }, togglePanel: function (a) {
                var b = a.parent();
                b.hasClass(e.vertical) && this[b.hasClass(e.opened) ? "closePanel" : "openPanel"](a)
            }, getInstance: function () {
                return this
            }, bind: function (a, b) {
                this.cbck[a] = this.cbck[a] || [], this.cbck[a].push(b)
            }, trigger: function () {
                var a = this, b = Array.prototype.slice.call(arguments), c = b.shift();
                if (this.cbck[c])for (var d = 0, e = this.cbck[c].length; e > d; d++)this.cbck[c][d].apply(a, b)
            }, _initMenu: function () {
                this.$menu.attr("id", this.$menu.attr("id") || this.__getUniqueId()), this.conf.clone && (this.$menu = this.$menu.clone(!0), this.$menu.add(this.$menu.find("[id]")).filter("[id]").each(function () {
                    a(this).attr("id", e.mm(a(this).attr("id")))
                })), this.$menu.contents().each(function () {
                    3 == a(this)[0].nodeType && a(this).remove()
                }), this.$pnls = a('<div class="' + e.panels + '" />').append(this.$menu.children(this.conf.panelNodetype)).prependTo(this.$menu), this.$menu.parent().addClass(e.wrapper);
                var b = [e.menu];
                this.opts.slidingSubmenus || b.push(e.vertical), this.opts.extensions = this.opts.extensions.length ? "mm-" + this.opts.extensions.join(" mm-") : "", this.opts.extensions && b.push(this.opts.extensions), this.$menu.addClass(b.join(" "))
            }, _initPanels: function (b) {
                var c = this, d = this.__findAddBack(b, "ul, ol");
                this.__refactorClass(d, this.conf.classNames.inset, "inset").addClass(e.nolistview + " " + e.nopanel), d.not("." + e.nolistview).addClass(e.listview);
                var g = this.__findAddBack(b, "." + e.listview).children();
                this.__refactorClass(g, this.conf.classNames.selected, "selected"), this.__refactorClass(g, this.conf.classNames.divider, "divider"), this.__refactorClass(g, this.conf.classNames.spacer, "spacer"), this.__refactorClass(this.__findAddBack(b, "." + this.conf.classNames.panel), this.conf.classNames.panel, "panel");
                var h = a(), i = b.add(b.find("." + e.panel)).add(this.__findAddBack(b, "." + e.listview).children().children(this.conf.panelNodetype)).not("." + e.nopanel);
                this.__refactorClass(i, this.conf.classNames.vertical, "vertical"), this.opts.slidingSubmenus || i.addClass(e.vertical), i.each(function () {
                    var b = a(this), d = b;
                    b.is("ul, ol") ? (b.wrap('<div class="' + e.panel + '" />'), d = b.parent()) : d.addClass(e.panel);
                    var f = b.attr("id");
                    b.removeAttr("id"), d.attr("id", f || c.__getUniqueId()), b.hasClass(e.vertical) && (b.removeClass(c.conf.classNames.vertical), d.add(d.parent()).addClass(e.vertical)), h = h.add(d)
                });
                var j = a("." + e.panel, this.$menu);
                h.each(function (b) {
                    var d, g, h = a(this), i = h.parent(), j = i.children("a, span").first();
                    if (i.is("." + e.panels) || (i.data(f.sub, h), h.data(f.parent, i)), i.children("." + e.next).length || i.parent().is("." + e.listview) && (d = h.attr("id"), g = a('<a class="' + e.next + '" href="#' + d + '" data-target="#' + d + '" />').insertBefore(j), j.is("span") && g.addClass(e.fullsubopen)), !h.children("." + e.navbar).length && !i.hasClass(e.vertical)) {
                        i.parent().is("." + e.listview) ? i = i.closest("." + e.panel) : (j = i.closest("." + e.panel).find('a[href="#' + h.attr("id") + '"]').first(), i = j.closest("." + e.panel));
                        var k = a('<div class="' + e.navbar + '" />');
                        if (i.length) {
                            switch (d = i.attr("id"), c.opts.navbar.titleLink) {
                                case"anchor":
                                    _url = j.attr("href");
                                    break;
                                case"panel":
                                case"parent":
                                    _url = "#" + d;
                                    break;
                                default:
                                    _url = !1
                            }
                            k.append('<a class="' + e.btn + " " + e.prev + '" href="#' + d + '" data-target="#' + d + '" />').append(a('<a class="' + e.title + '"' + (_url ? ' href="' + _url + '"' : "") + " />").text(j.text())).prependTo(h), c.opts.navbar.add && h.addClass(e.hasnavbar)
                        } else c.opts.navbar.title && (k.append('<a class="' + e.title + '">' + c.opts.navbar.title + "</a>").prependTo(h), c.opts.navbar.add && h.addClass(e.hasnavbar))
                    }
                });
                var k = this.__findAddBack(b, "." + e.listview).children("." + e.selected).removeClass(e.selected).last().addClass(e.selected);
                k.add(k.parentsUntil("." + e.menu, "li")).filter("." + e.vertical).addClass(e.opened).end().each(function () {
                    a(this).parentsUntil("." + e.menu, "." + e.panel).not("." + e.vertical).first().addClass(e.opened).parentsUntil("." + e.menu, "." + e.panel).not("." + e.vertical).first().addClass(e.opened).addClass(e.subopened)
                }), k.children("." + e.panel).not("." + e.vertical).addClass(e.opened).parentsUntil("." + e.menu, "." + e.panel).not("." + e.vertical).first().addClass(e.opened).addClass(e.subopened);
                var l = j.filter("." + e.opened);
                return l.length || (l = h.first()), l.addClass(e.opened).last().addClass(e.current), h.not("." + e.vertical).not(l.last()).addClass(e.hidden).end().filter(function () {
                    return !a(this).parent().hasClass(e.panels)
                }).appendTo(this.$pnls), h
            }, _initAnchors: function () {
                var b = this;
                h.$body.on(g.click + "-oncanvas", "a[href]", function (d) {
                    var f = a(this), g = !1, h = b.$menu.find(f).length;
                    for (var i in a[c].addons)if (a[c].addons[i].clickAnchor.call(b, f, h)) {
                        g = !0;
                        break
                    }
                    var j = f.attr("href");
                    if (!g && h && j.length > 1 && "#" == j.slice(0, 1))try {
                        var k = a(j, b.$menu);
                        k.is("." + e.panel) && (g = !0, b[f.parent().hasClass(e.vertical) ? "togglePanel" : "openPanel"](k))
                    } catch (a) {
                    }
                    if (g && d.preventDefault(), !g && h && f.is("." + e.listview + " > li > a") && !f.is('[rel="external"]') && !f.is('[target="_blank"]')) {
                        b.__valueOrFn(b.opts.onClick.setSelected, f) && b.setSelected(a(d.target).parent());
                        var l = b.__valueOrFn(b.opts.onClick.preventDefault, f, "#" == j.slice(0, 1));
                        l && d.preventDefault(), b.__valueOrFn(b.opts.onClick.close, f, l) && b.close()
                    }
                })
            }, _initAddons: function () {
                var b;
                for (b in a[c].addons)a[c].addons[b].add.call(this), a[c].addons[b].add = function () {
                };
                for (b in a[c].addons)a[c].addons[b].setup.call(this)
            }, _getOriginalMenuId: function () {
                var a = this.$menu.attr("id");
                return a && a.length && this.conf.clone && (a = e.umm(a)), a
            }, __api: function () {
                var b = this, c = {};
                return a.each(this._api, function (a) {
                    var d = this;
                    c[d] = function () {
                        var a = b[d].apply(b, arguments);
                        return "undefined" == typeof a ? c : a
                    }
                }), c
            }, __valueOrFn: function (a, b, c) {
                return "function" == typeof a ? a.call(b[0]) : "undefined" == typeof a && "undefined" != typeof c ? c : a
            }, __refactorClass: function (a, b, c) {
                return a.filter("." + b).removeClass(b).addClass(e[c])
            }, __findAddBack: function (a, b) {
                return a.find(b).add(a.filter(b))
            }, __filterListItems: function (a) {
                return a.not("." + e.divider).not("." + e.hidden)
            }, __transitionend: function (a, b, c) {
                var d = !1, e = function () {
                    d || b.call(a[0]), d = !0
                };
                a.one(g.transitionend, e), a.one(g.webkitTransitionEnd, e), setTimeout(e, 1.1 * c)
            }, __getUniqueId: function () {
                return e.mm(a[c].uniqueId++)
            }
        }, a.fn[c] = function (d, e) {
            return b(), d = a.extend(!0, {}, a[c].defaults, d), e = a.extend(!0, {}, a[c].configuration, e), this.each(function () {
                var b = a(this);
                if (!b.data(c)) {
                    var f = new a[c](b, d, e);
                    f.$menu.data(c, f.__api())
                }
            })
        }, a[c].support = {
            touch: "ontouchstart" in window || navigator.msMaxTouchPoints || !1,
            csstransitions: function () {
                if ("undefined" != typeof Modernizr && "undefined" != typeof Modernizr.csstransitions)return Modernizr.csstransitions;
                var a = document.body || document.documentElement, b = a.style, c = "transition";
                if ("string" == typeof b[c])return !0;
                var d = ["Moz", "webkit", "Webkit", "Khtml", "O", "ms"];
                c = c.charAt(0).toUpperCase() + c.substr(1);
                for (var e = 0; e < d.length; e++)if ("string" == typeof b[d[e] + c])return !0;
                return !1
            }()
        };
        var e, f, g, h
    }
}(jQuery), function (a) {
    var b = "mmenu", c = "offCanvas";
    a[b].addons[c] = {
        setup: function () {
            if (this.opts[c]) {
                var e = this.opts[c], f = this.conf[c];
                g = a[b].glbl, this._api = a.merge(this._api, ["open", "close", "setPage"]), ("top" == e.position || "bottom" == e.position) && (e.zposition = "front"), "string" != typeof f.pageSelector && (f.pageSelector = "> " + f.pageNodetype), g.$allMenus = (g.$allMenus || a()).add(this.$menu), this.vars.opened = !1;
                var h = [d.offcanvas];
                "left" != e.position && h.push(d.mm(e.position)), "back" != e.zposition && h.push(d.mm(e.zposition)), this.$menu.addClass(h.join(" ")).parent().removeClass(d.wrapper), this.setPage(g.$page), this._initBlocker(), this["_initWindow_" + c](), this.$menu[f.menuInjectMethod + "To"](f.menuWrapperSelector);
                var i = window.location.hash;
                if (i) {
                    var j = this._getOriginalMenuId();
                    j && j == i.slice(1) && this.open()
                }
            }
        }, add: function () {
            d = a[b]._c, e = a[b]._d, f = a[b]._e, d.add("offcanvas slideout blocking modal background opening blocker page"), e.add("style"), f.add("resize")
        }, clickAnchor: function (a, b) {
            if (!this.opts[c])return !1;
            var d = this._getOriginalMenuId();
            return d && a.is('[href="#' + d + '"]') ? (this.open(), !0) : g.$page ? (d = g.$page.first().attr("id"), !(!d || !a.is('[href="#' + d + '"]')) && (this.close(), !0)) : void 0
        }
    }, a[b].defaults[c] = {
        position: "left",
        zposition: "back",
        blockUI: !0,
        moveBackground: !0
    }, a[b].configuration[c] = {
        pageNodetype: "div",
        pageSelector: null,
        noPageSelector: [],
        wrapPageIfNeeded: !0,
        menuWrapperSelector: "body",
        menuInjectMethod: "prepend"
    }, a[b].prototype.open = function () {
        if (!this.vars.opened) {
            var a = this;
            this._openSetup(), setTimeout(function () {
                a._openFinish()
            }, this.conf.openingInterval), this.trigger("open")
        }
    }, a[b].prototype._openSetup = function () {
        var b = this, h = this.opts[c];
        this.closeAllOthers(), g.$page.each(function () {
            a(this).data(e.style, a(this).attr("style") || "")
        }), g.$wndw.trigger(f.resize + "-" + c, [!0]);
        var i = [d.opened];
        h.blockUI && i.push(d.blocking), "modal" == h.blockUI && i.push(d.modal), h.moveBackground && i.push(d.background), "left" != h.position && i.push(d.mm(this.opts[c].position)), "back" != h.zposition && i.push(d.mm(this.opts[c].zposition)), this.opts.extensions && i.push(this.opts.extensions), g.$html.addClass(i.join(" ")), setTimeout(function () {
            b.vars.opened = !0
        }, this.conf.openingInterval), this.$menu.addClass(d.current + " " + d.opened)
    }, a[b].prototype._openFinish = function () {
        var a = this;
        this.__transitionend(g.$page.first(), function () {
            a.trigger("opened")
        }, this.conf.transitionDuration), g.$html.addClass(d.opening), this.trigger("opening")
    }, a[b].prototype.close = function () {
        if (this.vars.opened) {
            var b = this;
            this.__transitionend(g.$page.first(), function () {
                b.$menu.removeClass(d.current).removeClass(d.opened), g.$html.removeClass(d.opened).removeClass(d.blocking).removeClass(d.modal).removeClass(d.background).removeClass(d.mm(b.opts[c].position)).removeClass(d.mm(b.opts[c].zposition)), b.opts.extensions && g.$html.removeClass(b.opts.extensions), g.$page.each(function () {
                    a(this).attr("style", a(this).data(e.style))
                }), b.vars.opened = !1, b.trigger("closed")
            }, this.conf.transitionDuration), g.$html.removeClass(d.opening), this.trigger("close"), this.trigger("closing")
        }
    }, a[b].prototype.closeAllOthers = function () {
        g.$allMenus.not(this.$menu).each(function () {
            var c = a(this).data(b);
            c && c.close && c.close()
        })
    }, a[b].prototype.setPage = function (b) {
        var e = this, f = this.conf[c];
        b && b.length || (b = g.$body.find(f.pageSelector), f.noPageSelector.length && (b = b.not(f.noPageSelector.join(", "))), b.length > 1 && f.wrapPageIfNeeded && (b = b.wrapAll("<" + this.conf[c].pageNodetype + " />").parent())), b.each(function () {
            a(this).attr("id", a(this).attr("id") || e.__getUniqueId())
        }), b.addClass(d.page + " " + d.slideout), g.$page = b, this.trigger("setPage", b)
    }, a[b].prototype["_initWindow_" + c] = function () {
        g.$wndw.off(f.keydown + "-" + c).on(f.keydown + "-" + c, function (a) {
            return g.$html.hasClass(d.opened) && 9 == a.keyCode ? (a.preventDefault(), !1) : void 0
        });
        var a = 0;
        g.$wndw.off(f.resize + "-" + c).on(f.resize + "-" + c, function (b, c) {
            if (1 == g.$page.length && (c || g.$html.hasClass(d.opened))) {
                var e = g.$wndw.height();
                (c || e != a) && (a = e, g.$page.css("minHeight", e))
            }
        })
    }, a[b].prototype._initBlocker = function () {
        var b = this;
        this.opts[c].blockUI && (g.$blck || (g.$blck = a('<div id="' + d.blocker + '" class="' + d.slideout + '" />')), g.$blck.appendTo(g.$body).off(f.touchstart + "-" + c + " " + f.touchmove + "-" + c).on(f.touchstart + "-" + c + " " + f.touchmove + "-" + c, function (a) {
            a.preventDefault(), a.stopPropagation(), g.$blck.trigger(f.mousedown + "-" + c)
        }).off(f.mousedown + "-" + c).on(f.mousedown + "-" + c, function (a) {
            a.preventDefault(), g.$html.hasClass(d.modal) || (b.closeAllOthers(), b.close())
        }))
    };
    var d, e, f, g
}(jQuery), function (a) {
    var b = "mmenu", c = "scrollBugFix";
    a[b].addons[c] = {
        setup: function () {
            var e = this, h = this.opts[c];
            if (this.conf[c], g = a[b].glbl, a[b].support.touch && this.opts.offCanvas && this.opts.offCanvas.modal && ("boolean" == typeof h && (h = {fix: h}), "object" != typeof h && (h = {}), h = this.opts[c] = a.extend(!0, {}, a[b].defaults[c], h), h.fix)) {
                var i = this.$menu.attr("id"), j = !1;
                this.bind("opening", function () {
                    this.$pnls.children("." + d.current).scrollTop(0)
                }), g.$docu.on(f.touchmove, function (a) {
                    e.vars.opened && a.preventDefault()
                }), g.$body.on(f.touchstart, "#" + i + "> ." + d.panels + "> ." + d.current, function (a) {
                    e.vars.opened && (j || (j = !0, 0 === a.currentTarget.scrollTop ? a.currentTarget.scrollTop = 1 : a.currentTarget.scrollHeight === a.currentTarget.scrollTop + a.currentTarget.offsetHeight && (a.currentTarget.scrollTop -= 1), j = !1))
                }).on(f.touchmove, "#" + i + "> ." + d.panels + "> ." + d.current, function (b) {
                    e.vars.opened && a(this)[0].scrollHeight > a(this).innerHeight() && b.stopPropagation()
                }), g.$wndw.on(f.orientationchange, function () {
                    e.$pnls.children("." + d.current).scrollTop(0).css({"-webkit-overflow-scrolling": "auto"}).css({"-webkit-overflow-scrolling": "touch"})
                })
            }
        }, add: function () {
            d = a[b]._c, e = a[b]._d, f = a[b]._e
        }, clickAnchor: function (a, b) {
        }
    }, a[b].defaults[c] = {fix: !0};
    var d, e, f, g
}(jQuery), !function (a, b) {
    "use strict";
    var c = function () {
        var c = {
            bcClass: "sf-breadcrumb",
            menuClass: "sf-js-enabled",
            anchorClass: "sf-with-ul",
            menuArrowClass: "sf-arrows"
        }, d = function () {
            var b = /^(?![\w\W]*Windows Phone)[\w\W]*(iPhone|iPad|iPod)/i.test(navigator.userAgent);
            return b && a("html").css("cursor", "pointer").on("click", a.noop), b
        }(), e = function () {
            var a = document.documentElement.style;
            return "behavior" in a && "fill" in a && /iemobile/i.test(navigator.userAgent)
        }(), f = function () {
            return !!b.PointerEvent
        }(), g = function (a, b) {
            var d = c.menuClass;
            b.cssArrows && (d += " " + c.menuArrowClass), a.toggleClass(d)
        }, h = function (b, d) {
            return b.find("li." + d.pathClass).slice(0, d.pathLevels).addClass(d.hoverClass + " " + c.bcClass).filter(function () {
                return a(this).children(d.popUpSelector).hide().show().length
            }).removeClass(d.pathClass)
        }, i = function (a) {
            a.children("a").toggleClass(c.anchorClass)
        }, j = function (a) {
            var b = a.css("ms-touch-action"), c = a.css("touch-action");
            c = c || b, c = "pan-y" === c ? "auto" : "pan-y", a.css({"ms-touch-action": c, "touch-action": c})
        }, k = function (b, c) {
            var g = "li:has(" + c.popUpSelector + ")";
            a.fn.hoverIntent && !c.disableHI ? b.hoverIntent(m, n, g) : b.on("mouseenter.superfish", g, m).on("mouseleave.superfish", g, n);
            var h = "MSPointerDown.superfish";
            f && (h = "pointerdown.superfish"), d || (h += " touchend.superfish"), e && (h += " mousedown.superfish"), b.on("focusin.superfish", "li", m).on("focusout.superfish", "li", n).on(h, "a", c, l)
        }, l = function (b) {
            var c = a(this), d = q(c), e = c.siblings(b.data.popUpSelector);
            return d.onHandleTouch.call(e) === !1 ? this : void(e.length > 0 && e.is(":hidden") && (c.one("click.superfish", !1), "MSPointerDown" === b.type || "pointerdown" === b.type ? c.trigger("focus") : a.proxy(m, c.parent("li"))()))
        }, m = function () {
            var b = a(this), c = q(b);
            clearTimeout(c.sfTimer), b.siblings().superfish("hide").end().superfish("show")
        }, n = function () {
            var b = a(this), c = q(b);
            d ? a.proxy(o, b, c)() : (clearTimeout(c.sfTimer), c.sfTimer = setTimeout(a.proxy(o, b, c), c.delay))
        }, o = function (b) {
            b.retainPath = a.inArray(this[0], b.$path) > -1, this.superfish("hide"), this.parents("." + b.hoverClass).length || (b.onIdle.call(p(this)), b.$path.length && a.proxy(m, b.$path)())
        }, p = function (a) {
            return a.closest("." + c.menuClass)
        }, q = function (a) {
            return p(a).data("sf-options")
        };
        return {
            hide: function (b) {
                if (this.length) {
                    var c = this, d = q(c);
                    if (!d)return this;
                    var e = d.retainPath === !0 ? d.$path : "", f = c.find("li." + d.hoverClass).add(this).not(e).removeClass(d.hoverClass).children(d.popUpSelector), g = d.speedOut;
                    if (b && (f.show(), g = 0), d.retainPath = !1, d.onBeforeHide.call(f) === !1)return this;
                    f.stop(!0, !0).animate(d.animationOut, g, "easeOutQuad", function () {
                        var b = a(this);
                        d.onHide.call(b)
                    })
                }
                return this
            }, show: function () {
                var a = q(this);
                if (!a)return this;
                var b = this.addClass(a.hoverClass), c = b.children(a.popUpSelector);
                return a.onBeforeShow.call(c) === !1 ? this : (c.stop(!0, !0).animate(a.animation, a.speed, "easeOutQuad", function () {
                    a.onShow.call(c)
                }), this)
            }, destroy: function () {
                return this.each(function () {
                    var b, d = a(this), e = d.data("sf-options");
                    return !!e && (b = d.find(e.popUpSelector).parent("li"), clearTimeout(e.sfTimer), g(d, e), i(b), j(d), d.off(".superfish").off(".hoverIntent"), b.children(e.popUpSelector).attr("style", function (a, b) {
                            return b.replace(/display[^;]+;?/g, "")
                        }), e.$path.removeClass(e.hoverClass + " " + c.bcClass).addClass(e.pathClass), d.find("." + e.hoverClass).removeClass(e.hoverClass), e.onDestroy.call(d), void d.removeData("sf-options"))
                })
            }, init: function (b) {
                return this.each(function () {
                    var d = a(this);
                    if (d.data("sf-options"))return !1;
                    var e = a.extend({}, a.fn.superfish.defaults, b), f = d.find(e.popUpSelector).parent("li");
                    e.$path = h(d, e), d.data("sf-options", e), g(d, e), i(f), j(d), k(d, e), f.not("." + c.bcClass).superfish("hide", !0), e.onInit.call(this)
                })
            }
        }
    }();
    a.fn.superfish = function (b, d) {
        return c[b] ? c[b].apply(this, Array.prototype.slice.call(arguments, 1)) : "object" != typeof b && b ? a.error("Method " + b + " does not exist on jQuery.fn.superfish") : c.init.apply(this, arguments)
    }, a.fn.superfish.defaults = {
        popUpSelector: "ul,.sf-mega",
        hoverClass: "sfHover",
        pathClass: "overrideThisToUse",
        pathLevels: 1,
        delay: 800,
        animation: {opacity: "show"},
        animationOut: {opacity: "hide"},
        speed: "normal",
        speedOut: "fast",
        cssArrows: !0,
        disableHI: !1,
        onInit: a.noop,
        onBeforeShow: a.noop,
        onShow: a.noop,
        onBeforeHide: a.noop,
        onHide: a.noop,
        onIdle: a.noop,
        onDestroy: a.noop,
        onHandleTouch: a.noop
    }
}(jQuery, window);