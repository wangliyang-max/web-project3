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
  <a><cite>董素宇</cite></a>
</span>
  </div>
  <div class="main">
    <img src="../resource/img/dong.jpg">
    <p>董素宇，工学博士，讲师。西安大略大学访问学者。主要研究方向：多模态医学图像分析与人工智能技术。在领域顶级或重要期刊和国际会议（Medical Image Analysis、IEEE Transactions on Medical Imaging，IEEE Transactions on Biomedical Engineering，MICCAI等）上发表论文20余篇。主持中国博士后科学基金会面上项目和中央高校项目共三项。参与国家自然科学基金项和国家重点研发计划子课题。获国家发明专利3项。2017 年度 CCCV “心血管OCT易损斑块识别”人工智能专题竞赛一等奖 (冠军)。</p>
  </div>

</div>
<div>
  <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>