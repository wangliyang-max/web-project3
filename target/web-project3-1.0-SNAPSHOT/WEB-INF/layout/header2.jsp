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
            position: absolute;
            margin: auto;
            width: 100vw;
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
            padding:10px 15px;
            text-decoration: none;
            font-size: large;
        }
        header nav ul li a:hover{
            background-color: rgba(255,255,255,0.6);
            color: rgba(20,31,68,1);
        }
        header nav .right{
            margin-left: auto;
        }



    </style>
</head>
<body>
<header>
    <nav>
        <ul>
            <li class="right"><a href="index">退出</a> </li>
        </ul>
    </nav>
</header>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</body>
</html>