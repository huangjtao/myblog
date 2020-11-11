<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>微语信息修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../layui/css/layui.css"/>
    <script type="text/javascript" src="../layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/whisper/update" method="post" style="width: 500px;margin: 50px auto;">
        <div class="layui-form-item">
            <label class="layui-form-label">微语ID</label>
            <div class="layui-input-block">
                <input type="text" name="wid" id="wid" value='${one.wid}' lay-verify autocomplete="off"
                       placeholder="请输入微语ID" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">微语内容</label>
            <div class="layui-input-block">
                <input type="text" name="whispercontent" id="whispercontent" value='${one.whispercontent}'
                       lay-verify autocomplete="off" placeholder="请输入微语内容"
                       class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">微语撰写时间</label>
            <div class="layui-input-block">
                <input type="text" name="whispertime" id="whispertime" value='${one.whispertime}' lay-verify
                       autocomplete="off" placeholder="请输入微语撰写时间" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">点赞数</label>
            <div class="layui-input-block">
                <input type="text" name="dnum" id="dnum" value='${one.dnum}' lay-verify
                       autocomplete="off" placeholder="请输入点赞数" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">评论数</label>
            <div class="layui-input-block">
                <input type="text" name="pnum" id="pnum" value='${one.pnum}' lay-verify
                       autocomplete="off" placeholder="请输入评论数" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">微语撰写作者</label>
            <div class="layui-input-block">
                <input type="text" name="whisperauthor" id="whisperauthor" value='${one.whisperauthor}'
                       lay-verify autocomplete="off" placeholder="请输入微语撰写作者"
                       class="layui-input"></div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">图片信息</label>
            <div class="layui-input-block">
                <input type="text" name="wimg" id="wimg" value='${one.wimg}' lay-verify autocomplete="off" placeholder="请输入##"
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

