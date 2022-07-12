<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>副教授</title>
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
  <a href="../assProfessor.jsp">副教授</a>
  <a><cite>罗嗣卿</cite></a>
</span>
    </div>
    <div class="main">
        <img src="../resource/img/luo.jpg">
        <p>罗嗣卿，硕士，副教授，硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。主持和参加省攻关重点、省自然基金、国家林业公益性行业专项、省教改项目15项，发表论文20余篇，教材3部。</p>
    </div>

</div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>
