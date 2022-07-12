<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>
    <%--    <link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>--%>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
    <style>
        body{
            /*base对js也适用*/
            background-image: url("resource/img/b1.jpg");
            /*设置背景图片尺寸，一个值指定宽度*/
            background-size: 100%;
            height: 150vh;
        }
        .head1 {
            width: 500px;
            height: 500px;
            position: fixed;
            left: 78%;
            top: 0px;
            background: url("resource/img/p1.png") no-repeat scroll;
            background-size: 100%;

            z-index: 10;
            /*设置层数，实现浮动在上面的效果*/
        }
        .head2 {
            width: 500px;
            height: 500px;
            position: fixed;
            left: 78%;
            top: 0px;
            background: url("resource/img/p5.png") no-repeat scroll;
            background-size: 100%;

            z-index: 10;
            /*设置层数，实现浮动在上面的效果*/
        }
        .container{
            background-color: rgba(255,255,255,0.2);
        }

    </style>
</head>
<body>
<div class="head1">
</div>
<div class="head2">
</div>
<%--面包屑--%>

<div class="container">
    <div class="bread">
<span class="layui-breadcrumb">
  <a href="index">首页</a>
  <a href="index">专业介绍</a>
  <a><cite>专业简介</cite></a>
</span>
    </div>
    <div class="text">
        <p>
            软件工程专业的细分方向比较多，不同学校会根据自身教育资源的分布情况进行具体的方向设置，通常会包括Web开发方向、嵌入式方向、移动互联网方向、大数据方向、云计算方向、网络安全方向、软件测试方向等。
        </p>
        <br>
        <p>
            目前从就业的情况来看，Web开发、嵌入式开发、软件测试和移动互联网方向具有一定的优势，一方面IT行业内相关岗位比较多，另一方面这些领域的技术已经趋于成熟，有稳定的岗位需求。大数据和云计算领域目前虽然已经初步形成了产业链，但是就业岗位还没有大量释放。
        </p>
        <br>
        <p>
            从发展前景的角度来看，云计算方向、大数据方向和网络安全方向的前景比较广阔，目前大数据技术正处在落地应用的初期，随着产业互联网的发展，未来大数据、云计算和人工智能相关技术领域将释放出大量的就业岗位。从目前研究生的就业情况来看，大数据相关方向的薪资待遇还是比较可观的。另外，嵌入式作为物联网研发的重要环节，在产业互联网阶段也会有更多的发展机会。
        </p>
        <br>
        <p>
            在学习难度方面，大数据、云计算、网络安全相对要难一些，一方面这些专业需要具备一定的数学基础，另一方面这些专业的学习内容也比较多，尤其是大数据领域，需要掌握数学、统计学、计算机等多个领域的知识。虽然这些领域的学习难度大，从业门槛高，但是这些专业未来的就业机会也会更多。
        </p>
    </div>
</div>

<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>
</html>