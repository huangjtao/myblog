<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章详情页面</title>
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
            <td>文章ID</td>
            <td>${one.articleid}</td>
        </tr>
        <tr>
            <td>文章标题</td>
            <td>${one.articlename}</td>
        </tr>
        <tr>
            <td>作者</td>
            <td>${one.author}</td>
        </tr>
        <tr>
            <td>文章描述</td>
            <td>${one.articledis}</td>
        </tr>
        <tr>
            <td>文章内容</td>
            <td>${one.content}</td>
        </tr>
        <tr>
            <td>文章撰写时间</td>
            <td>${one.writetime}</td>
        </tr>
        <tr>
            <td>文章图片信息</td>
            <td><img src="${one.img}"></td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
