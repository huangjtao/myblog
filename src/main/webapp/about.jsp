<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>关于我自己</title>
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

<div class="about-content">
    <div class="w1000">
        <div class="item info">
            <div class="title">
                <h3>我的介绍</h3>
            </div>
            <div class="cont">
                <img src="./img/xc_img1.jpg">
                <div class="per-info">
                    <p>
                        <span class="name">hjt</span><br />
                        <span class="age">21岁</span><br />
                        <span class="Career">设计师, 前端工程师</span><br />
                        <span class="interest">爱好旅游,打游戏</span>
                    </p>
                </div>
            </div>
        </div>
        <div class="item tool">
            <div class="title">
                <h3>我的技能</h3>
            </div>
            <div class="layui-fluid">
                <div class="layui-row">
                    <div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
                        <div class="cont-box">
                            <img src="./img/gr_img2.jpg">
                            <p>80%</p>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
                        <div class="cont-box">
                            <img src="./img/gr_img3.jpg">
                            <p>80%</p>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
                        <div class="cont-box">
                            <img src="./img/gr_img4.jpg">
                            <p>80%</p>
                        </div>
                    </div>
                    <div class="layui-col-xs6 layui-col-sm3 layui-col-md3">
                        <div class="cont-box">
                            <img src="./img/gr_img5.jpg">
                            <p>80%</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="item contact">
            <div class="title">
                <h3>联系方式</h3>
            </div>
            <div class="cont">
                <img src="./img/erweima.jpg">
                <div class="text">
                    <p class="WeChat">微信：<span>616516161</span></p>
                    <p class="qq">qq：<span>838534952</span></p>
                    <p class="iphone">电话：<span>17705487146</span></p>
                </div>
            </div>
        </div>
    </div>
</div>



<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: '../res/js/util/'
    }).use(['element','laypage','form','layer','menu'],function(){
        element = layui.element,laypage = layui.laypage,form = layui.form,layer = layui.layer,menu = layui.menu;
        menu.init();
    });

    $(".nav a").click(function () {
        $(".nav a").removeClass("active");
        $(this).addClass("active");
    })
</script>
</body>
</html>