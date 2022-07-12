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
  <a><cite>罗辉</cite></a>
</span>
    </div>
    <div class="main">
        <img src="../resource/img/luo2.jpg">
        <p>罗辉，博士，讲师。博士毕业于哈尔滨工业大学，主要研究方向：智能语音处理、机器学习。在国内外顶级期刊和会议上发表SCI、EI检索论文6篇，主持国家自然科学基金青年项目1项，中央高校基本科研项目1项，参与多项国家自然科学基金及重点研发项目。获得国家发明专利1项。
        </p>
    </div>

</div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>