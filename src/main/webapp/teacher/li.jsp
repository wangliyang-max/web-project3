<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>教授</title>
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
  <a><cite>李莉</cite></a>
</span>
    </div>
    <div class="main">
        <img src="../resource/img/li.jpg">
        <p>李莉，博士，副教授，硕士生导师，东北林业大学青年成栋名师、软件工程专业主任、
            专业党支部书记。美国加州大学（河滨）访问学者。主持和参加国家级、
            省部级各类科研、教研项目15项，各级各类获奖10余项，作为第一作者发表SCI、
            EI、中文核心期刊等论文20余篇、主编教材4部。主持国家级一流本科课程、
            黑龙江省线上线下精品课程、东北林业大学一流本科课程、东北林业大学重点课程。
            获得第二届全国高校混合式教学设计创新大赛一等奖、华为产学合作专项奖；
            2次入选黑龙江省在线教学优秀案例；多次获得东北林业大学教学质量优秀奖、
            教学改革奖、教书育人先进个人称号。</p>
    </div>

</div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>
