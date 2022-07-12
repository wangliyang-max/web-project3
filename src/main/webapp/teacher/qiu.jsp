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
  <a href="../professor.jsp">教授</a>
  <a><cite>邱兆文</cite></a>
</span>
    </div>
    <div class="main">
        <img src="../resource/img/qiu.jpg">
        <p>邱兆文，博士，教授，硕士生导师。博士毕业于哈工大，美国卡内基梅隆大学访问学者。东北林业大学三维数字化技术研究所所长。黑龙江省医学影像三维可视化与3D打印工程技术中心主任。拓盟科技董事长。CCF杰出会员，CCF理事，CCF计算机应用专委委员，CCF教育专委委员，中国抗癌协会肿瘤人工智能专委委员。主要研究方向为信息检索、人工智能、增强现实。主持参加国家自然科学基金、科技部中央引导地方重大专项基金、国家发改委产业化基金等18项。获国家发明专利4项。在IEEE Transaction on Medical Imaging 等SCI期刊发表论文13篇。主编专著1部。获省科技进步三等奖 2项，2016年获第五届“中国创新创业大赛”互联网及移动互联网行业企业组第三名 。2020年获第四届“中国创翼”创业创新大赛全国三等奖。2018年入选科技部创新人才推进计划，2019年入选万人计划领军人才。2019年获黑龙江省十大杰出创业青年。2020年挑战杯国赛金奖指导教师。哈工大客座教授。
        </p>
    </div>

</div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
</body>

</html>