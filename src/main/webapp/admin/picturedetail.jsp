<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>相册信息详情页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../layui/css/layui.css"/>
    <script type="text/javascript" src="../layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <table class="layui-table">
        <tbody>
        <tr>
            <td>图片id</td>
            <td>${one.pid}</td>
        </tr>
        <tr>
            <td>图片描述</td>
            <td>${one.pdescribe}</td>
        </tr>
        <tr>
            <td>图片展示的地址</td>
            <td>${one.plocation}</td>
        </tr>
        <tr>
            <td>图片文件</td>
            <td><img src="${one.pimg}"></td>
        </tr>
        <tr>
            <td>图片拍摄时间</td>
            <td>${one.ptime}</td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
