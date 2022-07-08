<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/14
  Time: 14:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crispy Kitchen Menu</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">

    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">

    <link href="/static/css/css2.css" rel="stylesheet">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">

    <link href="/static/css/bootstrap-icons.css" rel="stylesheet">

    <link href="/static/css/tooplate-crispy-kitchen.css" rel="stylesheet">


</head>

<body>

<nav class="navbar navbar-expand-lg bg-white shadow-lg">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <a class="navbar-brand" href="">
            新东方网络课程
        </a>

<%--        <div class="d-lg-none">--%>
<%--            <button type="button" class="custom-btn btn btn-danger" data-bs-toggle="modal" data-bs-target="#BookingModal">注册</button>--%>
<%--        </div>--%>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link" href="toindex">主页</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="toprimary?ctype=小学">小学</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="tomindle?ctype=中学">中学</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="tohight?ctype=大学">大学</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="contact.html">联系</a>
                </li>
            </ul>
        </div>

        <ul class="nav navbar-nav navbar-right">
            <li>
                <a data-bs-toggle="modal" data-bs-target="#BookingModal">
                    注册
                </a>
            </li>
            <li style="margin-left: 5px">
                <a id="userName" data-bs-toggle="modal" data-bs-target="#BookingModal1">
                    登录
                </a>
            </li>
            <li style="margin-left: 5px">
                <a href="javascript:Order()">
                    我的订单
                </a>
            </li>
            <li style="margin-left: 5px">
                <a href="logout">
                    退出登录
                </a>
            </li>
        </ul>


    </div>
</nav>

<main>

    <header class="site-header site-menu-header">
        <div class="container">
            <div class="row">

                <div class="col-lg-10 col-12 mx-auto">
                    <h1 class="text-white">中学</h1>

                    <strong class="text-white">中学教育对社会主义现代化建设中的物质文明建设和精神文明建设都起着至关重要的作用</strong>
                </div>

            </div>
        </div>

        <div class="overlay"></div>
    </header>

    <section class="menu section-padding">
        <div class="container">
            <div class="row" id="yuwen">

                <div class="col-12">
                    <h2 class="mb-lg-5 mb-4">Breakfast Menu</h2>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <img src="/static/picture/brett-jordan-8xt8-HIFqc8-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Fresh Start</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>24.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">4.4/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">128 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <img src="/static/picture/lucas-swennen-1W_MyJSRLuQ-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Baked Creamy</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>16.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">64 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <img src="/static/picture/louis-hansel-dphM2U1xq0U-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Burger Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>24.50</span>

                            <del class="ms-4"><small>$</small>36.50</del>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">32 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="menu section-padding bg-white">
        <div class="container">
            <div class="row" id="shuxue">

                <div class="col-12">
                    <h2 class="mb-lg-5 mb-4">Lunch Menu</h2>
                </div>

                <div class="col-lg-6 col-12">
                    <div class="menu-thumb">
                        <img src="/static/picture/louis-hansel-cH5IPjaAYyo-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Super Steak Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>32.75</span>

                            <del class="ms-4"><small>$</small>55</del>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">4.2/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">66 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-12">
                    <div class="menu-thumb">
                        <img src="/static/picture/louis-hansel-rheOvfxOlOA-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Bread &amp; Steak Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>42.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">84 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="menu section-padding">
        <div class="container">
            <div class="row" id="yingyu">

                <div class="col-12">
                    <h2 class="mb-lg-5 mb-4">Dinner Menu</h2>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <img src="static/picture/farhad-ibrahimzade-ZipYER3NLhY-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Seafood Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>65.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">4.4/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">102 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <img src="static/picture/keriliwi-c3mFafsFz2w-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Premium Steak</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>74.25</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">56 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <img src="static/picture/farhad-ibrahimzade-isHUj3N0194-unsplash.jpg" class="img-fluid menu-image" alt="">

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Salmon Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>60</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">76 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</main>

<footer class="site-footer section-padding">

    <div class="container">

        <div class="row">

            <div class="col-12">
                <h4 class="text-white mb-4 me-5">Crispy Kitchen</h4>
            </div>

            <div class="col-lg-4 col-md-7 col-xs-12 tooplate-mt30">
                <h6 class="text-white mb-lg-4 mb-3">Location</h6>

                <p>121 Einstein Loop N, Bronx, NY 10475, United States</p>

                <a href="javascript:;" class="custom-btn btn btn-dark mt-2">Directions</a>
            </div>

            <div class="col-lg-4 col-md-5 col-xs-12 tooplate-mt30">
                <h6 class="text-white mb-lg-4 mb-3">Opening Hours</h6>

                <p class="mb-2">Monday - Friday</p>

                <p>10:00 AM - 08:00 PM</p>

                <p>Tel: <a href="tel: 010-02-0340" class="tel-link">010-02-0340</a></p>
            </div>

            <div class="col-lg-4 col-md-6 col-xs-12 tooplate-mt30">
                <h6 class="text-white mb-lg-4 mb-3">Social</h6>

                <ul class="social-icon">
                    <li><a href="#" class="social-icon-link bi-facebook"></a></li>

                    <li><a href="#" class="social-icon-link bi-instagram"></a></li>

                    <li><a href="#" class="social-icon-link bi-twitter"></a></li>

                    <li><a href="#" class="social-icon-link bi-youtube"></a></li>
                </ul>

                <p class="copyright-text tooplate-mt60">Copyright &copy; 2022.Company name All rights reserved.<a target="_blank" href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                </p>

            </div>

        </div><!-- row ending -->

    </div><!-- container ending -->

</footer>

<!-- 注册Modal -->
<div class="modal fade" id="BookingModal" tabindex="-1" aria-labelledby="BookingModal" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="mb-0">用户注册信息</h3>

                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body d-flex flex-column justify-content-center">
                <div class="booking">

                    <form class="booking-form row" role="form" action="#" method="post">
                        <div class="col-lg-6 col-12">
                            <label for="uname" class="form-label">用户名</label>

                            <input type="text" name="uname" id="uname" class="form-control" placeholder="用户名" required="">
                        </div>

                        <div class="col-lg-6 col-12">
                            <label for="uemail" class="form-label">Email 地址</label>

                            <input type="email" name="uemail" id="uemail" pattern="[^ @]*@[^ @]*" class="form-control" placeholder="你的Emial地址" required="">
                        </div>

                        <div class="col-lg-6 col-12">
                            <label for="utel" class="form-label">手机号码</label>

                            <input type="telephone" name="utel" id="utel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" class="form-control" placeholder="123-456-7890">
                        </div>

                        <div class="col-lg-6 col-12">
                            <label for="upass" class="form-label">密码</label>

                            <input type="text" name="upass" id="upass" class="form-control" placeholder="密码">
                        </div>

                        <div class="col-12">
                            <label for="umessage" class="form-label">自我介绍</label>
                            <textarea class="form-control" rows="4" id="umessage" name="umessage" placeholder=""></textarea>
                        </div>

                        <div class="col-lg-4 col-12 ms-auto">
                            <button id="btn_register" class="form-control">注册</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>
<!-- 登录Modal -->
<div class="modal fade" id="BookingModal1" tabindex="-1" aria-labelledby="BookingModal1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="mb-0">登录</h3>

                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>

            <div class="modal-body d-flex flex-column justify-content-center">
                <div class="booking">

                    <form class="booking-form row" role="form" action="login" method="post">
                        <div class="col-lg-6 col-12">
                            <label for="uname" class="form-label">用户名</label>
                            <input type="text" name="uname" id="name" class="form-control" placeholder="用户名" required="">
                        </div>

                        <div class="col-lg-6 col-12">
                            <label for="upass" class="form-label">密码</label>
                            <input type="text" name="upass" id="pass" class="form-control" placeholder="密码">
                        </div>

                        <div class="col-lg-4 col-12 ms-auto">
                            <button id="btn_login" class="form-control">登录</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer"></div>
        </div>
    </div>
</div>


<!-- JAVASCRIPT FILES -->
<script src="/static/js/jquery.min.js"></script>
<script src="/static/js/bootstrap.bundle.min.js"></script>
<script src="/static/js/custom.js"></script>

<script>
    $(function () {

        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            $("#userName").val(uname);
            $("#userName").html(uname);
        }

        var s="${ctype}";
        // alert(s)

        function loadxueke(ctype,cname) {

            let name=cname;
            $.ajax({
                url: "tcourse?ctype="+ctype+"&cname="+cname,
                type: "post",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (results) {
                    var cidname="";
                    console.log(name)
                    if(name=="数学"){

                        $("#shuxue").replaceWith(" <div class='row' id='shuxue'></div>")
                        cidname="shuxue"
                    }else if(name=="语文"){
                        $("#yuwen").replaceWith(" <div class='row' id='yuwen'></div>")
                        cidname="yuwen";
                    }else {
                        $("#yingyu").replaceWith(" <div class='row' id='yingyu'></div>")
                        cidname="yingyu";
                    }

                    $("#"+cidname).append("<div class=\"col-12\" style='display: inline-block' >\n" +
                        "                    <h2 class=\"mb-lg-5 mb-4\">"+name+"</h2>\n" +
                        "<a style='float: right;' href='toprimaryall?ctype=中学&cname="+name+"'>更多<span>>></span></a>"+
                        "                </div>");

                    // console.log(data)
                    for (var i = 0; i < results.length; i++) {
                        var object = results[i];
                        var cid = object.cid
                        var cname = object.cname
                        var cprice = object.cprice
                        var cshop = object.cshop
                        var csuper = object.csuper
                        var ctype = object.ctype
                        var cphoto = object.cphoto

                        $("#"+cidname).append(
                            "<div class=\"col-lg-4 col-md-6 col-12\">\n" +
                            "                    <div class=\"menu-thumb\">\n" +
                            "                        <a href='toshop?cid="+cid+"'>\n"+
                            "                            <img class='img-fluid menu-image' src='http://localhost:8081/static/image/"+ cphoto +"'>\n" +
                            "                            </a>\n"+
                            "                        <div class=\"menu-info d-flex flex-wrap align-items-center\">\n" +
                            "                            <h4 class=\"mb-0\">"+cname+"</h4>\n" +
                            "\n" +
                            "                            <span class=\"price-tag bg-white shadow-lg ms-4\"><small>$</small>"+cprice+"</span>\n" +
                            "\n" +
                            "                            <div class=\"d-flex flex-wrap align-items-center w-100 mt-2\">\n" +
                            "                                <h6 class=\"reviews-text mb-0 me-3\">4.4/5</h6>\n" +
                            "\n" +
                            "                                <div class=\"reviews-stars\">\n" +
                            "                                    <i class=\"bi-star-fill reviews-icon\"></i>\n" +
                            "                                    <i class=\"bi-star-fill reviews-icon\"></i>\n" +
                            "                                    <i class=\"bi-star-fill reviews-icon\"></i>\n" +
                            "                                    <i class=\"bi-star-fill reviews-icon\"></i>\n" +
                            "                                    <i class=\"bi-star reviews-icon\"></i>\n" +
                            "                                </div>\n" +
                            "\n" +
                            "                                <p class=\"reviews-text mb-0 ms-4\">"+cshop+"</p>\n" +
                            "                            </div>\n" +
                            "                        </div>\n" +
                            "                    </div>\n" +
                            "                </div>")

                    }

                }
            })


        }

        loadxueke(s,"数学");
        loadxueke(s,"语文");
        loadxueke(s,"英语");

    })
    function Order() {
        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            window.location = "myOrder";

        } else {
            confirm("请先登录");
        }
    }
</script>
</body>
</html>

