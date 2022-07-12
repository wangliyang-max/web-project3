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
  <a><cite>边继龙</cite></a>
</span>
  </div>
  <div class="main">
    <img src="../resource/img/bian.jpg">
    <p>边继龙，博士，讲师。主要研究方向：立体匹配、矢量地图压缩。曾参与或负责的科研项目包括：矢量地图版权保护技术研究、小基高比立体测绘图像匹配处理方法研究及十二五科研项目等。在国内外期刊上发表学术论文7篇，其中被EI收录5篇；申请发明专利3项。
    </p>
  </div>

</div>
<div>
  <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>