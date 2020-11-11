<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title>Document</title>
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


<div class="content whisper-content leacots-content details-content">
    <div class="cont w1000">
        <div class="whisper-list">
            <div class="item-box">
                <div class="review-version">
                    <div class="form-box">

                        <div class="article-cont">

                            <div class="title">
                                <h3>${artone.articlename}</h3>
                                <p class="cont-info"><span class="data">${artone.writetime}</span>
                                    <span class="types">${artone.author}</span></p>
                            </div>
                            <p>${artone.content}</p>
                            <img src="./img/wz_img1.jpg">
                            <%--                            <p>炖好的鸡挂在架子上晾干，再一片片剁开，每只鸡剁的块数都是一样，然后把鸡肉放到提前调好的水中腌两个小时，水里面的调料也是爷爷自己去市场买来磨成粉的。锅里还有剩的鸡汤，用鸡汤煮好面叶上面漂着一层绿油油的葱花。</p>--%>
                            <%--                            <p>以前爷爷都是用扁担一头面叶一头板鸡挑到街上摊位上卖，现在爷爷年纪大了，只能用三轮车推着。摊位摆好奶奶就会慢悠悠的拎着一个保温桶和一个小红桶过来，保温桶里装的是卤鸡蛋，小红桶留着装别人吃剩的骨头喂狗。他们只有晚上出摊，收完摊已经要9点钟了，回去还要洗一天用的抹布和衣服，爷爷奶奶都非常爱干净，摊上的所有抹布纱布都是白色的每天洗的一个油点都看不到。9年前奶奶去世了，爷爷奶奶青梅竹马感情非常好，奶奶去世的时候爷爷甚至还要求过把奶奶埋在院子里。现在爷爷有时候会偷偷跟我说，你奶奶昨天回来看我了，她还给我掖被子，我知道是她，我跟她说你别挂念我，我好的很 跑题了。</p>--%>
                            <%--                            <p>昨天我给爷爷打电话，他跟我说他卖板鸡有人给他拍照，他问别人你拍我干嘛，那个人回答他说我给你照片放到网上，你生意会更好，我爷爷说你不用放网上我都不够卖的。</p>--%>
                            <div class="btn-box">
                                <button class="layui-btn layui-btn-primary">上一篇</button>
                                <button class="layui-btn layui-btn-primary">下一篇</button>
                            </div>
                        </div>

                        <div class="form">
                            <form class="layui-form" action="/leacotsadd" method="post">
                                <div class="layui-form-item layui-form-text">
                                    <div class="layui-input-block">
                                        <textarea name="cmessage" placeholder="既然来了，就说几句"
                                                  class="layui-textarea"></textarea>
                                    </div>
                                </div>
                                <div class="layui-form-item">
                                    <div class="layui-input-block" style="text-align: right;">
                                        <button type="submit" class="layui-btn definite">確定</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="volume">
                        全部留言
                        <span>${count}</span>
                    </div>
                    <div class="list-cont">

                        <c:forEach items="${comcontent}" var="ll">
                            <div class="cont">
                                <div class="img">
                                    <img src="./img/myheader2.jpg" alt="">
                                </div>
                                <div class="text">
                                    <p class="tit"><span class="name">hjt</span><span class="data">
                                    <%=(new java.util.Date()).toLocaleString()%>
                                </span></p>
                                    <p class="ct">${ll.cmessage}</p>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>


<jsp:include page="footer.jsp"></jsp:include>

<script type="text/javascript" src="./layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: './js/util/'
    }).use(['element', 'laypage', 'form', 'menu'], function () {
        element = layui.element, laypage = layui.laypage, form = layui.form, menu = layui.menu;

    })
</script>
</body>
</html>