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
  <a><cite>925移动开发实验室</cite></a>
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
                        925移动开发实验室，是东北林业大学信息与计算机工程学院软件工程专业
                        <br>系统地从信息处理的语义、语法和应用三个层面，并与认知和系统科学结合
                        <br>研究信息交互、处理的共性基础问题，力争做出高水平的系列性的理论研究成果
                        <br>把基础、应用基础、关键技术研究与应用结合起来，围绕文字、图像、语音和语言处理
                        <br>以及智能机器人领域，努力实现技术创新
                        <br>完成对国民经济有重大效益和对国防建设有重要意义的任务
                        <br>探索未来信息处理方法与技术
                        <br>
                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h1 class="layui-timeline-title" style="color: #fdfdfd">布局规划</h1>
                    <p style="color: #c7c7c7; font-size: 20px">
                        925移动开发实验室，是东北林业大学信息与计算机工程学院软件工程专业
                        <br>神经和认知科学与智能信息处理的交叉与结合研究
                        <br>基于内容的海量信息处理理论与方法
                        <br>计算机科学理论，包括算法设计与复杂性分析、形式化方法
                        <br>机器学习理论、方法与应用
                        <br>多时标非线性系统及分布参数系统的智能建模与控制理论在空间机器人动力学、规划与控制中的应用
                        <br>先进的智能信息处理与控制理论的应用

                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h1 class="layui-timeline-title" style="color: #fdfdfd">科研进展</h1>
                    <p style="color: #c7c7c7; font-size: 20px">
                        925移动开发实验室，是东北林业大学信息与计算机工程学院软件工程专业
                        <br>建立高水平的计算机科学、人工智能和智能机器人的学科研究队伍
                        <br>建设高水平的、智能系统的综合研究平台和环境
                        <br>在若干重要的基础研究领域开展原创性研究
                        <br>在智能技术与系统方面突破一批具有自主知识产权的高新技术
                        <br>探索计算机科学、人工智能与智能系统领域新的学科发展方向
                        <br>

                    </p>
                </div>
            </li>
            <li class="layui-timeline-item">
                <i class="layui-icon layui-timeline-axis">&#xe63f;</i>
                <div class="layui-timeline-content layui-text">
                    <h1 class="layui-timeline-title" style="color: #fdfdfd">队伍简介</h1>
                    <p style="color: #c7c7c7; font-size: 20px">
                        实验室现有国家级、省级人才20人，10个高水平科研团队入驻。
                        <br>实验室现有国家级、省级人才21人，8个高水平科研团队入驻
                        <br>占比84.3%，高级职称人数64人，占比74%。
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
    <img src="resource/img/R-C3.jpg">
</div>
<div class="div2 layui-anim layui-anim-down layui-anim-scaleSpring">
    <img src="resource/img/R-C4.jpg">
</div>
<div class="head2"></div>
<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>
<script>

</script>
</body>
</html>