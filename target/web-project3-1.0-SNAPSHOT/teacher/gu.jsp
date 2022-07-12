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
  <a><cite>谷志新</cite></a>
</span>
  </div>
  <div class="main">
    <img src="../resource/img/gu.jpg">
    <p>谷志新，博士，副教授，硕士生导师。主持黑龙江省自然科学基金、哈尔滨市应用技术研究与开发项目、中央高校基本科研业务费专项基金项目5项；获得哈尔滨市科技进步三等奖，东北林业大学教学质量优秀奖；主要研究方向：人工智能、信息技术应用。发表科技论文20余篇，其中SCI、EI收录5篇，出版专著1部，主编教材2部。获得专利4项。
    </p>
  </div>

</div>
<div>
  <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>
