<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>微语信息列表页面</title>
    <!-- 引入css样式和js文件-->
    <meta charset="UTF-8">
    <link rel="stylesheet" href="../layui/css/layui.css"/>
    <script type="text/javascript" src="../layui/layui.js"></script>
    <script type="text/javascript" src="../js/jquery-1.9.1.min.js"></script>
</head>
<body>
<div class="layui-fluid">


    <table class="layui-table">
        <tbody>
        <tr class="layui-bg-blue">
            <th>微语ID</th>
            <th>微语内容</th>
            <th>微语撰写时间</th>
            <th>点赞数</th>
            <th>评论数</th>
            <th>微语撰写作者</th>
            <th>图片信息</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${content}" var="v">

            <tr>
                <td>${v.wid}</td>
                <td>${v.whispercontent}</td>
                <td>${v.whispertime}</td>
                <td>${v.dnum}</td>
                <td>${v.pnum}</td>
                <td>${v.whisperauthor}</td>
                <td><img src="${v.wimg}"></td>
                    <%--                <td><img src="${v.img}"></td>--%>
                <td style="width: 180px;">
                    <a href="/whisper/edit?wid=${v.wid}" class="layui-btn layui-btn layui-btn-sm">修改</a>
                    <a href="/whisper/delete?wid=${v.wid}"
                       class="layui-btn layui-btn-danger layui-btn-sm">删除</a>
                    <button path="/whisper/detail?wid=${v.wid}"
                            class="layui-btn layui-btn-normal layui-btn-sm showDetail">详情
                    </button>
                </td>
            </tr>

        </c:forEach>




        </tbody>
    </table>


    <!--分页按钮显示区域-->
    <div style="text-align: center;margin: 20px auto;">
        <div class="layui-btn-group" id="showPage">
            <button type="button" page="1" class="layui-btn  layui-btn-primary">首页</button>
            <c:forEach begin="1" end="${totalPages}" var="k">
                <button type="button" page="${k}" class="layui-btn  ${k==currentPage?'layui-btn-danger':'layui-btn-primary'}">${k}</button>
            </c:forEach>
            <button type="button" page="${totalPages}" class="layui-btn  layui-btn-primary">尾页</button>
        </div>
    </div>
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
        //绑定详情点击事件
        $(".showDetail").click(function () {
            var path = $(this).attr("path");
            layer.open({
                offset: '100px', //设置弹出窗口的位置 上边距100px
                type: 2,  //弹出类型
                skin: 'layui-layer-demo', //样式类名
                title: '用户信息详情查看',
                anim: 2,    //弹出窗口使用的动画
                area: ['500px', '350px'],  //设置弹出窗口的大小 宽度,高度
                shadeClose: true, //开启遮罩关闭
                content: path  //加载内容路径
            });
        })
    });


    //分页绑定
    $("#showPage button").click(function () {
        var p=$(this).attr("page"); //获取页码
        window.location.href="/whisper/list?p="+p;   //跳转页面

    });


</script>

</body>
</html>


</html>
