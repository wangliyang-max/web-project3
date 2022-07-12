<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<%--本页面使用栅格布局--%>
<head>
  <c:url var="base" value="/"/>
  <base href="base">
  <meta charset="UTF-8">
  <title>教授</title>
  <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>
  <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
  <%--    模块化引入--%>
  <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
  <style>
    body{
      background-image: url("resource/img/7.jpg");
      background-size: 100%;
    }
    .img1{
      width: 192px;
      height: 257px;
      position: relative;
      width: 100%;
      height: auto;
    }
    .img2{
      position:absolute;
      width: 100%;
      height: 100%;
      z-index: -1;
      top: -30%;
      left:-10%;
    }
    .img1 img{
      width: 100%;
      height: 100%;
    }
    .img2 img{
      width: 120%;
      height: 140%;
    }
    .layui-col-md2 .img1 :hover{
      box-shadow: 15px 15px 7px #c0cfff;
      opacity: 0.8;
    }
    .text{
      display: flex;
      color: #fdfdfd;
      font-size: x-large;
      justify-content: center;
      align-items:center;
    }
    a{
      color: white;
      text-decoration: none;
      font-size: large;
    }
    a:hover{
      color: #6767e1;
    }


  </style>
</head>
<body>

<div class="layui-container" >
  <div class="bread">
<span class="layui-breadcrumb">
  <a href="index">首页</a>
  <a href="index">教师队伍</a>
  <a><cite>讲师</cite></a>
</span>
  </div>
  <div class="layui-anim layui-anim-scale">
    <div class="layui-row" style="margin: 50px 0;">
      <div class="layui-col-md2">
        <div class="img1">
          <a href="teacher/bo.jsp"><img src="resource/img/bo.jpg"></a>
          <div class="img2">
            <img src="resource/img/p8.png">
          </div>
        </div>
      </div>
      <div class="layui-col-md10">
        <div class="img1 text" style="height: 300px">
          <p>王波，讲师，硕士。<a href="teacher/bo.jsp">详情></a>
            <br>
            <br>
            <br>
          </p>
          <div class="img2">
            <img src="resource/img/p2.png">
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="layui-row" style="margin: 50px 0;">
    <div class="layui-col-md2">
      <div class="img1">
        <a href="teacher/dong.jsp"><img src="resource/img/dong.jpg"></a>
        <div class="img2">
          <img src="resource/img/p8.png">
        </div>
      </div>
    </div>
    <div class="layui-col-md10">
      <div class="img1 text" style="height: 300px">
        <p>董素宇，工学博士，讲师。<a href="teacher/dong.jsp">详情></a>
          <br>
          <br>
          <br>
        </p>
        <div class="img2">
          <img src="resource/img/p2.png">
        </div>
      </div>
    </div>
  </div>

  <div class="layui-row" style="margin: 50px 0;">
    <div class="layui-col-md2">
      <div class="img1">
        <a href="teacher/yan.jsp"><img src="resource/img/yan.jpg"></a>
        <div class="img2">
          <img src="resource/img/p8.png">
        </div>
      </div>
    </div>
    <div class="layui-col-md10">
      <div class="img1 text" style="height: 300px">
        <p>李琰讲师。<a href="teacher/yan.jsp">详情></a>
          <br>
          <br>
          <br>
        </p>
        <div class="img2">
          <img src="resource/img/p2.png">
        </div>
      </div>
    </div>
  </div>

  <div class="layui-row" style="margin: 50px 0;">
    <div class="layui-col-md2">
      <div class="img1">
        <a href="teacher/shan.jsp"><img src="resource/img/shan.jpg"></a>
        <div class="img2">
          <img src="resource/img/p8.png">
        </div>
      </div>
    </div>
    <div class="layui-col-md10">
      <div class="img1 text" style="height: 300px">
        <p>单颖，博士，讲师。<a href="teacher/shan.jsp">详情></a>
          <br>
          <br>
          <br>
        </p>
        <div class="img2">
          <img src="resource/img/p2.png">
        </div>
      </div>
    </div>
  </div>

  <div class="layui-row" style="margin: 50px 0;">
    <div class="layui-col-md2">
      <div class="img1">
        <a href="teacher/luo2.jsp"><img src="resource/img/luo2.jpg"></a>
        <div class="img2">
          <img src="resource/img/p8.png">
        </div>
      </div>
    </div>
    <div class="layui-col-md10">
      <div class="img1 text" style="height: 300px">
        <p>罗辉，博士，讲师。<a href="teacher/luo2.jsp">详情></a>
          <br>
          <br>
          <br>
        </p>
        <div class="img2">
          <img src="resource/img/p2.png">
        </div>
      </div>
    </div>
  </div>

  <div class="layui-row" style="margin: 50px 0;">
    <div class="layui-col-md2">
      <div class="img1">
        <a href="teacher/bian.jsp"><img src="resource/img/bian.jpg"></a>
        <div class="img2">
          <img src="resource/img/p8.png">
        </div>
      </div>
    </div>
    <div class="layui-col-md10">
      <div class="img1 text" style="height: 300px">
        <p>边继龙，博士，讲师。<a href="teacher/bian.jsp">详情></a>
          <br>
          <br>
          <br>
        </p>
        <div class="img2">
          <img src="resource/img/p2.png">
        </div>
      </div>
    </div>
  </div>



</div>
</div>
<div>
  <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>