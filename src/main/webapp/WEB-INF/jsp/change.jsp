<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
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
        <li class="layui-nav-item"><a href="delete">删除新闻</a></li>
        <li class="layui-nav-item layui-this"><a href="change">修改新闻</a></li>
        <li class="layui-nav-item"><a href="search">查找新闻</a></li>
    </ul>
</div>
<div class="header">
    <%@include file="/WEB-INF/layout/header2.jsp"%>
</div>

<div class="right1">
    <%--面包屑--%>
    <span class="layui-breadcrumb">
  <a href="login">登录</a>
  <a><cite>修改新闻</cite></a>
 </span>

    <%--表单--%>
    <!-- 集成表单验证，的表单对象-->
    <form class="layui-form" lay-filter="form" action="change" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">标题</label>
            <div class="layui-input-block">
            <select name="nid">
                <option>请选择</option>
                <c:forEach items="${news}" var="n">
                    <option value="${n.id}">${n.title}</option>
                </c:forEach>
            </select>
            </div>

            <br>

            <label class="layui-form-label">修改内容</label>
            <div class="layui-input-block">
                 <textarea class="layui-input"
                           name="text"
                           cols="50" rows="10"
                           style="padding: 10px">请输入修改后的内容...
                 </textarea>
            </div>
            <br>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <%--           lay-submit对应上面的3个lay条件 --%>
                    <button type="submit" class="layui-btn" lay-submit lay-filter="formDemo">⽴即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </div>
    </form>
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