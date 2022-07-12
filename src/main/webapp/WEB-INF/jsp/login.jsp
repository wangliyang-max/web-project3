<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <title>管理员登陆</title>
    <link href="resource/layui/css/layui.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        #v{
            position: absolute;
            width: 100%;
            height: 100%;
            left: 0px;
            top: 0px;
            object-fit: cover;
        }
        .login{
            position: absolute;
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
            animation-name: fade-down;
            animation-duration: 1s;
        }
        .login .title{
            text-align: center;
            color: #fff;
            font-weight: bold;
            font-size: 28px;
            padding-bottom: 25px;
            line-height: 60px;
        }
        @keyframes fade-down {
            from{
                transform: translateX(-50%) translateY(-700px);
                opacity: 0;
            }
            to{
                transform: translateX(-50%) translateY(-50%);
                opacity: 1;
            }
        }
        .login .layui-input-block{
            margin-left: 0px;
        }
        .login .layui-input-block .layui-input{
            background-color: rgba(0,0,0,0);
            color: #fff;
        }
    </style>

</head>
<body>
<video id="v" loop="loop" autoplay="autoplay" muted="muted" src="resource/img/bg1.mp4"></video>
<div class="login">
    <div class="title">
        管理员登录
    </div>
    <div></div>
    <form class="layui-form" action="login" method="post">
        <div class="layui-form-item" style="text-align: center">
            <div class="layui-input-block">
                <input type="text" name="username" required
                       lay-reqText="请输入账号"
                       lay-verify="required" placeholder="请输入账号"
                       autocomplete="off" class="layui-input"
                style="padding: 10px;margin: 10px;border-radius: 7px">
            </div>
        </div>
        <div class="layui-form-item" style="text-align: center">
            <div class="layui-input-block">
                <input type="password"
                       lay-reqText="请输入密码"
                       name="password" required lay-verify="required"
                       placeholder="请输入密码" autocomplete="off" class="layui-input"
                       style="padding: 10px;margin: 10px;border-radius: 7px">
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-input-block" style="text-align: center">
                <button type="submit" class="layui-btn layui-btn-primary layui-border-blue"
                        lay-submit lay-filter="formDemo"
                style="margin: 20px">登陆</button>
                <button type="reset" class="layui-btn layui-btn-primary"
                style="margin:20px">重置</button>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript" src="layui/layui.js"></script>
<c:if test="${success}">
    <script>
        layer.msg("登陆成功")
    </script>
</c:if>
<c:if test="${success == false}">
    <script>
        layer.msg("用户名或密码错误")
    </script>
</c:if>
</body>
</html>
