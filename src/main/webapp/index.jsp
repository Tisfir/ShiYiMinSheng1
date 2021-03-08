<%--
  Created by IntelliJ IDEA.
  User: liz
  Date: 2021/3/5
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <!-- 页面meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>食益民生</title>
    <meta name="description" content="AdminLTE2定制版">
    <meta name="keywords" content="AdminLTE2定制版">
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
<body class="hold-transition skin-purple sidebar-mini">
<div class="wrapper">
    <!-- 页面头部 -->
    <jsp:include page="pages/header.jsp"></jsp:include>
    <!-- 页面头部 /-->
    <!-- 导航侧栏 -->
    <jsp:include page="pages/aside.jsp"></jsp:include>
    <!-- 导航侧栏 /-->

    <!-- 内容区域 -->


    <div class="content-wrapper">
        <img src="img/center.jpeg" width="100%" height="100%" />
    </div>
    <!-- 内容区域 /-->

    <!-- 底部导航 -->
    <jsp:include page="pages/footer.jsp"></jsp:include>
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
    $(document).ready(function() {
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


    $(document).ready(function() {

        // 激活导航位置
        setSidebarActive("admin-datalist");

        // 列表按钮
        $("#dataList td input[type='checkbox']").iCheck({
            checkboxClass: 'icheckbox_square-blue',
            increaseArea: '20%'
        });
        // 全选操作
        $("#selall").click(function() {
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
