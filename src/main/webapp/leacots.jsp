<%@ page import="com.swfu.hjt.myblog.entity.Userinfo" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>留言</title>
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


<div class="content whisper-content leacots-content">
    <div class="cont w1000">
        <div class="whisper-list">
            <div class="item-box">
                <div class="review-version">
                    <div class="form-box">
                        <img class="banner-img" src="./img/liuyan.jpg">
                        <div class="form">
                            <form class="layui-form" action="/leacotsadd" method="post">
                                <div class="layui-form-item layui-form-text">
                                    <div class="layui-input-block">
                                        <textarea name="cmessage" placeholder="既然来了，就说几句" class="layui-textarea"></textarea>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.loginuser==null}">
                                    <script>
                                        alert("管理员登陆以后才可以评论");
                                        window.location.href="/login.jsp";  //跳转到登录页面
                                    </script>
                                </c:if>
                                <div class="layui-form-item">
                                    <div class="layui-input-block" style="text-align: right;">
                                        <button type="submit" class="layui-btn definite">
                                            确定</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="volume">
                        全部留言 <span>${count}</span>
                    </div>
                    <div class="list-cont">
                        <c:forEach items="${lcontent}" var="ll">
                            <div class="cont">
                                <div class="img">
                                    <img src="/img/myheader2.jpg" alt="">
                                </div>
                                <div class="text">
                                    <p class="tit"><span class="name">${sessionScope.loginuser.username}</span><span class="data">
                                        <%=(new java.util.Date()).toLocaleString()%>
                                    </span>
                                    </p>
                                    <p class="ct">${ll.cmessage}</p>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </div>

        <!--分页按钮显示区域-->

        <div style="text-align: center;margin: 20px auto;">
            <div class="layui-btn-group" id="showPage">
                <button type="button" page="1" class="layui-btn  layui-btn-primary">首页</button>
                <c:forEach begin="1" end="${ltotalPages}" var="k">
                    <button type="button" page="${k}"
                            class="layui-btn  ${k==lcurrentPage?'layui-btn-danger':'layui-btn-primary'}">${k}</button>
                </c:forEach>
                <button type="button" page="${ltotalPages}" class="layui-btn  layui-btn-primary">尾页</button>
            </div>
        </div>
    </div>
</div>



<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript" src="./js/jquery-1.9.1.min.js"></script>
<script type="text/javascript">

    //分页绑定
    $("#showPage button").click(function () {
        var p = $(this).attr("page"); //获取页码
        window.location.href = "/leacots?p=" + p;   //跳转页面

    });

    $(".nav a").click(function () {
        $(".nav a").removeClass("active");
        $(this).addClass("active");
    })
</script>
</body>
</html>