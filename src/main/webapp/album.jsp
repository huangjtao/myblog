<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>我的相册</title>
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

<div class="album-content w1000" id="layer-photos-demo" class="layer-photos-demo">
    <div class="img-info">
        <img src="./img/xc_img1.jpg" alt="">
        <div class="title">
            <p class="data">今日上传<span>
                <%=(new java.util.Date()).toLocaleString()%>
            </span></p>
            <p class="text">观赏最美的土耳其的日</p>
        </div>
    </div>
    <div class="img-list">
        <div class="layui-fluid" style="padding:0">
            <div class="layui-row layui-col-space30 space">

                <c:forEach items="${pcontent}" var="p">
                    <div class="layui-col-xs12 layui-col-sm4 layui-col-md4">
                        <div class="item">
                            <img src="${p.pimg}">
                            <div class="cont-text">
                                <div class="data">${p.ptime}</div>
                                <p class="address"><i
                                        class="layui-icon layui-icon-location"></i><span>${p.plocation}</span></p>
                                <p class="briefly">${p.pdescribe}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
<%--        <div id="demo"></div>--%>
        <!--分页按钮显示区域-->

        <div style="text-align: center;margin: 20px auto;">
            <div class="layui-btn-group" id="showPage">
                <button type="button" page="1" class="layui-btn  layui-btn-primary">首页</button>
                <c:forEach begin="1" end="${ptotalPages}" var="k">
                    <button type="button" page="${k}"
                            class="layui-btn  ${k==pcurrentPage?'layui-btn-danger':'layui-btn-primary'}">${k}</button>
                </c:forEach>
                <button type="button" page="${ptotalPages}" class="layui-btn  layui-btn-primary">尾页</button>
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
    }).use(['element', 'laypage', 'form', 'layer', 'menu'], function () {
        element = layui.element, laypage = layui.laypage, form = layui.form, layer = layui.layer, menu = layui.menu;
        laypage.render({
            elem: 'demo'
            , count: 70 //数据总数，从服务端得到
        });
        layer.photos({
            photos: '#layer-photos-demo'
            , anim: 5 //0-6的选择，指定弹出图片动画类型，默认随机（请注意，3.0之前的版本用shift参数）
            , tab: function (pic, layero) {
                console.log(pic, layero)
            }
        });
        menu.init();
    })

    //分页绑定
    $("#showPage button").click(function () {
        var p = $(this).attr("page"); //获取页码
        window.location.href = "/album?p=" + p;   //跳转页面

    });

</script>
</body>
</html>