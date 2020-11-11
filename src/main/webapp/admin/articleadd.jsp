<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文章信息添加页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../layui/css/layui.css"/>
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
</head>
<body>
<div class="layui-container">


    <form class="layui-form" action="/article/save" method="post" style="width: 500px;margin: 50px auto;">

        <div class="layui-form-item">
            <label class="layui-form-label">文章ID</label>
            <div class="layui-input-block">
                <input type="text" name="articleid" id="articleid" value='' lay-verify
                       autocomplete="off" placeholder="请输入文章ID" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">文章标题</label>
            <div class="layui-input-block">
                <input type="text" name="articlename" id="articlename" value='' lay-verify
                       autocomplete="off" placeholder="请输入文章标题" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">作者</label>
            <div class="layui-input-block">
                <input type="text" name="author" id="author" value='' lay-verify
                       autocomplete="off" placeholder="请输入作者" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">文章内容</label>
            <div class="layui-input-block">
                <input type="text" name="content" id="content" value='' lay-verify
                       autocomplete="off" placeholder="请输入文章内容" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">文章描述</label>
            <div class="layui-input-block">
                <input type="text" name="articledis" id="articledis" value='' lay-verify
                                                  autocomplete="off" placeholder="请输入文章描述" class="layui-input"></div>
        </div>


        <div class="layui-form-item">
            <label class="layui-form-label">文章图片信息</label>
            <div class="layui-input-block">
                <input type="text" name="img" id="img" value='' lay-verify autocomplete="off"
                       placeholder="请输入文章图片信息" class="layui-input"></div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">文章撰写时间</label>
            <div class="layui-input-block">
                <input type="text" name="writetime" id="writetime" value='' lay-verify
                       autocomplete="off" placeholder="请输入文章撰写时间" class="layui-input"></div>
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

    layui.use('laydate', function () {
        var laydate = layui.laydate;

        //执行一个laydate实例
        laydate.render({
            elem: '#writetime' //指定元素
            //自定义格式
            , format: 'yyyy/MM/dd' //可任意组合
            , value: '2018/08/18'  //默认初始值
        });
    });
</script>

</body>
</html>



