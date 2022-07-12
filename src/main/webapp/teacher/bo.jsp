<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>讲师</title>
    <link rel="stylesheet" type="text/css" href="../resource/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="../resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
    <style>
        body{
            background-image: url("../resource/img/11.jpg");
            background-size: 100%;
        }
        .container{
            background-color: rgba(232, 227, 227,0.3);
        }
        .main{
            display: flex;
            margin: 10px;
            align-items:center;
        }
        img{
            width: 192px;
            height: 257px;
            margin: 20px;
        }
        /*img{*/
        /*    float: left;*/
        /*}*/
    </style>
</head>
<body>

<div class="container" >
    <div class="bread">
 <span class="layui-breadcrumb">
  <a href="../index">首页</a>
  <a href="../index">教师队伍</a>
  <a href="../lecturer.jsp">讲师</a>
  <a><cite>王波</cite></a>
</span>
    </div>
<div class="main">
    <img src="../resource/img/bo.jpg">
    <p>王波，讲师，硕士。主要研究方向：计算数学，软件开发。发表学术论文3篇。</p>
</div>

</div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>