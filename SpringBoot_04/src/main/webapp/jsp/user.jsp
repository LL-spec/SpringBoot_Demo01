<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/6/20
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="icon" type="image/png" href="/static/assets/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title></title>

    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
    <meta name="viewport" content="width=device-width" />


    <!-- Bootstrap core CSS     -->
    <link href="/static/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Animation library for notifications   -->
    <link href="/static/assets/css/animate.min.css" rel="stylesheet"/>
    <!--  Light Bootstrap Table core CSS    -->
    <link href="/static/assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>
    <!--  CSS for Demo Purpose, don't include it in your project     -->
    <link href="/static/assets/css/demo.css" rel="stylesheet" />
    <link href="/static/css/kkpager_blue.css" rel="stylesheet">
<%--    <link href="/static/css/common.css" rel="stylesheet">--%>

    <!--     Fonts and icons     -->
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
    <link href="/static/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
</head>
<body>

<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="/static/assets/img/sidebar-5.jpg">

        <!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->

        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="#" class="simple-text">
                    新东方网课管理
                </a>
            </div>
            <ul class="nav">
                <li  class="active">
                    <a href="user.html">
                        <i class="pe-7s-user"></i>
                        <p>用户信息</p>
                    </a>
                </li>
                <li>
                    <a href="toUserPage">
                        <i class="pe-7s-note2"></i>
                        <p>用户管理</p>
                    </a>
                </li>
                <li>
                    <a href="toCoursePage">
                        <i class="pe-7s-note2"></i>
                        <p>课程管理</p>
                    </a>
                </li>
                <li >
                    <a href="toTeacherPage">
                        <i class="pe-7s-note2"></i>
                        <p>教师管理</p>
                    </a>
                </li>
                <li>
                    <a href="toOrderPage">
                        <i class="pe-7s-note2"></i>
                        <p>订单管理</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Table List</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li>
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-dashboard"></i>
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-globe"></i>
                                <b class="caret"></b>
                                <span class="notification">5</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Notification 1</a></li>
                                <li><a href="#">Notification 2</a></li>
                                <li><a href="#">Notification 3</a></li>
                                <li><a href="#">Notification 4</a></li>
                                <li><a href="#">Another notification</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="">
                                <i class="fa fa-search"></i>
                            </a>
                        </li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="">
                                Account
                            </a>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                ${user.uname}
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Action</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li><a href="#">Another action</a></li>
                                <li><a href="#">Something</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Separated link</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="logout">
                                退出登录
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">用户信息</h4>
                                <p class="category">用户个人信息</p>
                            </div>
                            <div id="selfInfo" class="content form-group">
                                <form id="formTag" action="userManage" method="POST" class="form-horizontal">
                                    <div class="form-group"><label class="col-md-2 control-label">ID:</label>
                                        <div class="col-sm-6">
                                            <input id="uid" name="uid" type="text" class="form-control" readonly="readonly" />
                                        </div>
                                    </div>

                                    <div class="hr-line-dashed"></div>

                                    <div class="form-group"><label class="col-sm-2 control-label">姓名:</label>
                                        <div class="col-sm-6">
                                            <input id="uname" name="uname" type="text" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">邮箱:</label>
                                        <div class="col-sm-6">
                                            <input id="uemail" name="uemail" type="text" class="form-control" />
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">电话号码:</label>
                                        <div class="col-sm-6">
                                            <input id="utel" name="utel" type="text" class="form-control" />
                                        </div>
                                    </div>

                                    <div class="hr-line-dashed"></div>

                                    <div class="form-group"><label class="col-sm-2 control-label">密码:</label>
                                        <div class="col-sm-6">
                                            <input id="upass" name="upass" type="text" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">薪资:</label>
                                        <div class="col-sm-6">
                                            <input id="usal" name="usal" type="text" class="form-control"/>
                                        </div>
                                    </div>
                                    <div class="hr-line-dashed"></div>
                                    <div class="form-group"><label class="col-sm-2 control-label">自我介绍:</label>
                                        <div class="col-sm-6">
                                            <textarea id="umessage" name="usal" class="form-control"></textarea>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <div class="col-sm-4 col-sm-offset-2">
                                            <button id="submitButton" class="btn btn-primary" type="button">&nbsp;&nbsp;&nbsp;&nbsp;修&nbsp;&nbsp;&nbsp;&nbsp;改&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="footer">
            <div class="container-fluid">
                <nav class="pull-left">
                    <ul>
                        <li>
                            <a href="#">
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Company
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Portfolio
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Blog
                            </a>
                        </li>
                    </ul>
                </nav>
                <p class="copyright pull-right">
                    Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                </p>
            </div>
        </footer>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="EditModal" tabindex="-1" aria-labelledby="EditModal" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel"></h4>
            </div>
            <div class="modal-body" id="modal_body">
                <input type='text' value=''>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="modal_save">保存</button>
            </div>
        </div>
    </div>
</div>
</body>

<!--   Core JS Files   -->
<script src="/static/assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="/static/assets/js/bootstrap.min.js" type="text/javascript"></script>
<%--分页--%>
<script src="/static/js/kkpager.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="/static/assets/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="/static/assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="/static/assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<!---<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>--->

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="/static/assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="/static/assets/js/demo.js"></script>

<script type="text/javascript">
    let id = ${user.uid}

    function loadSelf(id) {

        $.ajax({
            url: "selectSelf/" + id,
            type: "post",
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {
                console.log(data)
                $("#formTag").replaceWith("<form id='formTag' class='form-horizontal'></form>");

                    var uid = data.uid;
                    var uname = data.uname;
                    var uemail = data.uemail
                    var utel = data.utel
                    var upass = data.upass
                    var usal = data.usal
                    var umessage = data.umessage


                    $("#formTag").append(
                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>ID:</label>\n" +
                        "<div class='col-sm-6'>\n" +
                        "<input id='uid' name='uid' type='text' class='form-control' readonly='readonly' value='" + id + "' />\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class='hr-line-dashed'></div>\n" +
                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>姓名:</label>\n" +
                        "<div class='col-sm-6'>\n" +
                        " <input id='uname' name='uname' type='text' class='form-control' value='" + uname + "' />\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class='hr-line-dashed'></div>\n" +
                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>邮箱:</label>\n" +
                        " <div class='col-sm-6'>\n" +
                        "<input id='uemail' name='uemail' type='text' class='form-control' value='" + uemail + "' />\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class='hr-line-dashed'></div>\n" +
                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>电话号码:</label>\n" +
                        "<div class='col-sm-6'>\n" +
                        "<input id='utel' name='utel' type='text' class='form-control' value='" + utel + "'/>\n" +
                        "</div>\n" +
                        "</div>\n" +

                        "<div class='hr-line-dashed'></div>\n" +

                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>密码:</label>\n" +
                        "<div class='col-sm-6'>\n" +
                        "<input id='upass' name='upass' type='text' class='form-control' value='" + upass + "'/>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class='hr-line-dashed'></div>" +
                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>薪资:</label>\n" +
                        "<div class='col-sm-6'>\n" +
                        "<input id='usal' name='usal' type='text' class='form-control' value='" + usal + "'/>\n" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class='hr-line-dashed'></div>\n" +
                        "<div class='form-group'>\n"+"<label class='col-sm-2 control-label'>自我介绍:</label>\n" +
                        "<div class='col-sm-6'>\n" +
                        "<textarea id='umessage' name='usal' class='form-control'>" + umessage + "</textarea>" +
                        "</div>\n" +
                        "</div>\n" +
                        "<div class='form-group'>\n" +
                        "<div class='col-sm-4 col-sm-offset-2'>\n" +
                        "<button onclick='update(\"" + id + "\")' id='submitButton' class='btn btn-primary' type='button'>&nbsp;&nbsp;&nbsp;&nbsp;修&nbsp;&nbsp;&nbsp;&nbsp;改&nbsp;&nbsp;&nbsp;&nbsp;</button>\n" +
                        "</div>\n" +
                        "</div>\n"
                    );
            }
        });
    }

    function update(uid) {
        // let id = $("#uid").val();
        let uname = $("#uname").val()
        let uemail = $("#uemail").val()
        let utel = $("#utel").val()
        let upass = $("#upass").val()
        let usal = $("#usal").val()
        let umessage = $("#umessage").val()

        $.ajax({
            url: "updateUsers",
            type: "post",
            data: JSON.stringify({
                uid: uid,
                uname: uname,
                uemail: uemail,
                utel: utel,
                upass: upass,
                usal: usal,
                umessage: umessage
            }),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {

                console.log(data.msg)

                if (data.msg == "success") {
                    loadSelf(id);
                }
            }

        });

    }


    if ("${user.uname}" != null && "${user.uname}" != "") {

        loadSelf(id);
    } else {
        window.location.href = "toindex";
    }




</script>

</html>
