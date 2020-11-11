<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论详情页面</title>
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
            <td>留言id</td>
            <td>${one.cid}</td>
        </tr>
        <tr>
            <td>留言者</td>
            <td>${one.commentator}</td>
        </tr>
        <tr>
            <td>留言信息</td>
            <td>${one.cmessage}</td>
        </tr>
        <tr>
            <td>留言时间</td>
            <td>${one.ctime}</td>
        </tr>
        <tr>
            <td>头像</td>
            <td><img src="${one.cimg}"></td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
