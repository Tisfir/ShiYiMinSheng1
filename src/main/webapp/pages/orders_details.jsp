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
                订单管理 <small>订单详情</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="all-admin-index.html"><i
                        class="fa fa-dashboard"></i> 首页</a></li>
                <li><a href="all-order-manage-list.html">订单管理</a></li>
                <li class="active">订单详情</li>
            </ol>
        </section>
        <!-- 内容头部 /-->

        <!-- 正文区域 -->
        <section class="content"> <!--订单信息-->
            <div class="panel panel-default">
                <div class="panel-heading">订单信息</div>
                <div class="row data-type">

                    <div class="col-md-2 title">订单编号</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="订单编号"
                               value="${details.id }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">下单时间</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">
                            <div class="input-group-addon">
                                <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right"
                                   id="datepicker-a3" readonly="readonly"
                                   value="${details.creat_timestr}">
                        </div>
                    </div>
                    <div class="col-md-2 title">金额</div>
                    <div class="col-md-4 data">
                        <div class="input-group date">

                            <div class="input-group-addon">
                                <i class="fa fa-money"></i>
                            </div>
                            <input type="text" class="form-control" placeholder="金额"
                               value="${details.cost }" readonly="readonly">
                        </div>
                    </div>

                    <div class="col-md-2 title">收件人</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="收件人"
                               value="${details.u_name }" readonly="readonly">
                    </div>

                    <div class="col-md-2 title">收件地址</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="收件地址"
                               value="${details.u_addr}" readonly="readonly">
                    </div>
                    <div class="col-md-2 title">收件电话</div>
                    <div class="col-md-4 data">
                        <input type="text" class="form-control" placeholder="收件电话"
                               value="${details.u_phone}" readonly="readonly">
                    </div>

                </div>
            </div>
            <!--订单信息/--> <!--商品信息-->
            <div class="panel panel-default">
                <div class="panel-heading">商品信息</div>
                <!--数据列表-->
                <table id="dataList"
                       class="table table-bordered table-striped table-hover dataTable">
                    <thead>
                    <tr>
                        <th class="">商品编号</th>
                        <th class="">商品名称</th>
                        <th class="">商品单价</th>
                        <th class="">商品图片</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="commodities" items="${details.commodities}">

                        <tr>
                            <td>${commodities.c_id}</td>
                            <td>${commodities.c_name}</td>
                            <td>${commodities.price}</td>
                            <td>${commodities.pic }</td>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
                <!--数据列表/-->
            </div>
            <!--用户信息/--> <!--用户信息-->
            <div class="panel panel-default">
                <div class="panel-heading">用户信息</div>
                <div class="row data-type">

                    <div class="col-md-2 title">ID</div>
                    <div class="col-md-4 data text">${details.user.id }</div>

                    <div class="col-md-2 title">用户名</div>
                    <div class="col-md-4 data text">${details.user.username}</div>

                    <div class="col-md-2 title">性别</div>
                    <div class="col-md-4 data text">${details.user.gender=="M"?"男":"女"}</div>

                    <div class="col-md-2 title">电话</div>
                    <div class="col-md-4 data text">${details.user.phone}</div>
                    <div class="col-md-2 title">头像</div>
                    <div class="col-md-4 data text">${details.user.pic}</div>
                    <div class="col-md-2 title">注册时间</div>
                    <div class="col-md-4 data text">${details.user.creat_timestr}</div>
                </div>
            </div>
            <!--工具栏-->
            <div class="box-tools text-center">
                <button type="button" class="btn bg-default"
                        onclick="history.back(-1);">返回</button>
            </div>
            <!--工具栏/--> </section>
        <!-- 正文区域 /-->


    </div>
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
