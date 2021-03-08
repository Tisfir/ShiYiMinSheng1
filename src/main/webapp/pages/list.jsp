<%--
  Created by IntelliJ IDEA.
  User: liz
  Date: 2021/3/5
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <link href="${APP_PATH}/plugins/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet">
    <script src="${APP_PATH}/plugins/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<form action="user/fileupload" method="post" enctype="multipart/form-data">
    选择文件：<input type="file" name="pic"/><br>
    <input type="submit" value="上传">

</form>
<form action="${APP_PATH}/user/fileupload" method="post" enctype="multipart/form-data">
    <input type="file" name="pic">点击这里上传文件
    <button type="submit" class="btn bg-maroon">保存</button>
    <button type="button" class="btn bg-default"
            onclick="history.back(-1);">返回</button>

</form>
</body>
</html>
