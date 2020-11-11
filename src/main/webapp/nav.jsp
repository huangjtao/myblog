<%@ page import="com.swfu.hjt.myblog.entity.Userinfo" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="header-list">
    <div class="fr">
        <% Userinfo username= (Userinfo)session.getAttribute("loginuser");

            if (username== null){
        %>
        <a href="login.jsp">登录</a>
        <a>|</a>
        <a href="reg.jsp">注册</a>
        <%}else{%>
        <%--        这里也是html代码//html代码2--%>
        <%--        成功时你可以存一个user对象，那在这里可以直接通过session把值取出来--%>
        <a>你好:<%=((Userinfo) session.getAttribute("loginuser")).getUsername()%></a>
        <a href="/user/out">退出</a>
        <%--        成功登录时，就显示用户的名字--%>
        <%}%>
        <%--        <a href="login.jsp">登录</a>--%>
        <a>|</a>
        <a href="">消息通知</a>
    </div>
</div>


<div class="header">
    <div class="menu-btn">
        <div class="menu">
        </div>
    </div>
    <h1 class="logo">
        <a href="/index">
            <span>MYBLOG</span>
            <img src="./img/logo.png">
        </a>
    </h1>
    <div class="nav">
        <a href="/index" class="">文章</a>
        <a href="/whisper">微语</a>
        <a href="/leacots">留言</a>
        <a href="/album">相册</a>
        <a href="/about">关于</a>
        <a><span>欢迎来到hjt的博客~</span></a>
    </div>
    <ul class="layui-nav header-down-nav">
        <li class="layui-nav-item"><a href="/index" class="">文章</a></li>
        <li class="layui-nav-item"><a href="/whisper">微语</a></li>
        <li class="layui-nav-item"><a href="/leacots">留言</a></li>
        <li class="layui-nav-item"><a href="/album">相册</a></li>
        <li class="layui-nav-item"><a href="/about">关于</a></li>
    </ul>
    <div class="welcome-text">
        <form action="search" method="post">
            <div class="layui-inline">
                <input class="layui-input" type="text" name="keyword" autocomplete="off" placeholder="请输入要搜索的内容">
            </div>
            <button type="submit" class="layui-btn layui-btn-normal">
                <i class=" layui-icon layui-icon-search"></i>
            </button>
        </form>
    </div>
</div>
