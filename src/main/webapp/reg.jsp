<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>注册 - layuiAdmin</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/css/admin.css" media="all">
    <link rel="stylesheet" href="/css/login.css" media="all">
</head>
<body style="background: url('/css/loginbg.jpg');background-position: center center;background-size: cover;">



<form method="post" action="/user/reg">



    <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login"
         style="display: none;">

        <div class="layadmin-user-login-main" style="background: rgba(250,250,250,0.45);">
            <div class="layadmin-user-login-box layadmin-user-login-header">
                <h2>layuiAdmin</h2>
                <p>layui 官方出品的单页面后台管理模板系统</p>
            </div>
            <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-username"
                           for="LAY-user-login-username"></label>
                    <input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名"
                           class="layui-input">
                </div>
                <div class="layui-form-item">
                    <label class="layadmin-user-login-icon layui-icon layui-icon-password"
                           for="LAY-user-login-password"></label>
                    <input type="password" name="password" id="LAY-user-login-password" lay-verify="required"
                           placeholder="密码" class="layui-input">
                </div>

                <div class="layui-form-item">
                    <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit" id="loginBtn">
                        注册
                    </button>
                </div>
                <div class="layui-trans layui-form-item layadmin-user-login-other">
                    <label>社交账号登入</label>
                    <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>
                    <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>
                    <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>

                    <a href="login.jsp" class="layadmin-user-jump-change layadmin-link">登录</a>
                </div>
            </div>
        </div>

    </div>
    <script src="/layui/layui.js"></script>
    <script src="/js/jquery-1.9.1.min.js"></script>
    <script>
        //JavaScript代码区域
        layui.use(['element', 'form', 'layer'], function () {
            var element = layui.element;
            var layer = layui.layer;
            var form = layui.form;
            var layer = layui.layer;


        });
    </script>

</form>

</body>
</html>