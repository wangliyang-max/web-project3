<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>Title</title>
<style>
    header{
        margin: auto;
        width: 80vw;
    }

    header nav>ul{
        /*弹性项是inline-block的但是，只管一层*/
        display: flex;
        padding: 0;
        list-style-type: none;
        background-color: rgba(20,31,68,0.7);
    }
    header nav ul li a{
        display: block;
        color: white;
        padding:20px 20px;
        text-decoration: none;
        font-size: x-large;
        font-family: LiSu;
    }
    header nav ul li a:hover{
        background-color: rgba(255,255,255,0.6);
        color: rgba(20,31,68,1);
    }
    header nav .right{
        margin-left: auto;
    }

    .menu{
        position: relative;
    }

    /*二层样式*/
    .second-menu{
        position: absolute;
        z-index: 5;
        display: none;
    }
    .second-menu ul{
        list-style-type: none;
        background-color: rgba(20,31,68,0.7);
    }
</style>
</head>
<body>
<header>
    <nav>
        <ul>
<%--            专业介绍，实验室，教师队伍，就业指南，新闻，公告--%>
            <li><a href="index">首页</a> </li>
            <div class="first-menu"  class="menu">
            <li><a href="index">专业介绍</a> </li>
                      <div class="second-menu">
                             <ul>
<%--                                <li><a href="WEB-INF/jsp/introduce.jsp"><i class="" >专业简介</i></a></li>
这样写地址是对的却无法访问，是因为WEB-INF目录下的文件，浏览器一般无法直接方法，只能通过重定向后才可以访问--%>
<%--                     可以使用jsp重定向，但是无法控制            <jsp:forward page ="/WEB-INF/jsp/introduce.jsp" />--%>
                                 <li><a href="professionIntroduce.jsp"><i class="" >专业简介</i></a></li>
                                 <li><a href="directionIntroduce.jsp"><i class="">方向简介</i></a></li>
                             </ul>
                      </div>
            </div>
    <div class="first-menu1" class="menu">
        <li><a href="index">实验室</a> </li>
        <div class="second-menu">
            <ul>
                <li><a href="923CLabor.jsp"><i class="" >923创新实验室</i></a></li>
                <li><a href="925MLabor.jsp"><i class="">925移动开发实验室</i></a></li>
                <li><a href="923Labor.jsp"><i class="">923实验室</i></a></li>
            </ul>
        </div>
    </div>

    <div class="first-menu2"  class="menu">
        <li><a href="index">教师队伍</a> </li>
        <div class="second-menu">
            <ul>
                <li><a href="professor.jsp"><i class="" >教授</i></a></li>
                <li><a href="assProfessor.jsp"><i class="">副教授</i></a></li>
                <li><a href="lecturer.jsp"><i class="">讲师</i></a></li>
            </ul>
        </div>
    </div>

            <li><a href="work.jsp">就业指南</a> </li>
            <li><a href="allNews">新闻公告</a> </li>
            <li class="right"><a href="login">登录</a> </li>
        </ul>
    </nav>
</header>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function (){
        $(".first-menu").mouseenter(function(){
            $(".first-menu .second-menu").fadeIn(5);
            //如果使用mouseover，悬浮在fab容器上会触发fab上的fadeIn事件；但是悬浮在子元素ul、li也会触发fadeIn事件，就会导致多次闪烁
        });
        $(".first-menu").mouseleave(function(){
            $(".first-menu .second-menu").fadeOut(5);
        })
    });
    $(function (){
        $(".first-menu1").mouseenter(function(){
            $(".first-menu1 .second-menu").fadeIn(5);
            //如果使用mouseover，悬浮在fab容器上会触发fab上的fadeIn事件；但是悬浮在子元素ul、li也会触发fadeIn事件，就会导致多次闪烁
        });
        $(".first-menu1").mouseleave(function(){
            $(".first-menu1 .second-menu").fadeOut(5);
        })
    });
    $(function (){
        $(".first-menu2").mouseenter(function(){
            $(".first-menu2 .second-menu").fadeIn(5);
            //如果使用mouseover，悬浮在fab容器上会触发fab上的fadeIn事件；但是悬浮在子元素ul、li也会触发fadeIn事件，就会导致多次闪烁
        });
        $(".first-menu2").mouseleave(function(){
            $(".first-menu2 .second-menu").fadeOut(5);
        })
    });

</script>
</body>
</html>