<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--//判断是否登陆--%>
<c:if test="${sessionScope.loginadmin==null}">
    <script>
        alert("管理员登陆以后才可以访问");
        window.location.href="/admin/login.jsp";  //跳转到登录页面
    </script>
</c:if>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>myblog后台管理 - Layui</title>
    <link rel="stylesheet" href="../layui/css/layui.css" media="all">
    <script src="../layui/layui.js"></script>
    <script src="../js/jquery-1.9.1.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo">layui 后台布局</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://v.bootstrapmb.com/2019/5/2q7j44739/images/1.gif" class="layui-nav-img">
                    ${sessionScope.loginadmin.name}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                    <dd><a href="/adminlogin/out">退出</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="/adminlogin/out">退出登录</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree" lay-filter="test">
                <li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;">文章信息管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/article/list" target="mainshow">文章列表</a></dd>
                        <dd><a href="/article/add" target="mainshow">文章添加</a></dd>
<%--                        <dd><a href="/article/edit" target="mainshow">文章修改</a></dd>--%>

<%--                        <dd><a href="/category/add" target="mainshow">分类添加</a></dd>--%>
<%--                        <dd><a href="/category/list" target="mainshow">分类列表</a></dd>--%>
<%--                    --%>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">微语管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/whisper/list" target="mainshow">微语列表</a></dd>
                        <dd><a href="/whisper/add" target="mainshow">微语添加</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">留言管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/comment/list" target="mainshow">留言列表</a></dd>
<%--                        <dd><a href="/comment/edit" target="mainshow">留言修改</a></dd>--%>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">相册管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="/picture/list" target="mainshow">相册列表</a></dd>
                        <dd><a href="/picture/add" target="mainshow">添加图片</a></dd>
                    </dl>
                </li>

                <li class="layui-nav-item">
                    <a href="javascript:;">解决方案</a>
                    <dl class="layui-nav-child">
                        <dd><a href="" target="tqmContent">用户添加</a></dd>
                        <dd><a href="" target="tqmContent">用户列表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">云市场</a></li>
                <li class="layui-nav-item"><a href="">发布商品</a></li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <!-- 内容主体区域 -->
        <div style="padding: 0px;height: 100%;width: 100%;">
            <iframe src="/article/list" name="mainshow"
                    style="border: 0px solid blue;height: 100%;width: 100%;scrolling:auto;">

            </iframe>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>

<script>
    //JavaScript代码区域
    layui.use('element', function () {
        var element = layui.element;

    });
</script>
</body>
</html>