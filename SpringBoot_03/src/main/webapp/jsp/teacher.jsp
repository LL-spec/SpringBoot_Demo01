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
    <link href="/static/css/demo.css" rel="stylesheet" />
    <link href="/static/css/tooplate-crispy-kitchen.css" rel="stylesheet">
    <link href="/static/css/kkpager_blue.css" rel="stylesheet">



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
                    <a class="nav-link active" href="toindex">回到主页</a>
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
    <section class="menu section-padding">
        <div class="container">

            <div class="col-md-12">
                <form class="form-inline"  action="javascript:loadteacher(currentPage)" method="post">
                    <div class="form-group">
                        <input id="selectByName" name="cname" placeholder="姓名" class="form-control" type="text"/>
                    </div>
                    <div class="form-group">
                        <input id="selectByType" name="ctype" placeholder="学科" class="form-control" type="text"/>
                    </div>
                    <div class="form-group">
                        <button style="float: right" id="btn_select" class="btn btn-primary" type="submit"><i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;&nbsp;<strong>搜索</strong></button>
                    </div>
                </form>
            </div>
            <div class="row" id="jiaoshi">
                <div class="col-12">
                    <h2 class="text-center mb-lg-5 mb-4">所有精品课程</h2>
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

            </div>
            <!-- 分页栏 动态添加 -->
            <div class="row">
                <input type="hidden" value="1" id="pageNow">
                <div id="kkpager" style="margin-left: 330px;"></div>
            </div>

        </div>
    </section>

    <section class="BgImage"></section>


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
<%--分页--%>
<script src="/static/js/kkpager.js" type="text/javascript"></script>
<%--<a href="#" style="display:none;"></a>--%>

<script>
    var currentPage = 1;
    function shop(data) {

        console.log(data);

    }

    function Order() {
        var uname ="${user.uname}";

        if (uname != null && uname != "") {
            window.location = "myOrder";

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
    function loadteacher(page) {

        var pageIndex = page;
        var pageSize = 6;
        var name = $("#selectByName").val();
        var tname = name.length !== 0 ? name : "%";
        var tprofessional = $("#selectByType").val();

        $.ajax({
            url:"findAllTeacher",
            data: {
                pageIndex: page,
                pageSize: pageSize,
                tname: tname,
                tprofessional: tprofessional.length === 0 ? "%" : tprofessional
            },
            contentType:"application/json;charset=utf-8",
            dataType:"json",
            success:function (results){

                // console.log(results)
                $("#jiaoshi").replaceWith("<div class='row' id='jiaoshi'> </div>");
                $("#jiaoshi").append("  <div class=\"col-12\">\n" +
                    "                    <h2 class=\"text-center mb-lg-5 mb-4\">所有教师</h2>\n" +
                    "                </div>")
                for (var i = 0; i < results.rows.length; i++) {
                    var object = results.rows[i];
                    var tid = object.tid
                    var tname = object.tname
                    var tprofessional = object.tprofessional
                    var tscript = object.tscript
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

                    var totalPage = Math.ceil(results.total / 6);

                    //当前页
                    $("#currentPage").val(results.currentPage);
                    $("#currentPage").html(results.currentPage);
                    //总页数
                    $("#max").val(totalPage);
                    $("#max").html(totalPage);
                    // 总记录数
                    $("#totalCount").val(results.total);
                    $("#totalCount").html(results.total);
                }
                //分页脚标 ：pageSize每页显示数， totalPage总的页数， total总的行数
                createPageInfo(page,pageSize,totalPage,results.total,goToPage);
            }
        })
    }
    function goToPage(n){
        loadteacher(n);
    }

    function createPageInfo(page, pageSize, totalPage, total, callbackFunction) {
        var pageNo = page;
        if(!pageNo){
            pageNo = 1;
        }
        $("#kkpager").html("");
        //生成分页
        kkpager.inited = false;
        kkpager.generPageHtml({
            pno : pageNo,
            //总页码
            total : totalPage,
            mode : 'click',
            //总数据条数
            totalRecords : total,
            click : function(n){
                //这里可以做自已的处理
                //处理完后可以手动条用selectPage进行页码选中切换
                callbackFunction(n);
            }
        });

    }
    loadteacher(currentPage);
</script>
</body>
</html>
