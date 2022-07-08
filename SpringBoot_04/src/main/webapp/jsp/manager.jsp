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
                <li class="active">
                    <a href="toCoursePage">
                        <i class="pe-7s-note2"></i>
                        <p>课程管理</p>
                    </a>
                </li>
                <li>
                    <a href="user.html">
                        <i class="pe-7s-user"></i>
                        <p>用户信息</p>
                    </a>
                </li>
                <li >
                    <a href="toUserPage">
                        <i class="pe-7s-note2"></i>
                        <p>用户管理</p>
                    </a>
                </li>

                <li >
                    <a href="toTeacherPage">
                        <i class="pe-7s-note2"></i>
                        <p>教师管理</p>
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
                                Dropdown
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
                                <h4 class="title">用户管理页面</h4>
                                <p class="category">这是对用户的管理及操作</p>
                            </div>
                            <!-- 添加用户 -->
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="ibox float-e-margins">
                                        <div class="ibox-content" style="display: block;">
                                            <div class="row">
                                                <div class="col-sm-6 m-b-xs">
                                                    <a onclick="add()" class="btn btn-primary btn-sm" data-toggle="tooltip" data-placement="left" title="" data-original-title="Refresh inbox"><i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;&nbsp;新增用户&nbsp;&nbsp;&nbsp;&nbsp;</a>
                                                </div>
                                                <div class="col-sm-6 m-b-xs">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    <th width="5%">>ID</th>
                                    <th width="10%">姓名</th>
                                    <th width="15%">邮箱</th>
                                    <th width="15%">电话号码</th>
                                    <th width="10%">密码</th>
                                    <th width="15%">薪资</th>
                                    <th width="20%">描述</th>
                                    <th>操作</th>
                                    </thead>
                                    <tbody id="userList">

                                    </tbody>
                                    <tfoot>
                                    <input type="hidden" value="1" id="pageNow">
                                    <tr>
                                        <td colspan="8" align="right">
                                            <nav aria-label="Page navigation">
                                                <ul class="pagination">
                                                    <li>
                                                        <a href="#" aria-label="Previous" onclick="pre()">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>
                                                    <li><a onclick="onePage()">1</a></li>
                                                    <li><a onclick="twoPage()">2</a></li>
                                                    <li><a onclick="threePage()">3</a></li>
                                                    <li><a onclick="fourPage()">4</a></li>
                                                    <li><a onclick="fivePage()">5</a></li>
                                                    <li>
                                                        <a href="#" aria-label="Next" onclick="next()">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <p>共有<span id="totalCount"></span>条数据，当前第<span id="currentPage"></span>/
                                                    <span id="max"></span>页</p>
                                            </nav>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>

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

    function loadUsers() {

        var pageIndex = $("#pageNow").val();
        $.ajax({
            url: "getUsers",
            data:{
                pageIndex:pageIndex,
                pageSize:10
            },
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (results) {
                $("#userList").replaceWith("<tbody id='userList'></tbody>");
                console.log(results.rows);
                for (let i = 0; i < results.rows.length; i++) {

                    var object = results.rows[i];
                    var uid = object.uid;
                    var uname = object.uname;
                    var uemail = object.uemail
                    var utel = object.utel
                    var upass = object.upass
                    var usal = object.usal
                    var umessage = object.umessage

                    $("#userList").append(
                        "<tr>\n" +
                        "<td>" + uid + "</td>\n" +
                        "<td>" + uname + "</td>\n" +
                        "<td>" + uemail + "</td>\n" +
                        "<td>" + utel + "</td>\n" +
                        "<td>" + upass + "</td>\n" +
                        "<td>" + usal + "</td>" +
                        "<td>" + umessage + "</td>" +
                        "<td>\n" +
                        "<button type='button' onclick='update(\"" + uid + "\",\"" + uname + "\",\"" + uemail + "\",\"" + utel + "\",\"" + upass + "\",\"" + usal + "\",\"" + umessage + "\")' title='修改'><i class='fa fa-edit text-navy'></i></button>\n" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "<button onclick='del(\"" + uid + "\")'  title='删除'><i class='fa fa-trash-o text-navy'></i></button>\n" +
                        "</td>" +
                        "</tr>"
                    );

                    $("#currentPage").val(results.currentPage);
                    $("#currentPage").html(results.currentPage);
                    $("#max").val(results.total);
                    $("#max").html(results.total);
                    $("#totalCount").val(results.total);
                    $("#totalCount").html(results.total);

                }

            }

        });
    }

    $(function () {

        <%--alert("${user.uname}");--%>

        if ("${user.uname}" != null && "${user.uname}" != "") {
            loadUsers();
        } else {
            window.location.href = "toindex";
        }

    });

    function update(uid,uname,uemail,utel,upass,usal,umessage) {
        $("#myModalLabel").html("修改商品")
        $("#modal_body").replaceWith("<div class='modal-body' id='modal_body'>"+
            "<form>\n"+
            "<div class='form-group'>\n"+
            "id<input type='text' class='form-control' id='updateid' value='"+uid+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户姓名:<input type='text' class='form-control' id='updatename' value='"+uname+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户邮箱<input type='text' class='form-control' id='updateemail' value='"+uemail+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "电话号码<input type='text' class='form-control' id='updatetel' value='"+utel+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户密码<input type='text' class='form-control' id='updatepass' value='"+upass+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户薪资<input type='text' class='form-control' id='updatesal' value='"+usal+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户描述<textarea id='updatemessage' class='form-control'>"+umessage+"</textarea>"+"<br/>"+
            "</div>\n"+
            "</form>\n"+
            "</div>")
        $("#modal_save").replaceWith("<button type='button' class='btn btn-primary' id='modal_save' onclick='toupdate(\""+uid+"\")'>保存</button>")
        $('#EditModal').modal('show')
    }

    function toupdate(uid) {

        let id = $("#updateid").val();
        let uname = $("#updatename").val()
        let uemail = $("#updateemail").val()
        let utel = $("#updatetel").val()
        let upass = $("#updatepass").val()
        let usal = $("#updatesal").val()
        let umessage = $("#updatemessage").val()

        $.ajax({
            url: "updateUsers",
            type: "post",
            data: JSON.stringify({
                uid: id,
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
                    loadUsers();
                    $('#EditModal ').modal('hide')
                }
            }

        });
    }

    function del(uid) {
        var deleteTag = confirm("确定删除此条信息?");
        if (deleteTag) {
            $.ajax({
                url: "removeUser/" + uid,
                type: "post",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {

                    console.log(data.msg)
                    if(data.msg=="success"){
                        loadUsers();
                    }

                }
            })
        }
    }

    function add() {
        $("#myModalLabel").html("添加用户")
        $("#modal_body").replaceWith("<div class='modal-body' id='modal_body'>"+
            "<form>\n"+
            "<div class='form-group'>\n"+
            "用户姓名<input type='text' class='form-control' id='addname'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户邮箱<input type='text' class='form-control' id='addemail'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "电话号码<input type='text' class='form-control' id='addtel'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户密码<input type='text' class='form-control' id='addpass'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户薪资<input type='text' class='form-control' id='addsal'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "用户描述<textarea id='addmessage' class='form-control'>"+"</textarea>"+"<br/>"+
            "</div>\n"+
            "</form>\n"+
            "</div>")
        $("#modal_save").replaceWith("<button type='button' class='btn btn-primary' id='modal_save' onclick='tosave()'>保存</button>")
        $('#EditModal').modal('show')
    }

    function tosave() {
        let uname = $("#addname").val()
        let uemail = $("#addemail").val()
        let utel = $("#addtel").val()
        let upass = $("#addpass").val()
        let usal = $("#addsal").val()
        let umessage = $("#addmessage").val()

        $.ajax({
            url: "addUser",
            type: "post",
            data: JSON.stringify({
                uname: uname,
                uemail: uemail,
                utel: utel,
                upass: upass,
                usal: usal,
                umessage: umessage,
            }),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {

                console.log(data.msg)

                if (data.msg == "success") {
                    loadUsers();
                    $('#EditModal').modal('hide')
                }
            }
        });

    }


</script>

</html>
