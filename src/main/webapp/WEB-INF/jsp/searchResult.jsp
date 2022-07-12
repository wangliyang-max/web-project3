<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
        <style>
            .right1{
                position: relative;
                width: 50vw;
                left: 15vw;;
                padding: 50px;
            }
            .layui-form-item{
                position: relative;
                top:50px;
            }
        </style>
</head>

<body>
<div>
    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="">
        <li class="layui-nav-item "><a href="add">添加新闻</a></li>
        <li class="layui-nav-item "><a href="delete">删除新闻</a></li>
        <li class="layui-nav-item"><a href="change">修改新闻</a></li>
        <li class="layui-nav-item layui-this"><a href="search">查找新闻</a></li>
    </ul>
</div>

<div class="header">
    <%@include file="/WEB-INF/layout/header2.jsp"%>
</div>

<div class="right1">
    <%--面包屑--%>
    <span class="layui-breadcrumb">
    <a href="search">返回</a>
    </span>
        <br>
        <br>
        <c:if test="${i==0}">
            <p>没有数据</p>
        </c:if>
    <div class="layui-collapse notice">
        <div class="layui-colla-item">
            <c:forEach items="${news}" var="n">
                <h2 class="layui-colla-title title">${n.title}</h2>
                <div class="layui-colla-content layui-show" value="${n.id}">
                    <div class="layui-row">
                        <div class="layui-col-md9">
                            <p style="color: #b2b2b2;width:100%">${n.text}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
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