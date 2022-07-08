<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/27
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <link href="/static/css/bootstrap-icons.css" rel="stylesheet">

    <link href="/static/css/tooplate-crispy-kitchen.css" rel="stylesheet">
    <link href="/static/css/bootstrap.custom.min.css" rel='stylesheet' type='text/css' />
    <link href="/static/css/style.css" rel='stylesheet' type='text/css' />
    <link href="/static/css/style1.css" rel='stylesheet' type='text/css' />
    <link href="/static/css/product_page.css" rel='stylesheet' type='text/css' />

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

        <div class="d-lg-none">
            <button type="button" class="custom-btn btn btn-danger" data-bs-toggle="modal" data-bs-target="#BookingModal">登陆</button>
        </div>

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
                    <a class="nav-link" href="tohigh?ctype=大学">大学</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="contact.html">联系我们</a>
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

    <div class="container">
        <div class="main" id="main">
            <div class="container margin_30">
                <div class="row">
                    <div class="col-md-6">
                        <div class="all">
                            <div class="slider">
                                <div class="owl-carousel owl-theme main">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <!-- /page_header -->
                        <div class="prod_info">
                            <h1>Armor Air X Fear</h1>
                            <span class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i><em>4 reviews</em></span>
                            <p><small>SKU: MTKRY-001</small><br>Sed ex labitur adolescens scriptorem. Te saepe verear tibique sed. Et wisi ridens vix, lorem iudico blandit mel cu. Ex vel sint zril oportere, amet wisi aperiri te cum.</p>
                            <div class="prod_options">
                                <div class="row">
                                    <label class="col-xl-5 col-lg-5  col-md-6 col-6"><strong>数量</strong></label>
                                    <div class="col-xl-4 col-lg-5 col-md-6 col-6">
                                        <div class="numbers-row">
                                            <input type="text" value="1" id="quantity_1" class="qty2" name="quantity_1">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-5 col-md-6">
                                    <div class="price_main"><span class="new_price">$148.00</span></div>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <div class="btn_add_to_cart"><a href="#0" class="btn_1">Add to Cart</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /row -->
            </div>
            <!-- /container -->
        </div>
    </div>

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
<script src="/static/js/jquery.min.js"></script>
<script src="/static/js/bootstrap.bundle.min.js"></script>
<script src="/static/js/custom.js"></script>
<script src="/static/js/common_scripts.min.js"></script>
<script src="/static/js/main.js"></script>
<script src="/static/js/carousel_with_thumbs.js"></script>

<a href="#" style="display:none;"></a>

<script>
    function loadDetail(){

        $.ajax({
            url: "coursedetail?cid="+${cid},
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success:function(data){

                console.log(data)
                console.log("http://localhost:8081/static/image/"+data.cphoto)

                $("#main").replaceWith(" <div class=\"main\" id=\"main\"></div>");

                $("#main").append(
                    "<div class='container margin_30'>\n"+
                    "<div class='row'>\n"+
                    "<div class='col-md-6'>\n"+
                    "<div class='all'>\n"+
                    "<div class='slider'>\n"+
                    "<div class='owl-carousel owl-theme main owl-loaded owl-drag'>\n"+
                    "<div class='owl-stage' style='transform: translate3d(0px, 0px, 0px); transition: all 0.25s ease 0s; width: 3480px;'>\n" +
                    "<div class='owl-item active' style='width: 580px;'>\n" +
                    "<div style='background-image: url(http://localhost:8081/static/image/"+data.cphoto+");' class='item-box'>\n" +
                    "</div>\n"+
                    "</div>"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "<div class='col-md-6'>\n"+
                    "<div class='prod_info'>\n"+
                    "<h1>"+data.cname+"</h1>\n"+
                    "<span class='rating'><i class='icon-star voted'></i><i class='icon-star voted'></i><i class='icon-star voted'></i><i class='icon-star voted'></i><i class='icon-star'></i><em>4 reviews</em></span>\n"+
                    "<p>"+data.cdetail+"</p>\n"+
                    "<div class='prod_options'>\n"+
                    "<div class='row'>\n"+
                    "<label class='col-xl-5 col-lg-5  col-md-6 col-6'><strong>数量</strong></label>\n"+
                    "<div class='col-xl-4 col-lg-5 col-md-6 col-6'>\n"+
                    "<div class='numbers-row'>\n"+
                    "<div onclick='reductionOf(this)' class='dec button_inc'>-</div>" +
                    "<input type='text' value='1' id='quantity_1' class='qty2' name='quantity_1'>\n"+
                    "<div onclick='add(this)' class='inc button_inc'>+</div>" +
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "<div class='row'>\n"+
                    "<div class='col-lg-5 col-md-6'>\n"+
                    "<div class='price_main'><span class='new_price'>$"+data.cprice+"</span></div>\n"+
                    "</div>\n"+
                    "<div class='col-lg-4 col-md-6'>\n"+
                    "<div onclick='shop()' class='btn_add_to_cart'><a href='#0' class='btn_1'>加入购物车</a></div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>")

            }
        })


    }

    function shop(){

        var number = $("#quantity_1").val();
        console.log(number);

        if("${user}"!=null&&"${user}"!=''){

            // alert("用户成功")

            $.ajax({
                url: "xiadingdan",
                type: "post",
                data: JSON.stringify({
                    cid:${cid},
                    uid:"${user.uid}",
                    number:number
                }),
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    alert(data.msg);
                }
            })
        }else{
            alert("请先登陆")
        }
    }

    $(function () {
        loadDetail()

        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            $("#userName").val(uname);
            $("#userName").html(uname);
        }


        $("#btn_login").click(function () {


            var uname = $("#uname").val();
            var upass=$("#upass").val();
            $.ajax({
                url: "login",
                type: "post",
                data: JSON.stringify({
                    uname:uname,
                    upassword:upass
                }),
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {

                    alert(data.message);
                    $("#BookingModal").modal('hide')
                    window.location.href="toshop?cid="+${cid}
                }
            })


        })


    })

    function Order() {
        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            window.location = "myOrder";

        } else {
            confirm("请先登录");
        }
    }

    //减数量
    function reductionOf(obj) {

        //减前判断
        if ($(obj).next().val() === '') {
            $(obj).next().val(1);
        }
        if ($(obj).next().val() > 1) {
            $(obj).next().val(parseInt($(obj).next().val()) - 1);//数值减
            $(obj).next().val($(obj).next().val());//赋值给框
            $(obj).next().html($(obj).next().val());//赋值给框
        }

    };

    //加数量
    function add(obj) {
        //加前判断
        if ($(obj).prev().val() === '') {
            $(obj).prev().val(1);
        }
        $(obj).prev().val(parseInt($(obj).prev().val()) + 1);//数值加
        $(obj).prev().val($(obj).prev().val());//赋值给框
        $(obj).prev().html($(obj).prev().val());//赋值给框

    };


</script>
</body>
</html>
