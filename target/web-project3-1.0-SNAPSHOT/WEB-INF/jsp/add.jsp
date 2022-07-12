<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
    <%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
    <style>
    .right1{
        position: relative;
        width: 50vw;
        left: 15vw;;
        padding: 50px;
    }
    .layui-form-item{
        position: relative;
        top:50px;

    }
    #equipment-img img{
        display: inline-block;
        width: 150px;
        height: 150px;
        border: 1px dashed #444;
        border-radius:7px ;
        object-fit: contain;
    }

</style>
</head>

<body>

<div>
    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="">
        <li class="layui-nav-item layui-this"><a href="add">添加新闻</a></li>
        <li class="layui-nav-item"><a href="delete">删除新闻</a></li>
        <li class="layui-nav-item"><a href="change">修改新闻</a></li>
        <li class="layui-nav-item"><a href="search">查找新闻</a></li>
    </ul>
</div>
<div class="header">
    <%@include file="/WEB-INF/layout/header2.jsp"%>
</div>

<div class="right1">
<%--面包屑--%>
 <span class="layui-breadcrumb">
  <a href="login">登录</a>
  <a><cite>添加新闻</cite></a>
 </span>

<%--表单--%>
<!-- 集成表单验证，的表单对象-->
<form class="layui-form" lay-filter="form" action="add" method="post">
    <div class="layui-form-item">
        <label class="layui-form-label">新闻类别</label>
        <div class="layui-input-block">
        <select name="type">
            <option>请选择</option>
            <option value="1">软工要闻</option>
            <option value="2">学术动态</option>
            <option value="3">通知公告</option>
        </select>
        </div>

        <br>

        <label class="layui-form-label">标题</label>
        <div class="layui-input-block">
            <input class="layui-input"
                   required
                   name="name"
                   lay-verify="required"
                   lay-verType="tips"
                   lay-reqText="标题不可以为空"
                   placeholder="请输⼊标题"
                   type="text">
        </div>
        <br>

        <label class="layui-form-label">内容</label>
        <div class="layui-input-block">
             <textarea class="layui-input"
                       name="text"
                       cols="50" rows="10"
                       style="padding: 10px">输入内容...
             </textarea>
        </div>
    </div>
    <br>
<%--    <div class="layui-form-item">--%>
<%--        <label class="layui-form-label">图片</label>--%>
<%--        &lt;%&ndash;input不可见，提交传值&ndash;%&gt;--%>
<%--        <input name="img"--%>
<%--        &lt;%&ndash;         height: 0;width: 0   是指输入框不可见      &ndash;%&gt;--%>
<%--               style="visibility: hidden;height: 0;width: 0"--%>
<%--               lay-verify="required"--%>
<%--               lay-verType="tips"--%>
<%--               lay-reqText="设备图⽚不可以为空"--%>
<%--               autocomplete="off"--%>
<%--        />--%>
<%--        &lt;%&ndash;        显示图片：img是在小窗口中显示图片，a是点击展示大图&ndash;%&gt;--%>
<%--        <a id="equipment-img" target="_blank">--%>
<%--            <img />--%>
<%--        </a>--%>
<%--        <div class="layui-input-block">--%>
<%--            <button type="button" class="layui-btn" id="test1">--%>
<%--                <i class="layui-icon">&#xe67c;</i>上传图片--%>
<%--            </button>--%>
<%--            <button type="button" class="layui-btn layui-btn-danger" id="del-img">--%>
<%--                删除图⽚--%>
<%--            </button>--%>
<%--        </div>--%>
<%--    </div>--%>


    <div class="layui-form-item">
        <div class="layui-input-block">
            <%--           lay-submit对应上面的3个lay条件 --%>
            <button type="submit" class="layui-btn" lay-submit lay-filter="formDemo">⽴即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>
</form>
</div>


<%--js文件--%>
<script type="text/javascript" src="layui/layui.js"></script>
<script src="/static/build/layui.js"></script>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/qs.min.js"></script>
<script>
    layui.use('element', function(){
        var element = layui.element;
        //一些事件触发
        element.on('tab(demo)', function(data){
            console.log(data);
        });
    });

    layui.use('upload', function(){
        var upload = layui.upload;

        //执行实例
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            ,url: '/upload/' //上传接口
            ,done: function(res){
                //上传完毕回调
                console.log(res);
            }
            ,error: function(){
                //请求异常回调
                console.log('error')
            }
        });
    });
</script>
</body>
</html>