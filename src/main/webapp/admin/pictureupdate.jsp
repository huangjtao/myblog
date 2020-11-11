<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>相册信息修改页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../layui/css/layui.css"/>
    <script type="text/javascript" src="../layui/layui.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/picture/update" method="post" style="width: 500px;margin: 50px auto;">
        <div class="layui-form-item">
            <label class="layui-form-label">图片id</label>
            <div class="layui-input-block">
                <input type="text" name="pid" id="pid" value="${one.pid}" lay-verify autocomplete="off"
                       placeholder="请输入图片id" class="layui-input"></div>
        </div>
        <div class="layui-form-item"><label class="layui-form-label">图片描述</label>
            <div class="layui-input-block">
                <input type="text" name="pdescribe" id="pdescribe" value="${one.pdescribe}" lay-verify
                       autocomplete="off" placeholder="请输入图片描述" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">图片展示的地址</label>
            <div class="layui-input-block">
                <input type="text" name="plocation" id="plocation" value='${one.plocation}' lay-verify
                       autocomplete="off" placeholder="请输入图片展示的地址" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">图片文件</label>
            <div class="layui-input-block">
                <input type="text" name="pimg" id="pimg" value='${one.pimg}' lay-verify autocomplete="off"
                       placeholder="请输入图片文件" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">图片拍摄时间</label>
            <div class="layui-input-block">
                <input type="text" name="ptime" id="ptime" value='${one.ptime}' lay-verify autocomplete="off"
                       placeholder="请输入图片拍摄时间" class="layui-input"></div>
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

