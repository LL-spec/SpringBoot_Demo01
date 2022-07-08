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
    <link href="/static/css/bootstrap.custom.min.css" rel="stylesheet">

    <link href="/static/css/bootstrap-icons.css" rel="stylesheet">

    <link href="/static/css/tooplate-crispy-kitchen.css" rel="stylesheet">
    <link href="/static/css/cart.css" rel="stylesheet">
    <link href="/static/css/style1.css" rel="stylesheet">
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
    <link rel="preload" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900&display=swap" as="fetch" crossorigin="anonymous">


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
            <a href="myOrder">
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
<div id="page">

    <main class="bg_gray">
        <div class="container margin_30">
            <div class="page_header">
                <h4>我的订单</h4>
                <h7><a style="float: right;margin-bottom: 10px" href="myCourse">我的课程>></a></h7>
            </div>
            <!-- /page_header -->
            <table class="table table-striped cart-list">
                <thead>
                <tr>
                    <th>
                        课程
                    </th>
                    <th>
                        单价
                    </th>
                    <th>
                        数量
                    </th>
                    <th>
                        总价
                    </th>
                    <th>

                    </th>
                </tr>
                </thead>
                <tbody id="orderList">

                </tbody>
            </table>


        </div>
        <!-- /container -->

        <div id="payAll" class="box_cart">
            <div class="container">
                <div class="row justify-content-end">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <ul>
                            <li>
                                <span>商品总价</span><strong id="price">$</strong>
                            </li>
                            <li>
                                <span>运费</span><strong>$0.00</strong>
                            </li>
                            <li>
                                <span>合计</span><strong id="total">$</strong>
                            </li>
                        </ul>
                        <a href='"alipay/pay?total_amount="+total' class="btn_1 full-width cart">结账</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- /box_cart -->

    </main>

</div>


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

</body>
<!-- JAVASCRIPT FILES -->
<%--<script src="/static/js/common_scripts.min.js"></script>--%>
<%--<script src="/static/js/main.js"></script>--%>

<script src="/static/js/jquery-3.6.0.js" type="text/javascript"></script>
<script src="/static/js/bootstrap.min.js" type="text/javascript"></script>

<script src="/static/js/bootstrap.bundle.min.js" type="text/javascript"></script>
<script src="/static/js/custom.js" type="text/javascript"></script>
<%--<script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>--%>


<%--<a href="#" style="display:none;"></a>--%>

<script>

    var total = $("#total").val();

    function shop(data) {

        console.log(data);

    }
    var uid=${user.uid};

    $(function () {

        console.log("${user.uname}");
        console.log("${user.uid}");

        var uname ="${user.uname}";

        if (uname != null && uname != "") {

            $("#userName").val(uname);
            $("#userName").html(uname);
            loadSelfOrder(uid);
        }else {
            window.location = "toindex";
        }

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

    })

    function loadSelfOrder(uid) {

        $.ajax({
            url: "getDingdanById/" + uid,
            type: "post",
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {
                console.log(data);
                $("#orderList").replaceWith("<tbody id='orderList'></tbody>");
                var price = 0;
                var total = 0;

                $("#payAll").replaceWith("<div id='payAll' class='box_cart'></div>");


                for (let i = 0; i < data.length; i++) {

                    var object = data[i];
                    var cname = object.cname;
                    var cdetail = object.cdetail;
                    var cphoto = object.cphoto;
                    var cprice = object.cprice;
                    var number = object.number;
                    var did = object.did;
                    var sum = cprice * number;

                    $("#orderList").append(
                        "<tr>\n" +
                        "<td>\n" +
                        "<div class='thumb_cart'>\n" +
                        "<img src='http://localhost:8081/static/image/" + cphoto + "' class='lazy' alt='Image'>\n" +
                        "</div>\n" +
                        "<span class='item_cart' id='cname'>" + cname + "</span>\n" +
                        "<span class='item_cart' id='cdetail'>" + cdetail + "</span>\n" +
                        "</td>\n" +
                        "<td>\n" +
                        "<strong id='cprice'>$" + cprice + "</strong>\n" +
                        "</td>\n" +
                        "<td>\n" +
                        "<div class='numbers-row'>\n" +
                        "<div onclick='reductionOf(this)' class='dec button_inc'>-</div>" +
                        "<input oninput='javascript:changed(\"" + did + "\",this)' type='text' value='" + number + "' id='" + did + "' class='qty2' name='quantity_1'>\n" +
                        "<div onclick='add(this)' class='inc button_inc'>+</div>" +
                        "</div>\n" +
                        "</td>\n" +
                        "<td>\n" +
                        "<strong id='sum'>$" + sum + "</strong>\n" +
                        "<td>\n" +
                        "<td class='options'>\n" +
                        "<a href='alipay/pay?cname=" + cname + "&total=" + sum + "&cdetail=" + cdetail +"&did=" + did +"'><i class='ti-credit-card'></i></a>\n" +
                        "<a href='javascript:delOrder(\"" + did + "\")'><i class='ti-trash'></i></a>\n" +
                        "</td>\n" +
                        "</tr>");

                    price += sum;
                    total = price;
                }

                $("#payAll").append("<div class='container'>\n"+
                    "<div class='row justify-content-end'>\n"+
                    "<div class='col-xl-4 col-lg-4 col-md-6'>\n"+
                    "<ul>\n"+
                    "<li>\n"+
                    "<span>商品总价</span><strong id='price'>$</strong>\n"+
                    "</li>\n"+
                    "<li>\n"+
                    "<span>运费</span><strong>$0.00</strong>\n"+
                    "</li>\n"+
                    "<li>\n"+
                    "<span>合计</span><strong id='total'>$</strong>\n"+
                    "</li>\n"+
                    "</ul>\n"+
                    "<a href='alipay/pay?cname=所有订单"+ "&total=" + price + "&cdetail=所有订单"+"&did=" + uid +"' class='btn_1 full-width cart'>结账</a>\n"+
                    "</div>\n"+
                    "</div>\n"+
                    "</div>")

                $("#price").val("$" + price);
                $("#price").html("$" + price);
                $("#total").html("$" + total);
                $("#total").html("$" + total);
            }

        })

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
        var did = $(obj).next().attr('id');
        console.log(did);
        changed(did, $(obj).next());

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

        var did = $(obj).prev().attr('id');
        console.log(did);
        changed(did, $(obj).prev());
    };

    function changed(did,obj) {
        console.log(did);
        var number = $(obj).val();
        console.log($(obj).val());

        $.ajax({
            url: "updateNum",
            type: "post",
            data: JSON.stringify({
                did: did,
                number: number
            }),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {

                console.log(data.msg)
                if (data.msg == "success") {
                    loadSelfOrder(uid);
                }
            }
        })

    }

    function delOrder(did) {
        var deleteTag = confirm("确定删除此条信息?");
        if (deleteTag) {
            $.ajax({
                url: "removeOrder/"+did,
                type: "post",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data.msg)
                    if(data.msg=="success"){
                        loadSelfOrder(uid);
                    }
                }
            })
        }

    }




</script>

</html>
