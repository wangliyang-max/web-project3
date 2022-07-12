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
  <a><cite>副教授</cite></a>
</span>
    </div>
    <div class="layui-anim layui-anim-scale">
        <div class="layui-row" style="margin: 50px 0;">
            <div class="layui-col-md2">
                <div class="img1">
                    <a href="teacher/li.jsp"><img src="resource/img/li.jpg"></a>
                    <div class="img2">
                        <img src="resource/img/p8.png">
                    </div>
                </div>
            </div>
            <div class="layui-col-md10">
                <div class="img1 text" style="height: 300px">
                    <p>李莉，博士，副教授，硕士生导师。<a href="teacher/li.jsp">详情></a>
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
                    <a href="teacher/luo.jsp"><img src="resource/img/luo.jpg"></a>
                    <div class="img2">
                        <img src="resource/img/p8.png">
                    </div>
                </div>
            </div>
            <div class="layui-col-md10">
                <div class="img1 text" style="height: 300px">
                    <p>罗嗣卿，硕士，副教授，硕士生导师。<a href="teacher/luo.jsp">详情></a>
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
                    <a href="teacher/gu.jsp"><img src="resource/img/gu.jpg"></a>
                    <div class="img2">
                        <img src="resource/img/p8.png">
                    </div>
                </div>
            </div>
            <div class="layui-col-md10">
                <div class="img1 text" style="height: 300px">
                    <p>谷志新，博士，副教授，硕士生导师。<a href="teacher/gu.jsp">详情></a>
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
                    <a href="teacher/liu.jsp"><img src="resource/img/liu.jpg"></a>
                    <div class="img2">
                        <img src="resource/img/p8.png">
                    </div>
                </div>
            </div>
            <div class="layui-col-md10">
                <div class="img1 text" style="height: 300px">
                    <p>刘丹，副教授，工学博士，硕士生导师。<a href="teacher/liu.jsp">详情></a>
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
                    <a href="teacher/zhang.jsp"><img src="resource/img/zhang.jpg"></a>
                    <div class="img2">
                        <img src="resource/img/p8.png">
                    </div>
                </div>
            </div>
        <div class="layui-col-md10">
            <div class="img1 text" style="height: 300px">
                <p>张锡英， 副教授，硕士，硕士生导师。<a href="teacher/zhang.jsp">详情></a>
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
                    <a href="teacher/zhao.jsp"><img src="resource/img/zhao.jpg"></a>
                    <div class="img2">
                        <img src="resource/img/p8.png">
                    </div>
                </div>
            </div>
            <div class="layui-col-md10">
                <div class="img1 text" style="height: 300px">
                    <p>赵玉茗，博士，副教授，博士生导师，专业副主任。<a href="teacher/zhao.jsp">详情></a>
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