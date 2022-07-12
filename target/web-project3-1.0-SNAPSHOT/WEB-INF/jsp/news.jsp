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
        .right2{
            margin-left: auto;
        }
        .notice{
            margin: 50px;
        }
        body{
            background-image: url("resource/img/13.jpg");
            background-size: 100%;
            /*background-color: black;*/
        }
        .container{
            background-color: rgba(0,0,0,0.7);
        }
        a{
            color: white;
        }
        span{
            color: #e5e5e5;
        }
        .title{
            background-color: rgba(19, 25, 87, 0.6);
            font-size: 25px;
            color: #b2b2b2;
        }
    </style>
</head>

<body>


<div class="container">
    <%--面包屑--%>
    <div class="bread">
    <span class="layui-breadcrumb">
    <a href="allNews">返回</a>
    </span>
    </div>
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