<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>文章首页</title>
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



<div class="content">
    <div class="cont w1000">
        <div class="title">
        <span class="layui-breadcrumb" lay-separator="|">
          <a href="/index" class="active">设计文章</a>
          <a href="/index">前端文章</a>
          <a href="/index">旅游杂记</a>
        </span>
        </div>
        <div class="list-item">
            <c:forEach items="${keywordall}" var="kk" varStatus="ss">
                <div class="item">
                    <div class="layui-fluid">
                        <div class="layui-row">
                            <div class="layui-col-xs12 layui-col-sm4 layui-col-md5">
                                <div class="img"><img src="${kk.img}" alt=""></div>
                            </div>
                            <div class="layui-col-xs12 layui-col-sm8 layui-col-md7">
                                <div class="item-cont">
                                    <h3>${kk.articlename}
                                        <button class="layui-btn layui-btn-danger new-icon">new</button>
                                    </h3>
                                    <h5>${kk.author}</h5>
                                    <p>${kk.articledis}</p>
                                    <a href="/details?aid=${kk.articleid}" class="go-icon"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>


        </div>
        <!--分页按钮显示区域-->

<%--        <div style="text-align: center;margin: 20px auto;">--%>
<%--            <div class="layui-btn-group" id="showPage">--%>
<%--                <button type="button" page="1" class="layui-btn  layui-btn-primary">首页</button>--%>
<%--                <c:forEach begin="1" end="${atotalPages}" var="k">--%>
<%--                    <button type="button" page="${k}"--%>
<%--                            class="layui-btn  ${k==acurrentPage?'layui-btn-danger':'layui-btn-primary'}">${k}</button>--%>
<%--                </c:forEach>--%>
<%--                <button type="button" page="${atotalPages}" class="layui-btn  layui-btn-primary">尾页</button>--%>
<%--            </div>--%>
<%--        </div>--%>
        <%--        <div id="demo" style="text-align: center;"></div>--%>
    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>


<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">
    layui.config({
        base: './js/util/'
    }).use(['element', 'laypage', 'jquery', 'menu'], function () {
        element = layui.element, laypage = layui.laypage, $ = layui.$, menu = layui.menu;
        menu.init();
    });

    //分页绑定
    $("#showPage button").click(function () {
        var p = $(this).attr("page"); //获取页码
        window.location.href = "/index?p=" + p;   //跳转页面

    });

    $(".nav a").click(function () {
        $(".nav a").removeClass("active");
        $(this).addClass("active");
    })

</script>

</body>
</html>