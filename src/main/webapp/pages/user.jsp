<%--
  Created by IntelliJ IDEA.
  User: liz
  Date: 2021/3/5
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <head>
        <!-- 页面meta -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <title>食益民生</title>
        <%
            pageContext.setAttribute("APP_PATH", request.getContextPath());
        %>
        <meta name="description" content="AdminLTE2定制版">
        <meta name="keywords" content="AdminLTE2定制版">
        <link rel="stylesheet" href="${APP_PATH}/plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/ionicons/css/ionicons.min.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/iCheck/square/blue.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/morris/morris.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/datepicker/datepicker3.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/datatables/dataTables.bootstrap.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/treeTable/jquery.treetable.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/treeTable/jquery.treetable.theme.default.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/select2/select2.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/colorpicker/bootstrap-colorpicker.min.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/adminLTE/css/AdminLTE.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/adminLTE/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="${APP_PATH}/css/style.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/ionslider/ion.rangeSlider.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/ionslider/ion.rangeSlider.skinNice.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/bootstrap-slider/slider.css">
        <link rel="stylesheet" href="${APP_PATH}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.css">

    </head>
</head>
<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">
    <!-- 页面头部 -->
    <jsp:include page="header1.jsp"></jsp:include>
    <!-- 页面头部 /-->

    <!-- 导航侧栏 -->
    <jsp:include page="aside1.jsp"></jsp:include>
    <!-- 导航侧栏 /-->
    <!-- 内容区域 -->
    <div class="content-wrapper">

        <!-- 内容头部 -->
        <section class="content-header">
            <h1>
                用户管理
                <small>全部用户</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="${APP_PATH}/index.jsp"><i
                        class="fa fa-home"></i> 首页</a></li>
                <li><a
                        href="/user/findall">用户管理</a></li>

                <li class="active">全部用户</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content"> <!-- .box-body -->
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">列表</h3>
                </div>

                <div class="box-body">

                    <!-- 数据表格 -->
                    <div class="table-box">

                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="新建"
                                            onclick="location.href='${APP_PATH}/pages/userAdd.jsp'"><i
                                            class="fa fa-file-o"></i> 新建
                                    </button>
                                    <button type="button" class="btn btn-default" title="删除"
                                            onclick='confirm("你确认要删除吗？")'><i class="fa fa-trash-o"></i> 删除
                                    </button>
                                    <button type="button" class="btn btn-default" title="刷新"
                                            onclick="window.location.reload();"><i class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->

                        <!--数据列表-->
                        <table id="dataList"
                               class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                            <tr>
                                <th class="" style="padding-right: 0px"><input
                                        id="selall" type="checkbox" class="icheckbox_square-blue">
                                </th>
                                <th class="sorting_asc">ID</th>
                                <th class="sorting_desc">用户名</th>
                                <th class="sorting">密码</th>
                                <th class="sorting">性别</th>
                                <th class="sorting">电话</th>
                                <th class="sorting">头像</th>
                                <th class="sorting">注册时间</th>
                                <th class="text-center">操作</th>
                            </tr>
                            </thead>
                            <tbody>

                            <c:forEach items="${pageinfo.list}" var="user">
                                <tr>
                                    <td><input name="ids" type="checkbox"></td>
                                    <td>${user.id }</td>
                                    <td>${user.username }</td>
                                    <td>${user.password }</td>
                                    <td>${user.gender=="M"?"男":"女"}</td>
                                    <td>${user.phone }</td>
                                    <td><img src="/uploads/${user.pic}" alt=""/></td>
                                    <td>${user.creat_timestr }</td>
                                    <td class="text-center">
                                        <a href="${pageContext.request.contextPath}/user/findById.do?id=${user.id}"
                                           class="btn bg-olive btn-xs">详情</a>
                                        <a href="${pageContext.request.contextPath}/user/findUserByIdAndAllRole.do?id=${user.id}"
                                           class="btn bg-olive btn-xs">编辑</a>
                                        <a href="${pageContext.request.contextPath}/user/findUserByIdAndAllRole.do?id=${user.id}"
                                           class="btn bg-olive btn-xs">删除</a>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <!--数据列表/-->
                        <!--工具栏-->
                        <div class="pull-left">
                            <div class="form-group form-inline">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default" title="新建"><i
                                            class="fa fa-file-o"></i> 新建
                                    </button>
                                    <button type="button" class="btn btn-default" title="删除"><i
                                            class="fa fa-trash-o"></i> 删除
                                    </button>
                                    <button type="button" class="btn btn-default" title="刷新"><i
                                            class="fa fa-refresh"></i> 刷新
                                    </button>
                                </div>
                            </div>
                        </div>
                        <div class="box-tools pull-right">
                            <div class="has-feedback">
                                <input type="text" class="form-control input-sm" placeholder="搜索">
                                <span class="glyphicon glyphicon-search form-control-feedback"></span>
                            </div>
                        </div>
                        <!--工具栏/-->
                    </div>
                    <!-- 数据表格 /-->

                </div>
                <!-- /.box-body -->

                <!-- .box-footer-->
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            当前第${pageinfo.pageNum }页，${pageinfo.size}条数据，总共${pageinfo.pages }页，总共${pageinfo.total }条记录数
                        </div>
                    </div>

                    <div class="box-tools pull-right">
                        <ul class="pagination">
                            <li><a href="${APP_PATH}/user/findall?pn=1">首页</a></li>

                            <c:if test="${pageinfo.hasPreviousPage}">
                                <li>
                                    <a href="${APP_PATH}/user/findall?pn=${pageinfo.pageNum-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                            </c:if>

                            <c:forEach items="${pageinfo.navigatepageNums}" var="page_Num">
                                <%--加一个判断将当前页码做一个高亮显示--%>
                                <c:if test="${page_Num == pageinfo.pageNum}">
                                    <li class="active"><a href="#">${page_Num }</a></li>
                                </c:if>
                                <c:if test="${page_Num != pageinfo.pageNum}">
                                    <li><a href="${APP_PATH}/user/findall?pn=${page_Num}">${page_Num }</a></li>
                                </c:if>
                            </c:forEach>

                            <c:if test="${pageinfo.hasNextPage}">
                                <li>
                                    <a href="${APP_PATH}/user/findall?pn=${pageinfo.pageNum+1}" aria-label="Next">
                                        <span aria-hidden="true">&raquo;</span>
                                    </a>
                                </li>

                            </c:if>
                            <li><a href="${APP_PATH}/user/findall?pn=${pageinfo.pages}">末页</a></li>
                        </ul>
                    </div>

                </div>
                <!-- /.box-footer-->

            </div>

        </section>
        <!-- 正文区域 /-->

    </div>
    <!-- @@close -->
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- 底部导航 /-->
</div>
<script src="${APP_PATH}/plugins/jQuery/jquery-2.2.3.min.js"></script>
<script src="${APP_PATH}/plugins/jQueryUI/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="${APP_PATH}/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${APP_PATH}/plugins/raphael/raphael-min.js"></script>
<script src="${APP_PATH}/plugins/morris/morris.min.js"></script>
<script src="${APP_PATH}/plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="${APP_PATH}/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="${APP_PATH}/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="${APP_PATH}/plugins/knob/jquery.knob.js"></script>
<script src="${APP_PATH}/plugins/daterangepicker/moment.min.js"></script>
<script src="${APP_PATH}/plugins/daterangepicker/daterangepicker.js"></script>
<script src="${APP_PATH}/plugins/daterangepicker/daterangepicker.zh-CN.js"></script>
<script src="${APP_PATH}/plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="${APP_PATH}/plugins/datepicker/locales/bootstrap-datepicker.zh-CN.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="${APP_PATH}/plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="${APP_PATH}/plugins/fastclick/fastclick.js"></script>
<script src="${APP_PATH}/plugins/iCheck/icheck.min.js"></script>
<script src="${APP_PATH}/plugins/adminLTE/js/app.min.js"></script>
<script src="${APP_PATH}/plugins/treeTable/jquery.treetable.js"></script>
<script src="${APP_PATH}/plugins/select2/select2.full.min.js"></script>
<script src="${APP_PATH}/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.zh-CN.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-markdown/js/bootstrap-markdown.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-markdown/locale/bootstrap-markdown.zh.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-markdown/js/markdown.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-markdown/js/to-markdown.js"></script>
<script src="${APP_PATH}/plugins/ckeditor/ckeditor.js"></script>
<script src="${APP_PATH}/plugins/input-mask/jquery.inputmask.js"></script>
<script src="${APP_PATH}/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
<script src="${APP_PATH}/plugins/input-mask/jquery.inputmask.extensions.js"></script>
<script src="${APP_PATH}/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="${APP_PATH}/plugins/datatables/dataTables.bootstrap.min.js"></script>
<script src="${APP_PATH}/plugins/chartjs/Chart.min.js"></script>
<script src="${APP_PATH}/plugins/flot/jquery.flot.min.js"></script>
<script src="${APP_PATH}/plugins/flot/jquery.flot.resize.min.js"></script>
<script src="${APP_PATH}/plugins/flot/jquery.flot.pie.min.js"></script>
<script src="${APP_PATH}/plugins/flot/jquery.flot.categories.min.js"></script>
<script src="${APP_PATH}/plugins/ionslider/ion.rangeSlider.min.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-slider/bootstrap-slider.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<script src="${APP_PATH}/plugins/bootstrap-datetimepicker/locales/bootstrap-datetimepicker.zh-CN.js"></script>
<script>
    $(document).ready(function () {
        // 选择框
        $(".select2").select2();

        // WYSIHTML5编辑器
        $(".textarea").wysihtml5({
            locale: 'zh-CN'
        });
    });


    // 设置激活菜单
    function setSidebarActive(tagUri) {
        var liObj = $("#" + tagUri);
        if (liObj.length > 0) {
            liObj.parent().parent().addClass("active");
            liObj.addClass("active");
        }
    }


    $(document).ready(function () {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function () {
            var clicks = $(this).is(':checked');
            if (!clicks) {
                $("#dataList td input[type='checkbox']").iCheck("uncheck");
            } else {
                $("#dataList td input[type='checkbox']").iCheck("check");
            }
            $(this).data("clicks", !clicks);
        });
    });
</script>
</body>
</html>
