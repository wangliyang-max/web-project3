<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>923创新实验室</title>
    <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
<style>

    body{
        background-color: black;
        /*base对js也适用*/
        background-image: url("resource/img/p6.png");
        /*设置背景图片尺寸，一个值指定宽度*/
        height: 200vh;
    }
    .op{
        position: absolute;
        width: 100%;
        height: 250%;
        background-color: rgba(0,0,0,0.7);
        z-index: -1;
        top: 0;
    }

    h1{
        font-family: STXinwei;
    }
    .div1 {
        position: absolute;
        width: 300px;
        height: 200px;
        border: 2px solid whitesmoke;
        left: 70%;
        top: 40%;
        text-align: center;
        z-index: 2;
    }
    .div1 {
        position: absolute;
        width: 300px;
        height: 200px;
        border: 2px solid whitesmoke;
        left: 70%;
        top: 40%;
        text-align: center;
        z-index: 2;
    }
    .div2 {
        position: absolute;
        width: 300px;
        height: 200px;
        border: 2px solid whitesmoke;
        left: 65%;
        top: 80%;
        text-align: center;
        z-index: 2;
    }
    img{
        width: 100%;
        height: 100%;
    }
    .head2 {
        width: 500px;
        height: 500px;
        position: fixed;
        left: 0%;
        bottom: 0px;
        background: url("resource/img/p7.png") no-repeat scroll;
        background-size: 100%;

        z-index: -1;
        /*设置层数，实现浮动在上面的效果*/
    }

</style>
</head>
<body>
<div class="op"></div>
<div class="container">
<div class="bread">
<span class="layui-breadcrumb">
    <%--面包屑--%>
  <a href="index">首页</a>
  <a href="index">实验室</a>
  <a><cite>923实验室</cite></a>
</span>
</div>
<%--    layui动画：layui-anim 是必须的，后面跟着的即是不同的动画类--%>

<%--    <div class="layui-anim layui-anim-down layui-anim-scaleSpring ">--%>
<%--        <img src="resource/img/3.jpg">--%>
<%--    </div>--%>
    <div class="layui-anim layui-anim-up">
    <ul class="layui-timeline">
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h1 class="layui-timeline-title" style="color: #fdfdfd">实验室简介</h1>
                <p style="color: #c7c7c7; font-size: 20px">
                    923实验室，是东北林业大学信息与计算机工程学院软件工程专业
                    <br>依托州大学与中化泉州石化有限公司共同建设的福建省创新实验室。
                    <br>实验室总部与科研中心位于泉港石化科教园区（福州大学石油化工学院泉港校区）
                    <br>中试研究基地位于中化泉州石化有限公司厂区内。
                    <br>实验室围绕催化科学与技术、合成材料、精细化学品、环保与安全技术
                    <br>不枉近百个日日夜夜与之为伴。因小而大，因弱而强。
                    <br>
                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h1 class="layui-timeline-title" style="color: #fdfdfd">布局规划</h1>
                <p style="color: #c7c7c7; font-size: 20px">
                    923实验室，是东北林业大学信息与计算机工程学院软件工程专业
                    <br>依托福州大学与中化泉州石化有限公司共同建设
                    <br>实验室研发总部位于泉州市泉港区石化科教园区(福州大学泉港科教园)
                    <br>中试研究基地位于中化泉州石化有限公司厂区
                    <br>实验室围绕催化科学与技术、合成材料、精细化学品、环保与安全技术
                    <br>不枉近百个日日夜夜与之为伴。
                    <br>

                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h1 class="layui-timeline-title" style="color: #fdfdfd">科研进展</h1>
                <p style="color: #c7c7c7; font-size: 20px">
                    923实验室，是东北林业大学信息与计算机工程学院软件工程专业
                    <br>依托州大学与中化泉州石化有限公司共同建设的福建省创新实验室。
                    <br>实验室总部与科研中心位于泉港石化科教园区（福州大学石油化工学院泉港校区）
                    <br>中试研究基地位于中化泉州石化有限公司厂区内。
                    <br>实验室围绕催化科学与技术、合成材料、精细化学品、环保与安全技术
                    <br>不枉近百个日日夜夜与之为伴。因小而大，因弱而强。
                    <br>

                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h1 class="layui-timeline-title" style="color: #fdfdfd">队伍简介</h1>
                <p style="color: #c7c7c7; font-size: 20px">
                    实验室现有国家级、省级人才16人，8个高水平科研团队入驻。
                    <br>实验室现有国家级、省级人才16人，8个高水平科研团队入驻
                    <br>占比84.3%，高级职称人数57人，占比64%。
                    <br>成立实验室以来，以全职、长聘等形式引进PI、教授等科研人员31人。
                    <br>

                </p>
            </div>
        </li>
        <li class="layui-timeline-item">
            <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
            <div class="layui-timeline-content layui-text">
                <h1 class="layui-timeline-title" style="color: #fdfdfd">欢迎加入我们</h1>
            </div>
        </li>
    </ul>
    </div>
</div>


<div class="div1 layui-anim layui-anim-down layui-anim-scaleSpring">
    <img src="resource/img/R-C.jpg">
</div>
<div class="div2 layui-anim layui-anim-down layui-anim-scaleSpring">
    <img src="resource/img/R-C2.jpg">
</div>
<div class="head2"></div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
<script>

</script>
</body>
</html>