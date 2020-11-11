<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>微语信息详情页面</title>
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
            <td>微语ID</td>
            <td>${one.wid}</td>
        </tr>
        <tr>
            <td>微语内容</td>
            <td>${one.whispercontent}</td>
        </tr>
        <tr>
            <td>微语撰写时间</td>
            <td>${one.whispertime}</td>
        </tr>
        <tr>
            <td>点赞数</td>
            <td>${one.dnum}</td>
        </tr>
        <tr>
            <td>评论数</td>
            <td>${one.pnum}</td>
        </tr>
        <tr>
            <td>微语撰写作者</td>
            <td>${one.whisperauthor}</td>
        </tr>
        <tr>
            <td>图片信息</td>
            <td><img src="${one.wimg}"></td>
        </tr>
        </tbody>
    </table>
</div>


</body>
</html>
