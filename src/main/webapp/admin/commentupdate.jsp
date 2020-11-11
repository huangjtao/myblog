<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>评论信息修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../layui/css/layui.css"/>
    <script type="text/javascript" src="../layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/comment/update" method="post" style="width: 500px;margin: 50px auto;">
        <div class="layui-form-item">
            <label class="layui-form-label">留言id</label>
            <div class="layui-input-block">
                <input type="text" name="cid" id="cid" value='${one.cid}' lay-verify autocomplete="off"
                       placeholder="请输入留言id" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">留言者</label>
            <div class="layui-input-block">
                <input type="text" name="commentator" id="commentator" value='${one.commentator}' lay-verify
                       autocomplete="off" placeholder="请输入留言者" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">留言信息</label>
            <div class="layui-input-block">
                <input type="text" name="cmessage" id="cmessage" value='${one.cmessage}' lay-verify
                       autocomplete="off" placeholder="请输入留言信息" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">留言时间</label>
            <div class="layui-input-block">
                <input type="text" name="ctime" id="ctime" value='${one.ctime}' lay-verify
                       autocomplete="off" placeholder="请输入留言时间" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">头像</label>
            <div class="layui-input-block">
                <input type="text" name="cimg" id="cimg" value='${one.cimg}' lay-verify autocomplete="off" placeholder="请输入头像"
                       class="layui-input"></div>
        </div>


        <div class="layui-form-item">
            <div class="layui-input-block">
                <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
                <button type="reset" class="layui-btn layui-btn-primary">重置</button>
            </div>
        </div>

    </form>

</div>
<script>
    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    //定义layui的变量
    var $;
    var layer;
    var element;
    var form;
    layui.use(['element', 'layer', 'jquery', 'form'], function () {
        element = layui.element;
        layer = layui.layer;
        $ = layui.jquery;
        form = layui.form;

    });

</script>

</body>
</html>

