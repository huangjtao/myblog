<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>微语</title>
    <link rel="stylesheet" type="text/css" href="./layui/css/layui.css">
    <link rel="stylesheet" type="text/css" href="./css/main.css">
    <!--加载meta IE兼容文件-->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<jsp:include page="nav.jsp"></jsp:include>


<div class="content whisper-content">
    <div class="cont">
        <div class="whisper-list">

            <c:forEach items="${wcontent}" var="w" varStatus="ss">
                <div class="item-box">
                    <div class="item">
                        <div class="whisper-title">
                            <i class="layui-icon layui-icon-date"></i><span class="hour">
<%--                        显示当前时间--%>
                       <%=(new java.util.Date()).toLocaleString()%>
<%--                        <%--%>
<%--                            java.util.Date now=new java.util.Date();--%>
<%--                            out.println(now);--%>
<%--                        %>--%>
                        </span><span
                                class="date">${w.whispertime}</span>
                        </div>
                        <p class="text-cont">
                                ${w.whispercontent}
                        </p>
                        <div class="img-box">
                            <img src="./img/wy_img1.jpg">
                        </div>
                        <div class="op-list">
                            <p class="like"><i class="layui-icon layui-icon-praise"></i><span>${w.dnum}</span></p>
                            <p class="edit"><i class="layui-icon layui-icon-reply-fill"></i><span>${w.pnum}</span></p>
                            <p class="off"><span>展开</span><i class="layui-icon layui-icon-down"></i></p>
                        </div>
                    </div>
                    <div class="review-version layui-hide">
                        <div class="form">
                            <img src="./img/myheader2.jpg">
                            <form class="layui-form" action="/leacotsadd" method="post">
                                <div class="layui-form-item layui-form-text">
                                    <div class="layui-input-block">
                                        <textarea name="cmessage" class="layui-textarea"></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block" style="text-align: right;">
                                        <button type="submit" class="layui-btn definite">確定</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="list-cont">

                            <c:forEach items="${comcontent}" var="cc">
                                <div class="cont">
                                    <div class="img">
                                        <img src="./img/myheader2.jpg" alt="">
                                    </div>
                                    <div class="text">
                                        <p class="tit"><span class="name">hjt</span><span class="data">
                                        <%=(new java.util.Date()).toLocaleString()%>
                                    </span>
                                        </p>
                                        <p class="ct">${cc.cmessage}</p>
                                    </div>
                                </div>

                            </c:forEach>


                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!--分页按钮显示区域-->

        <div style="text-align: center;margin: 20px auto;">
            <div class="layui-btn-group" id="showPage">
                <button type="button" page="1" class="layui-btn  layui-btn-primary">首页</button>
                <c:forEach begin="1" end="${wtotalPages}" var="k">
                    <button type="button" page="${k}"
                            class="layui-btn  ${k==wcurrentPage?'layui-btn-danger':'layui-btn-primary'}">${k}</button>
                </c:forEach>
                <button type="button" page="${wtotalPages}" class="layui-btn  layui-btn-primary">尾页</button>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>


<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    layui.config({
        base: './js/util/'
    }).use(['element', 'laypage', 'form', 'menu'], function () {
        element = layui.element, laypage = layui.laypage, form = layui.form, menu = layui.menu;

        menu.off();

    })

    //分页绑定
    $("#showPage button").click(function () {
        var p = $(this).attr("page"); //获取页码
        window.location.href = "/whisper?p=" + p;   //跳转页面

    });

    $(".nav a").click(function () {
        $(".nav a").removeClass("active");
        $(this).addClass("active");
    })
</script>


</body>
</html>