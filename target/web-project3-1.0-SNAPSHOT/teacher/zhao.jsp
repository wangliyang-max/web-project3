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
  <a><cite>赵玉茗</cite></a>
</span>
  </div>
  <div class="main">
    <img src="../resource/img/zhao.jpg">
    <p>赵玉茗，博士，副教授，博士生导师，专业副主任。主要研究方向：生物信息学、数据挖掘。中国计算机学会生物信息专委会委员。主持国家自然科学基金面上项目、国家自然科学基金青年基金项目、黑龙江省自然科学基金、林木遗传育种国家重点实验室开放基金、中央高校基本科研业务费专项基金项目等多项科研项目；获得东北林业大学青年教师授课大赛二等奖；主讲精品在线课程1门；获得专利3项；发表学术论文30余篇，其中EI、SCI收录10余篇，参与编写教材1部。美国Indiana University-Purdue University Indianapolis访问学者，美国The Johns Hopkins University博士后访问学者。
    </p>
  </div>

</div>
<div>
  <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>
