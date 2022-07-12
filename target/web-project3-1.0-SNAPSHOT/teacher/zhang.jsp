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
  <a><cite>张锡英</cite></a>
</span>
  </div>
  <div class="main">
    <img src="../resource/img/zhang.jpg">
    <p>张锡英， 副教授，硕士，硕士生导师。主要研究方向：现代信息技术及网络应用，数据库技术、图像检索。主持或参加科研项目 11 项，发表论文 9 篇，出版教材 2 部。获得省级科学技术进步奖1次， 2 门课精品课主讲教师。
    </p>
  </div>

</div>
<div>
  <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>
