<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>就业指南</title>
    <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
    <style>
        body{
            background-color: black;
            background-image: url("resource/img/p4.png");
            /*background-size: 100%;*/
        }
        .container{
            background-color: rgba(255,255,255,0.2);
        }
        .dimg{
            position: absolute;
            top: 80vh;
            right: 0;
        }
        .dimg img{
            width: 500px;
            height: auto;
        }
        .div1 img{
            margin: 20px;
            width: 100%;
            height: auto;
        }

    </style>

</head>
<body>
<div class="container" >
  <div class="bread">
  <span class="layui-breadcrumb">
  <a href="index">首页</a>
  <a><cite>就业指南</cite></a>
  </span>
  </div>
    <div class="text" style="color: #b5b7bd">
        <p>
            中国的软件行业规模不是很大，有些软件企业在软件制作上，也只是采用了一些软件工程的思想，距离大规模的工业化大生产比较还是有一定的差距；原因有管理体制的问题，市场问题，政策问题，也有软件工程理论不全面和不完善的问题。
        </p>
        <br>
        <p>
            所以软件工程的研究和应用，以及中国软件行业的进一步发展，都需要一定的既有软件工程的理论基础和研究能力，又有一定的实践经验的软件工程科学技术人员来推动。软件工程的前途是光明的。
        </p>
        <br>
        <p>
            软件工程专业学生毕业后可以从事各级各类企事业单位的办公自动化处理、计算机安装与维护、网页制作、计算机网络和专业服务器的维护管理和开发工作、动态商务网站开发与管理、软件测试与开发及计算机相关设备的商品贸易等方面的有关工作。
        </p>
        <br>
        <p>
            除考取国内外名牌大学研究生外，主要毕业去向是计算机软件专业公司﹑信息咨询公司﹑以及金融等其它独资、合资企业。软件工程专业学生主要就业去向包括软件外包与服务企业、信息产品与服务企业，担任程序员、软件测试员、项目经理等工作岗位。
        </p>
        <div class="div1">
        <img src="resource/img/12.jpg">
        </div>
        <div class="layui-anim layui-anim-down dimg">
            <img src="resource/img/p3.png">
        </div>
    </div>
</div>

</body>
</html>