<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
    <style>
        .outer {
            width: 92%;
            /*height: auto;*/
            padding: 5px;
            margin: 20px;
            background-color:white;
            z-index: 5;
        }
        .carousel-item img{
            width: 100%;
            height: auto;
        }
        * {/*除去原始样式*/
            padding: 0;
            margin: 0;
            box-sizing: border-box;
            /*border: 1px solid red;*/
        }
        .contain{
            display:flex;
            justify-content: center;
        }
        .card{
            width: 30%;
            padding:5px;
            margin: 15px;
            /*border: 2px solid lightcoral;*/
            opacity:0.5;
        }
        .card:hover{
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            opacity:0.9;
        }
        .header{
            text-align:center;/*图片居中*/
            /*border: 5px solid red;*/
        }
        div.header img{
            border-radius: 50%;/*是图片呈圆形*/
        }
        .content{
            text-align: justify;
        }
        p{
            padding: 10px;
            color: white;
            font-size: 15px;
        }

    </style>
</head>
<body>
<div class="outer">
<%--    <img src="resource/img/9.jpg" style="width: 100%;height: 100%" />--%>


    <div class="layui-carousel" id="test1">
        <div carousel-item>
            <div><img src="https://picsum.photos/250?random=4" alt="face"></div>
            <div><img src="https://picsum.photos/250?random=5" alt="face"></div>
            <div><img src="https://picsum.photos/250?random=6" alt="face"></div>
            <div><img src="https://picsum.photos/250?random=7" alt="face"></div>
            <div><img src="https://picsum.photos/250?random=8" alt="face"></div>
        </div>
    </div>
</div>
<div class="contain">
<%--    card--%>

    <c:forEach items="${news0}" var="n">
    <div class="card">
        <a href="news2?id=${n.id}">
        <div class="header">
            <img src="https://picsum.photos/250?random=${n.id}" alt="face">
        </div>
        <div class="content">
            <p>${n.title}</p>
        </div>
        </a>
    </div>
    </c:forEach>

<%--    <div class="card">--%>
<%--        <a href="news2?id=2">--%>
<%--            <div class="header">--%>
<%--                <img src="https://picsum.photos/250?random=2" alt="face">--%>
<%--            </div>--%>
<%--            <div class="content">--%>
<%--                <p>职位招聘</p>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--    </div>--%>

<%--    <div class="card">--%>
<%--        <a href="news2?id=3">--%>
<%--            <div class="header">--%>
<%--                <img src="https://picsum.photos/250?random=3" alt="face">--%>
<%--            </div>--%>
<%--            <div class="content">--%>
<%--                <p>建校70周年</p>--%>
<%--            </div>--%>
<%--        </a>--%>
<%--    </div>--%>



</div>
<script src="/static/build/layui.js"></script>
<script>
    layui.use('carousel', function(){
        var carousel = layui.carousel;
        //建造实例
        carousel.render({
            elem: '#test1'
            ,width: '100%' //设置容器宽度
            ,arrow: 'always' //始终显示箭头
            //,anim: 'updown' //切换动画方式
        });
    });
</script>

</body>
</html>