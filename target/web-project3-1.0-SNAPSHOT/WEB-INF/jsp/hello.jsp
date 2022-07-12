<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>Title</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        #v{
            position: absolute;
            width: 100%;
            height: 100%;
            left: 0px;
            top: 0px;
            /*裁剪图像，保留长宽比，并填充空间*/
            object-fit: cover;
        }
        a{
            display: inline-block;
            color: powderblue;
            font-family: 宋体;
            font-size: 40px;
            text-align: center;
            text-decoration: none;
        }
        .welcome{
            position: absolute;
            /*居中*/
            left: 50%;
            top:50%;
            transform: translate(-50%,-50%);

            width: 400px;
            background-color: rgba(30,60,120,0.3);
            padding:25px 50px;
            border-radius: 7px;
            border:1px solid rgba(50,70,250,0.7);
            /*为一个元素后面区域添加图形效果*/
            backdrop-filter: blur(5px);
            /*定义动画完成一个周期所需要的时间*/
            animation-duration: 1s;
        }

    </style>
</head>
<body>
<%--下面是段小视频--%>
<video id="v" loop="loop" autoplay="autoplay" muted="muted" src="resource/img/hello.mp4"></video>
<a href="index" class="welcome">
<%--<a href="WEB-INF/layout/footer.jsp" class="welcome">--%>
<%--<a>--%>
你好，软工人
</a>
</body>
</html>