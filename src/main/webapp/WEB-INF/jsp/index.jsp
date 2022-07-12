<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body{
            /*base对js也适用*/
            /*background-color: #1e3852;*/
            background-image: url("resource/img/b2.jpg");
            /*设置背景图片尺寸，一个值指定宽度*/
            background-size: 100%;
        }
        .b_header{
            width: 100%;
            font-family: STXingkai;
            font-size: 80px;
            color: #e5e5e5;
            /*background-color: rgba(53,53,108,0.7);*/
            text-align: center;
            margin: 10px;
        }
        .container{
            display: flex;
            background-color: rgba(255, 255, 255, 0.6);
        }
        .notice{
            width: 50%;
            padding: 50px 30px;
            margin: 20px;
        }
        .img {
            width: 45%;
            padding: 50px 0px;
            text-align: center;
        }
        .layui-timeline-content a:hover{
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            opacity:0.9;
        }
    </style>
</head>

<body>

<div class="b_header">东北林业大学-软件工程</div>

<div class="header">
    <%@include file="/WEB-INF/layout/header.jsp"%>
</div>

<div class="main">
    <%@include file="../layout/loopimage.jsp"%>

<div class="container">
    <div class="layui-collapse notice">
        <ul class="layui-timeline">
            <h3>软工要闻</h3>
            <hr>
            <br>
            <c:forEach items="${news1}" var="n">
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <a class="layui-timeline-title"
                       style="font-size: 20px;color: #505050;
            text-decoration: none;"
                       href="news2?id=${n.id}">
                       ${n.title}</a>
                </div>
            </li>
            </c:forEach>
        </ul>

        <ul class="layui-timeline">
            <h3>学术动态</h3>
            <hr>
            <br>
            <c:forEach items="${news2}" var="n">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <a class="layui-timeline-title"
                           style="font-size: 20px;color: #505050;
            text-decoration: none;"
                           href="news2?id=${n.id}">
                            ${n.title}</a>
                    </div>
                </li>
            </c:forEach>
        </ul>

        <ul class="layui-timeline">
            <h3>通知公告</h3>
            <hr>
            <br>
            <c:forEach items="${news3}" var="n">
                <li class="layui-timeline-item">
                    <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                    <div class="layui-timeline-content layui-text">
                        <a class="layui-timeline-title"
                           style="font-size: 20px;color: #505050;
            text-decoration: none;"
                           href="news2?id=${n.id}">
                                ${n.title}</a>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>

    <div class="img">
        <%@include file="/WEB-INF/layout/imgFlex.jsp"%>
    </div>

</div>
</div>

<div class="footer">
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>

<%--js文件--%>
<script type="text/javascript" src="layui/layui.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/qs.min.js"></script>
<script>
    layui.use('element', function(){
        var element = layui.element;
        //一些事件触发
        element.on('tab(demo)', function(data){
            console.log(data);
        });
    });
</script>
</body>
</html>