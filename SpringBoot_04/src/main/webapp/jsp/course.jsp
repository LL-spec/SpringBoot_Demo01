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
                <li class="active">
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
                                <h4 class="title">课程管理页面</h4>
                                <p class="category">这是对课程的管理及操作</p>
                            </div>
                            <!-- 添加课程 -->
                            <div class="col-md-12">
                                <div class="ibox float-e-margins">
                                    <div class="ibox-content" style="display: block;">
                                        <div class="row">
                                            <form action="javascript:loadCourses(currentPage)" method="post">
                                                <div class="col-md-3 m-b-xs">
                                                    <input id="selectByName" name="cname" placeholder="课程名称" class="form-control" type="text"/>
                                                </div>
                                                <div class="col-md-3 m-b-xs">
                                                    <input id="selectByType" name="ctype" placeholder="课程类型" class="form-control" type="text"/>
                                                </div>
                                                <div class="col-md-4 m-b-xs">
                                                    <button id="btn_select" class="btn btn-primary" type="submit"><i class="fa fa-search"></i>&nbsp;&nbsp;&nbsp;&nbsp;<strong>搜索</strong></button>
                                                </div>
                                            </form>
                                            <button onclick="add()" class="btn btn-primary" data-toggle="tooltip" data-placement="left" data-original-title="Refresh inbox"><i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;&nbsp;新增课程&nbsp;&nbsp;&nbsp;&nbsp;</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="content table-responsive table-full-width">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    <th width="5%">>ID</th>
                                    <th width="10%">课程</th>
                                    <th width="5%">价格</th>
                                    <th width="10%">销量</th>
                                    <th width="15%">图片</th>
                                    <th width="20%">详情</th>
                                    <th width="10%">是否精品</th>
                                    <th width="10%">是否推送</th>
                                    <th width="5%">类型</th>
                                    <th>操作</th>
                                    </thead>
                                    <tbody id="courseList">

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
    function loadCourses(page) {

        var pageIndex = page;
        var pageSize = 10;
        var name = $("#selectByName").val();
        var cname = name.length !== 0 ? name : "%";
        var type = $("#selectByType").val();
        $.ajax({
            url: "getCourse",
            data: {
                pageIndex: page,
                pageSize: pageSize,
                cname: cname,
                ctype: type.length === 0 ? "%" : type
            },
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function (results) {
                $("#courseList").replaceWith("<tbody id='courseList'></tbody>");
                console.log(results.rows);
                for (let i = 0; i < results.rows.length; i++) {

                    var object = results.rows[i];
                    var cid = object.cid;
                    var cname = object.cname;
                    var cprice = object.cprice
                    var cshop = object.cshop
                    var cphoto = object.cphoto
                    var cdetail = object.cdetail
                    var csuper = object.csuper
                    var ctype = object.ctype
                    var cpush = object.cpush

                    $("#courseList").append(
                        "<tr>\n" +
                        "<td>" + cid + "</td>\n" +
                        "<td>" + cname + "</td>\n" +
                        "<td>" + cprice + "</td>\n" +
                        "<td>" + cshop + "</td>\n" +
                        "<td>" + "<img width='40%' height='40%' src='/static/image/" + cphoto + "'>" + "</img>" + "</td>\n" +
                        "<td>" + cdetail + "</td>" +
                        "<td>" + csuper + "</td>" +
                        "<td>" + cpush + "</td>" +
                        "<td>" + ctype + "</td>" +
                        "<td>\n" +
                        "<button type='button' onclick='update(\"" + cid + "\",\"" + cname + "\",\"" + cprice + "\",\"" + cshop + "\",\"" + cphoto + "\",\"" + cdetail + "\",\"" + csuper + "\",\"" + cpush + "\",\"" + ctype + "\")' title='修改'><i class='fa fa-edit text-navy'></i></button>\n" +
                        "&nbsp;&nbsp;&nbsp;&nbsp;" +
                        "<button onclick='del(\"" + cid + "\")'  title='删除'><i class='fa fa-trash-o text-navy'></i></button>\n" +
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
        loadCourses(n);
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

    function update(cid, cname, cprice, cshop, cphoto, cdetail, csuper,cpush, ctype) {

        $("#myModalLabel").html("修改课程")
        $("#modal_body").replaceWith("<div class='modal-body' id='modal_body'>"+
            "<form>\n"+
            "<div class='form-group'>\n"+
            "id<input type='text' class='form-control' id='updateid' value='"+cid+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "课程名称:<input type='text' class='form-control' id='updatename' value='"+cname+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "课程价格<input type='text' class='form-control' id='updateprice' value='"+cprice+"'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "课程销量<input type='text' class='form-control' id='updateshop' value='"+cshop+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "图片<input name='file' type='file' class='form-control' id='updatephoto' value='"+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "课程详情<textarea id='updatedetail' class='form-control'>"+cdetail+"</textarea>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "是否精品<input type='text' class='form-control' id='updatesuper' placeholder='1-精品 0-非精品' value='"+csuper+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "是否推送<input type='text' class='form-control' id='updatepush' placeholder='1-推送 0-不推送' value='"+cpush+"'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "课程类型<input type='text' class='form-control' id='updatetype' value='"+ctype+"'>"+"<br/>"+
            "</div>\n"+
            "</form>\n"+
            "</div>")
        $("#modal_save").replaceWith("<button type='button' class='btn btn-primary' id='modal_save' onclick='toupdate(\""+cid+"\")'>保存</button>")
        $('#EditModal').modal('show')

    }

    function toupdate(cid) {

        let id = $("#updateid").val()
        let cname = $("#updatename").val()
        let cprice = $("#updateprice").val()
        let cshop = $("#updateshop").val()
        let cdetail = $("#updatedetail").val()
        let csuper = $("#updatesuper").val()
        let cpush = $("#updatepush").val()
        let ctype = $("#updatetype").val()

        let formdata = new FormData();

        formdata.append("cid", id);
        formdata.append("cname", cname);
        formdata.append("cprice", cprice);
        formdata.append("cshop", cshop);
        formdata.append("cdetail", cdetail);
        formdata.append("csuper", csuper);
        formdata.append("cpush", cpush);
        formdata.append("ctype", ctype);
        if ($("#updatephoto")[0].files.length > 0) {
            formdata.append("file", $("#updatephoto")[0].files[0]);
        }

        $.ajax({
            url: "modify",
            type: "post",
            data: formdata,
            contentType: false,
            processData: false,
            dataType: "json",
            success: function (data) {

                console.log(data.msg)
                if (data.msg == "success") {
                    loadCourses(currentPage);
                    $('#EditModal').modal('hide')
                }
            }
        });


    }

    if ("${user.uname}" != null && "${user.uname}" != "") {

        loadCourses(currentPage);
    } else {
        window.location.href = "toindex";
    }


    function add() {
        $("#myModalLabel").html("添加课程")
        $("#modal_body").replaceWith("<div class='modal-body' id='modal_body'>"+
            "<form>\n"+
            "<div class='form-group'>\n"+
            "课程名<input type='text' class='form-control' id='addname'>"+ "<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "价格<input type='text' class='form-control' id='addprice'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "销量<input type='text' class='form-control' id='addshop'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "图片<input type='file' class='form-control' id='addphoto'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "描述<textarea id='adddetail' class='form-control'>"+"</textarea>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "是否精品<input type='text' class='form-control' id='addsuper' placeholder='1-精品 0-非精品'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "是否推送<input type='text' class='form-control' id='addpush' placeholder='1-推送 0-不推送'>"+"<br/>"+
            "</div>\n"+
            "<div class='form-group'>\n"+
            "类型<input type='text' class='form-control' id='addtype'>"+"<br/>"+
            "</div>\n"+
            "</form>\n"+
            "</div>")
        $("#modal_save").replaceWith("<button type='button' class='btn btn-primary' id='modal_save' onclick='tosave()'>保存</button>")
        $('#EditModal').modal('show')
    }

    function tosave() {
        let cname = $("#addname").val()
        let cprice = $("#addprice").val()
        let cshop = $("#addshop").val()
        let cdetail = $("#adddetail").val()
        let csuper = $("#addsuper").val()
        let cpush = $("#addpush").val()
        let ctype = $("#addtype").val()

        let formdata = new FormData();

        formdata.append("cname", cname);
        formdata.append("cprice", cprice);
        formdata.append("cshop", cshop);
        formdata.append("cdetail", cdetail);
        formdata.append("csuper", csuper);
        formdata.append("cpush", cpush);
        formdata.append("ctype", ctype);
        //当jquery 获取file类型的数据时 要将其当作是一个数组
        if ($("#addphoto")[0].files.length > 0) {
            formdata.append("file", $("#addphoto")[0].files[0]);
        }

        $.ajax({
            url: "addCourse",
            type: "post",
            data: formdata,
            contentType: false,
            processData: false,
            dataType: "json",
            success: function (data) {

                console.log(data.msg)
                if (data.msg == "success") {
                    loadCourses(currentPage);
                    $('#EditModal').modal('hide')
                }
            }
        });
    }

    function del(cid) {
        var deleteTag = confirm("确定删除此条信息?");
        if (deleteTag) {
            $.ajax({
                url: "removeCourse/"+cid,
                type: "post",
                contentType: "application/json;charset=utf-8",
                dataType: "json",
                success: function (data) {
                    console.log(data.msg)
                    if(data.msg=="success"){
                        loadCourses(currentPage);
                    }
                }
            })
        }
    }






</script>

</html>
