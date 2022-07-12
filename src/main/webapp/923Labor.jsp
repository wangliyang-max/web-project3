<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>923创新实验室</title>
    <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>>
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
  <a><cite>923创新实验室</cite></a>
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
                        923创新实验室，是东北林业大学信息与计算机工程学院软件工程专业
                        <br>是在学校211项目支持下 整合全校相关院系的计算机实验教学资源
                        <br>按照服务全校非计算机专业学生的基础实验教学和面向计算机系学生的功能
                        <br>重新规划了相关各个实验室的定位，成立的一个校级实验教学中心
                        <br>该中心的建设发展历程是和我校计算机学科的发展紧密相关的
                        <br>坚实的学科背景，为我校计算机教育，特别是实验教学提供了可靠的保障
                        <br>
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h1 class="layui-timeline-title" style="color: #fdfdfd">布局规划</h1>
                    <p style="color: #c7c7c7; font-size: 20px">
                        923创新实验室在面向计算机系学生的专业实验教学方面，计算机系多年来坚持抓教材
                        <br>抓实验装置设计，抓学生的软硬件两个动手能力，让学生在实际工作中得到锻炼
                        <br>在网络和计算机普及的时代，不能以机时数量、机房大小来判断实验环境的优劣
                        <br>计算机学科本身的迅速发展和向其他学科的快速渗透
                        <br>需要建立与时俱进的实验环境与实验教学体系
                        <br>923创新实验教学中心将在系统化、高层次、多样性的实验环境方面
                        <br>提供更加丰富的软件与硬件系统资源，为培养一流学生的综合创新能力服务
                        <br>

                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h1 class="layui-timeline-title" style="color: #fdfdfd">科研进展</h1>
                    <p style="color: #c7c7c7; font-size: 20px">
                        923创新实验室，是东北林业大学信息与计算机工程学院软件工程专业
                        <br>60、70年代以参加电子管、晶体管和集成电路计算机的研制过程做为实践教学手段
                        <br> 60年代的911电子管计算机和112、724晶体管计算机
                        <br>70年代DJS－100系列小型机都为人才培养做出过贡献
                        <br>随着计算机科学技术研究水平提高的同时，实验教学也越来越受到重视
                        <br>《数据结构》等教材和实验装置辐射到全国高校。
                        <br>

                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h1 class="layui-timeline-title" style="color: #fdfdfd">队伍简介</h1>
                    <p style="color: #c7c7c7; font-size: 20px">
                        实验室现有国家级、省级人才12人，10个高水平科研团队入驻。
                        <br>实验室现有国家级、省级人才19人，8个高水平科研团队入驻
                        <br>占比80.3%，高级职称人数57人，占比57%。
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
    <img src="resource/img/R-C5.jpg">
</div>
<div class="div2 layui-anim layui-anim-down layui-anim-scaleSpring">
    <img src="resource/img/R-C6.jpg">
</div>
<div class="head2"></div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
<script>

</script>
</body>
</html>