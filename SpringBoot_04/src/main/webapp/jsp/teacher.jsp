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
                <li>
                    <a href="toSelfPage">
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
                <li class="active">
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
                                <h4 class="title">教师管理页面</h4>
                                <p class="category">这是对教师的管理及操作</p>
                            </div>
                            <!-- 添加教师 -->
                            <div class="col-md-12">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-content" style="display: block;">
                                        <div class="row">
                                            <form action="javascript:loadTeachers(currentPage)" method="post">
                                                <div class="col-md-3 m-b-xs">
                                                    <input id="selectByName" name="cname" placeholder="教师姓名" class="form-control" type="text"/>
                                                </div>
                                                <div class="col-md-3 m-b-xs">
                                                    <input id="selectByType" name="ctype" placeholder="学科" class="form-control" type="text"/>
                                                </div>
                                                <div class="col-md-4 m-b-xs">
                                                    <button id="btn_select" class="btn btn-primary" type="submit"><i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;&nbsp;<strong>搜索</strong></button>
                                                </div>
                                            </form>
                                            <button onclick="add()" class="btn btn-primary" data-toggle="tooltip" data-placement="left" data-original-title="Refresh inbox"><i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;&nbsp;新增教师&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    <th width="12%">>ID</th>
                                    <th width="18%">姓名</th>
                                    <th width="18%">密码</th>
                                    <th width="18%">学科</th>
                                    <th width="24%">描述</th>
                                    <th>操作</th>
                                    </thead>
                                    <tbody id="teacherList">

                                    </tbody>
                                    <tfoot>
                                    <input type="hidden" value="1" id="pageNow">
                                    <tr>
                                        <td colspan="9" align="right">
                                            <!-- 分页栏 动态添加 -->
                                            <div id="kkpager" style="margin-left: 330px;"></div>
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
    var currentPage = 1;
    function loadTeachers(page) {

        var pageIndex = page;
        var pageSize = 10;
        var name = $("#selectByName").val();
        var tname = name.length !== 0 ? name : "%";
        var tprofessional = $("#selectByType").val();
        $.ajax({
            url: "getTeachers",
            data: {
                pageIndex: page,
                pageSize: pageSize,
                tname: tname,
                tprofessional: tprofessional.length === 0 ? "%" : tprofessional
            },
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (results) {
                $("#teacherList").replaceWith("<tbody id='teacherList'></tbody>");
                console.log(results.rows);
                for (let i = 0; i < results.rows.length; i++) {

                    var object = results.rows[i];
                    var tid = object.tid;
                    var tname = object.tname;
                    var tpassword = object.tpassword
                    var tscript = object.tscript
                    var tprofessional = object.tprofessional

                    $("#teacherList").append(
                        "<tr>\n" +
                        "<td>" + tid + "</td>\n" +
                        "<td>" + tname + "</td>\n" +
                        "<td>" + tpassword + "</td>\n" +
                        "<td>" + tprofessional + "</td>\n" +
                        "<td>" + tscript + "</td>" +
                        "<td>\n" +
                        "<button type='button' onclick='update(\"" + tid + "\",\"" + tname + "\",\"" + tpassword + "\",\"" + tscript + "\",\"" + tprofessional + "\")' title='修改'><i class='fa fa-edit text-navy'></i></button>\n" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "<button onclick='del(\"" + tid + "\")'  title='删除'><i class='fa fa-trash-o text-navy'></i></button>\n" +
                        "</td>" +
                        "</tr>"
                    );

                    var totalPage = Math.ceil(results.total / 10);

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
        });
    }

    function goToPage(n){
        loadTeachers(n);
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

    function update(tid, tname, tpassword, tscript, tprofessional) {

        $("#myModalLabel").html("修改教师")
        $("#modal_body").replaceWith("<div class='modal-body' id='modal_body'>"+
            "<form>\n"+
            "<div class='form-group'>\n"+
            "ID:<input type='text' class='form-control' readonly id='updateid' value='"+tid+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "姓名:<input type='text' class='form-control' id='updatename' value='"+tname+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "密码:<input type='text' class='form-control' id='updatepass' value='"+tpassword+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "学科:<input type='text' class='form-control' id='updatesubject' value='"+tprofessional+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "描述<textarea id='updatescript' class='form-control'>"+tscript+"</textarea>"+"<br/>"+
            "</div>\n"+
            "</form>\n"+
            "</div>")
        $("#modal_save").replaceWith("<button type='button' class='btn btn-primary' id='modal_save' onclick='toupdate(\""+tid+"\")'>保存</button>")
        $('#EditModal').modal('show')

    }

    function toupdate(tid) {

        let id = $("#updateid").val()
        let tname = $("#updatename").val()
        let tpassword = $("#updatepass").val()
        let tprofessional = $("#updatesubject").val()
        let tscript = $("#updatescript").val()

        $.ajax({
            url: "modifyTeacher",
            type: "post",
            data: JSON.stringify({
                tid: tid,
                tname: tname,
                tpassword: tpassword,
                tprofessional: tprofessional,
                tscript: tscript,
            }),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {

                console.log(data.msg)
                if (data.msg == "success") {
                    loadTeachers(currentPage);
                    $('#EditModal').modal('hide')
                }
            }
        });


    }

    if ("${user.uname}" != null && "${user.uname}" != "") {

        loadTeachers(currentPage);
    } else {
        window.location.href = "toindex";
    }


    function add() {
        $("#myModalLabel").html("添加教师")
        $("#modal_body").replaceWith("<div class='modal-body' id='modal_body'>"+
            "<form>\n"+
            "<div class='form-group'>\n"+
            "姓名<input type='text' class='form-control' id='addname'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "密码<input type='text' class='form-control' id='addpass'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "学科<input type='text' class='form-control' id='addsubject'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "描述<textarea id='addscript' class='form-control'>"+"</textarea>"+"<br/>"+
            "</div>\n"+
            "</form>\n"+
            "</div>")
        $("#modal_save").replaceWith("<button type='button' class='btn btn-primary' id='modal_save' onclick='tosave()'>保存</button>")
        $('#EditModal').modal('show')
    }

    function tosave() {
        let tname = $("#addname").val()
        let tpassword = $("#addpass").val()
        let tprofessional = $("#addsubject").val()
        let tscript = $("#addscript").val()

        $.ajax({
            url: "addTeacher",
            type: "post",
            data: JSON.stringify({
                tname: tname,
                tpassword: tpassword,
                tprofessional: tprofessional,
                tscript: tscript,
            }),
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (data) {

                console.log(data.msg)
                if (data.msg == "success") {
                    loadTeachers(currentPage);
                    $('#EditModal').modal('hide')
                }
            }
        });
    }

    function del(tid) {
        var deleteTag = confirm("确定删除此条信息?");
        if (deleteTag) {
            $.ajax({
                url: "removeTeacher/"+tid,
                type: "post",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data.msg)
                    if(data.msg=="success"){
                        loadTeachers(currentPage);
                    }
                }
            })
        }
    }






</script>

</html>
