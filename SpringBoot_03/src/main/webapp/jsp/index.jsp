<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/13
  Time: 16:39
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

    <title>Crispy Kitchen - Bootstrap 5 HTML Template</title>

    <!-- CSS FILES -->
    <link rel="preconnect" href="https://fonts.googleapis.com/">

    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin="">

    <link href="/static/css/css2.css" rel="stylesheet">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/css/bootstrap-theme.min.css" rel="stylesheet">

    <link href="/static/css/bootstrap-icons.css" rel="stylesheet">

    <link href="/static/css/tooplate-crispy-kitchen.css" rel="stylesheet">


</head>

<body>

<nav class="navbar navbar-expand-lg bg-white shadow-lg">
    <div class="container">
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">--%>
<%--            <span class="navbar-toggler-icon"></span>--%>
<%--        </button>--%>

        <a class="navbar-brand" href="">
            新东方网络课程
        </a>

<%--        <div class="d-lg-none">--%>
<%--            <button type="button" class="custom-btn btn btn-danger" data-bs-toggle="modal" data-bs-target="#BookingModal">注册</button>--%>
<%--        </div>--%>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mx-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="toindex">主页</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="toprimary?ctype=小学">小学</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="tomindle?ctype=中学">中学</a>
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
            <a href="#" data-bs-toggle="modal" data-bs-target="#BookingModal">
                注册
            </a>
        </li>
        <li style="margin-left: 5px">
            <a href="#" id="userName" data-bs-toggle="modal" data-bs-target="#BookingModal1">
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

    <section class="hero">
        <div class="container">
            <div class="row">

                <div class="col-lg-5 col-12 m-auto">
                    <div class="heroText">

                        <h1 class="text-white mb-lg-5 mb-3">兴趣 课程</h1>

                        <div class="c-reviews my-3 d-flex flex-wrap align-items-center">
                            <div class="d-flex flex-wrap align-items-center">
                                <h4 class="text-white mb-0 me-3">4.4/5</h4>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>
                            </div>

                            <p class="text-white w-100">From <strong>1,206+</strong> Customer Reviews</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-7 col-12">
                    <div id="carouselExampleCaptions" class="carousel carousel-fade hero-carousel slide" data-bs-ride="carousel">
                        <div id="push" class="carousel-inner">

                        </div>

                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>

                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>

            </div>
        </div>

        <div class="video-wrap">
            <video autoplay="" loop="" muted="" class="custom-video" poster="">
                <source src="video/production_ID_3769033.mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
        </div>

        <div class="overlay"></div>
    </section>

    <section class="menu section-padding">
        <div class="container">
            <div class="row" id="jingpinkecheng">

                <div class="col-12">
                    <h2 class="text-center mb-lg-5 mb-4">精品课程</h2>
                </div>


                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <div class="menu-image-wrap">
                            <img src="/static/picture/brett-jordan-8xt8-HIFqc8-unsplash.jpg" class="img-fluid menu-image" alt="">

                            <span class="menu-tag bg-warning">Breakfast</span>
                        </div>

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Morning Fresh</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>12.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">4.3/5</h6>

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
                        <div class="menu-image-wrap">
                            <img src="/static/picture/farhad-ibrahimzade-MGKqxm6u2bc-unsplash.jpg" class="img-fluid menu-image" alt="">

                            <span class="menu-tag bg-warning">Lunch</span>
                        </div>

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Tooplate Soup</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>24.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">50 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <div class="menu-image-wrap">
                            <img src="/static/picture/keriliwi-c3mFafsFz2w-unsplash.jpg" class="img-fluid menu-image" alt="">

                            <span class="menu-tag bg-warning">Dinner</span>
                        </div>

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Premium Steak</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>45</span>

                            <del class="ms-4"><small>$</small>150</del>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">86 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <div class="menu-image-wrap">
                            <img src="/static/picture/farhad-ibrahimzade-ZipYER3NLhY-unsplash.jpg" class="img-fluid menu-image" alt="">

                            <span class="menu-tag bg-warning">Dinner</span>
                        </div>

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Seafood Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>86</span>

                            <del class="ms-4"><small>$</small>124</del>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">3/5</h6>

                                <div class="reviews-stars">
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star-fill reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                    <i class="bi-star reviews-icon"></i>
                                </div>

                                <p class="reviews-text mb-0 ms-4">44 Reviews</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="menu-thumb">
                        <div class="menu-image-wrap">
                            <img src="/static/picture/louis-hansel-dphM2U1xq0U-unsplash.jpg" class="img-fluid menu-image" alt="">

                            <span class="menu-tag bg-warning">Breakfast</span>
                        </div>

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Burger Set</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>20.50</span>

                            <div class="d-flex flex-wrap align-items-center w-100 mt-2">
                                <h6 class="reviews-text mb-0 me-3">4.3/5</h6>

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
                        <div class="menu-image-wrap">
                            <img src="/static/picture/farhad-ibrahimzade-D5c9ZciQy_I-unsplash.jpg" class="img-fluid menu-image" alt="">

                            <span class="menu-tag bg-warning">Lunch</span>
                        </div>

                        <div class="menu-info d-flex flex-wrap align-items-center">
                            <h4 class="mb-0">Healthy Soup</h4>

                            <span class="price-tag bg-white shadow-lg ms-4"><small>$</small>34.20</span>

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

            </div>
        </div>
    </section>

    <section class="BgImage"></section>

<%--    教师介绍--%>
    <section class="news section-padding">
        <div class="container">
            <div class="row" id="jiaoshi">

                <h2 class="text-center mb-lg-5 mb-4">教师 介绍</h2>

                <div class="col-lg-6 col-md-6 col-12">
                    <div class="news-thumb mb-4">
                        <a href="news-detail.html">
                            <img src="/static/picture/pablo-merchan-montes-Orz90t6o0e4-unsplash.jpg" class="img-fluid news-image" alt="">
                        </a>

                        <div class="news-text-info news-text-info-large">
                            <span class="category-tag bg-danger">Featured</span>

                            <h5 class="news-title mt-2">
                                <a href="news-detail.html" class="news-title-link">Healthy Lifestyle and happy living tips</a>
                            </h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6 col-12">
                    <div class="news-thumb mb-4">
                        <a href="news-detail.html">
                            <img src="/static/picture/stefan-johnson-xIFbDeGcy44-unsplash.jpg" class="img-fluid news-image" alt="">
                        </a>

                        <div class="news-text-info news-text-info-large">
                            <span class="category-tag bg-danger">Featured</span>

                            <h5 class="news-title mt-2">
                                <a href="news-detail.html" class="news-title-link">How to make a healthy meal</a>
                            </h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-12">
                    <div class="news-thumb mb-lg-0 mb-lg-4 mb-0">
                        <a href="news-detail.html">
                            <img src="/static/picture/gilles-lambert-S_LhjpfIdm4-unsplash.jpg" class="img-fluid news-image" alt="">
                        </a>

                        <div class="news-text-info">
                            <span class="category-tag me-3 bg-info">Promotions</span>

                            <strong>8 April 2022</strong>

                            <h5 class="news-title mt-2">
                                <a href="news-detail.html" class="news-title-link">Is Coconut good for you?</a>
                            </h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-12">
                    <div class="news-thumb mb-lg-0 mb-lg-4 mb-2">
                        <a href="news-detail.html">
                            <img src="/static/picture/caroline-attwood-bpPTlXWTOvg-unsplash.jpg" class="img-fluid news-image" alt="">
                        </a>

                        <div class="news-text-info">
                            <span class="category-tag">News</span>

                            <h5 class="news-title mt-2">
                                <a href="news-detail.html" class="news-title-link">Salmon Steak Noodle</a>
                            </h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 col-12">
                    <div class="news-thumb mb-4">
                        <a href="news-detail.html">
                            <img src="/static/picture/louis-hansel-GiIiRV0FjwU-unsplash.jpg" class="img-fluid news-image" alt="">
                        </a>

                        <div class="news-text-info">
                            <span class="category-tag me-3 bg-info">Meeting</span>

                            <strong>30 April 2022</strong>

                            <h5 class="news-title mt-2">
                                <a href="news-detail.html" class="news-title-link">Making a healthy salad</a>
                            </h5>
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

                    <li><a href="javascript:;" target="_blank" class="social-icon-link bi-twitter"></a></li>

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
<script src="/static/js/jquery-3.6.0.js" type="text/javascript"></script>
<script src="/static/js/bootstrap.min.js" type="text/javascript"></script>
<script src="/static/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="/static/js/custom.js" type="text/javascript"></script>
<%--<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>--%>

<%--<a href="#" style="display:none;"></a>--%>

<script>

    function shop(data) {

        console.log(data);

    }

    function Order() {
        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            window.location.href = "myOrder";

        } else {
            confirm("请先登录");
        }
    }

    $(function () {

        console.log("${user.uname}");

        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            $("#userName").val(uname);
            $("#userName").html(uname);
        }


        function loadsuper() {

            $.ajax({
                url:"getCsuper",
                contentType:"application/json;charset=utf-8",
                dataType:"json",
                success:function (results){

                    // console.log(results)
                    $("#jingpinkecheng").replaceWith("<div class='row' id='jingpinkecheng'> </div>");
                    $("#jingpinkecheng").append("<div class=\"col-12\" style='display: inline-block' >\n" +
                        "                    <h2  class=\"text-center mb-lg-5 mb-4\">精品课程</h2>\n" +
                        "                    <a style='float: right;' href='toSuper'>更多<span>>></span></a>"+
                        "                </div>");
                    for (var i = 0; i < results.length; i++) {
                        var object = results[i];
                        var cid = object.cid
                        var cname = object.cname
                        var cprice = object.cprice
                        var cshop = object.cshop
                        var csuper = object.csuper
                        var ctype = object.ctype
                        var cphoto= object.cphoto
                        $("#jingpinkecheng").append(
                            "                <div class=\"col-lg-4 col-md-6 col-12\">\n" +
                            "                    <div class=\"menu-thumb\">\n" +
                            "                        <div class=\"menu-image-wrap\">\n" +
                            "                            <a href='toshop?cid="+cid+"'>\n"+
                            "                            <img class='img-fluid menu-image' src='http://localhost:8081/static/image/"+ cphoto +"'>\n" +
                            "                            </a>\n"+
                            "\n" +
                            "                            <span class=\"menu-tag bg-warning\">"+ctype+"</span>\n" +
                            "                        </div>\n" +
                            "\n" +
                            "                        <div class=\"menu-info d-flex flex-wrap align-items-center\">\n" +
                            "                            <h4 class=\"mb-0\">"+cname+"</h4>\n" +
                            "\n" +
                            "                            <span class=\"price-tag bg-white shadow-lg ms-4\"><small>$</small>"+cprice+"</span>\n" +
                            "\n" +
                            "                            <div class=\"d-flex flex-wrap align-items-center w-100 mt-2\">\n" +
                            "                                <h6 class=\"reviews-text mb-0 me-3\">4.3/5</h6>\n" +
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

        function loadTeatcher() {

            $.ajax({
                url: "findTeacher",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (results) {
                    $("#jiaoshi").replaceWith("<div class='row' id='jiaoshi'> </div>");
                    $("#jiaoshi").append("<div class=\"col-12\" style='display: inline-block' >\n" +
                        "                    <h2  class=\"text-center mb-lg-5 mb-4\">教师介绍</h2>\n" +
                        "                    <a style='float: right;' href='toTeacher'>更多<span>>></span></a>"+
                        "                </div>");

                    for (let i = 0; i < results.length; i++) {

                        var object = results[i];
                        var tid = object.tid
                        var tname = object.tname
                        var tprofessional = object.tprofessional
                        var tscript = object.tscript

                        if (i < 2) {

                            $("#jiaoshi").append(" <div class=\"col-lg-6 col-md-6 col-12\">\n" +
                                "                    <div class=\"news-thumb mb-4\">\n" +
                                "                        <a href=\"news-detail.html\">\n" +
                                "                            <img src=\"/static/picture/pablo-merchan-montes-Orz90t6o0e4-unsplash.jpg\" class=\"img-fluid news-image\" alt=\"\">\n" +
                                "                        </a>\n" +
                                "\n" +
                                "                        <div class=\"news-text-info news-text-info-large\">\n" +
                                "                            <span class=\"category-tag bg-danger\">" + tname + "</span>\n" +
                                "\n" +
                                "                            <h5 class=\"news-title mt-2\">\n" +
                                "                                <a href=\"news-detail.html\" class=\"news-title-link\">" + tscript + "</a>\n" +
                                "                            </h5>\n" +
                                "                        </div>\n" +
                                "                    </div>\n" +
                                "                </div>");
                        } else {

                            $("#jiaoshi").append("<div class=\"col-lg-4 col-md-4 col-12\">\n" +
                                "                    <div class=\"news-thumb mb-lg-0 mb-lg-4 mb-0\">\n" +
                                "                        <a href=\"news-detail.html\">\n" +
                                "                            <img src=\"/static/picture/gilles-lambert-S_LhjpfIdm4-unsplash.jpg\" class=\"img-fluid news-image\" alt=\"\">\n" +
                                "                        </a>\n" +
                                "\n" +
                                "                        <div class=\"news-text-info\">\n" +
                                "                            <span class=\"category-tag me-3 bg-info\">" + tname + "</span>\n" +
                                "\n" +
                                "                            <strong>" + tprofessional + "</strong>\n" +
                                "\n" +
                                "                            <h5 class=\"news-title mt-2\">\n" +
                                "                                <a href=\"news-detail.html\" class=\"news-title-link\">" + tscript + "</a>\n" +
                                "                            </h5>\n" +
                                "                        </div>\n" +
                                "                    </div>\n" +
                                "                </div>");

                        }
                    }
                    console.log(results);
                }
            });
        }

        loadsuper();
        loadTeatcher();

        $("#btn_register").click(function () {

            var uname = $('#uname').val();
            var uemail = $('#uemail').val();
            var utel = $('#utel').val();
            var upass = $('#upass').val();
            var umessage = $('#umessage').val();

            $.ajax({
                url: "register",
                type: "post",
                data: JSON.stringify({
                    uname: uname,
                    uemail: uemail,
                    utel: utel,
                    upass: upass,
                    umessage: umessage
                }),
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    if (data.msg == "ok") {
                        $("#BookingModal").modal('hide');
                    }
                }
            });
        });

        function loadpush() {

            $.ajax({
                url:"getPush",
                contentType:"application/json;charset=utf-8",
                dataType:"json",
                success:function (results){

                    // console.log(results)
                    $("#push").replaceWith("<div id='push' class='carousel-inner'></div>");
                    for (var i = 0; i < results.length; i++) {
                        var object = results[i];
                        var cid = object.cid
                        var cname = object.cname
                        var cprice = object.cprice
                        var cshop = object.cshop
                        var csuper = object.csuper
                        var ctype = object.ctype
                        var cphoto= object.cphoto
                        if (i < 1) {
                            $("#push").append(
                                "<div class='carousel-item active'>\n" +
                                "<div class='carousel-image-wrap'>\n" +
                                "<img width='400px' height='400px' src='http://localhost:8081/static/image/" + cphoto + "' class='img-fluid carousel-image'>\n" +
                                "</div>\n" +

                                "<div class='carousel-caption'>\n" +
                                "<div class='d-flex align-items-center'>\n" +
                                "<h4 class='hero-text'>" + cname + "</h4>\n" +

                                "<span class='price-tag ms-4'><small>$</small>" + cprice + "</span>\n" +
                                "</div>\n" +

                                "<div class='d-flex flex-wrap align-items-center'>\n" +
                                "<h5 class='reviews-text mb-0 me-3'>4.2/5</h5>\n" +

                                "<div class='reviews-stars'>\n" +
                                "<i class='bi-star-fill reviews-icon'></i>\n" +
                                "<i class='bi-star-fill reviews-icon'></i>\n" +
                                "<i class='bi-star-fill reviews-icon'></i>\n" +
                                "<i class='bi-star-fill reviews-icon'></i>\n" +
                                "<i class='bi-star reviews-icon'></i>\n" +
                                "</div>\n" +
                                "</div>\n" +
                                "</div>\n" +
                                "</div>");
                        }
                        $("#push").append(
                            "<div class='carousel-item'>\n" +
                            "<div class='carousel-image-wrap'>\n" +
                            "<img src='http://localhost:8081/static/image/" + cphoto + "' class='img-fluid carousel-image'>\n" +
                            "</div>\n" +

                            "<div class='carousel-caption'>\n" +
                            "<div class='d-flex align-items-center'>\n" +
                            "<h4 class='hero-text'>" + cname + "</h4>\n" +

                            "<span class='price-tag ms-4'><small>$</small>" + cprice + "</span>\n" +
                            "</div>\n" +

                            "<div class='d-flex flex-wrap align-items-center'>\n" +
                            "<h5 class='reviews-text mb-0 me-3'>4.2/5</h5>\n" +

                            "<div class='reviews-stars'>\n" +
                            "<i class='bi-star-fill reviews-icon'></i>\n" +
                            "<i class='bi-star-fill reviews-icon'></i>\n" +
                            "<i class='bi-star-fill reviews-icon'></i>\n" +
                            "<i class='bi-star-fill reviews-icon'></i>\n" +
                            "<i class='bi-star reviews-icon'></i>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>\n" +
                            "</div>");

                    }
                }
            })
        }

        loadpush();

    })
</script>
</body>
</html>
