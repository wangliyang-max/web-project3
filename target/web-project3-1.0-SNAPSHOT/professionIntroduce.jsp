<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="base">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="resource/css/common.css"/>
<%--    <link rel="stylesheet" type="text/css" href="layui/css/layui.css"/>--%>
    <link rel="stylesheet" type="text/css" href="resource/layui/css/layui.css"/>
<%--    模块化引入--%>
    <script src="resource/layui/layui.js" type="text/javascript" charset="UTF-8"></script>
<style>
    body{
        /*base对js也适用*/
        background-image: url("resource/img/b1.jpg");
        /*设置背景图片尺寸，一个值指定宽度*/
        background-size: 100%;
        height: 200vh;
    }
    .head1 {
        width: 500px;
        height: 500px;
        position: fixed;
        left: 78%;
        top: 0px;
        background: url("resource/img/p1.png") no-repeat scroll;
        background-size: 100%;

        z-index: 10;
        /*设置层数，实现浮动在上面的效果*/
    }
    .container{
        background-color: rgba(255,255,255,0.2);
    }
    .head2 {
        width: 500px;
        height: 500px;
        position: fixed;
        left: 78%;
        top: 0px;
        background: url("resource/img/p5.png") no-repeat scroll;
        background-size: 100%;

        z-index: 10;
        /*设置层数，实现浮动在上面的效果*/
    }

</style>
</head>
<body>
<div class="head1">
</div>
<div class="head2">
</div>

<div class="container">
<div class="bread">
<span class="layui-breadcrumb">
    <%--面包屑--%>
  <a href="index">首页</a>
  <a href="index">专业介绍</a>
  <a><cite>专业简介</cite></a>
</span>
 </div>
    <div class="text">
    <p>
        软件工程专业是2002年国家教育部新增专业，随着计算机应用领域的不断扩大及中国经济建设的不断发展，软件工程专业将成为一个新的热门专业。 软件工程专业以计算机科学与技术学科为基础，强调软件开发的工程性，使学生在掌握计算机科学与技术方面知识和技能的基础上熟练掌握从事软件需求分析、软件设计、软件测试、软件维护和软件项目管理等工作所必需的基础知识、基本方法和基本技能，突出对学生专业知识和专业技能的培养，培养毕业后能够在IT行业、科研机构、企事业中从事软件开发、测试、维护和软件项目管理的高级软件工程技术人才。
    </p>
        <br>
    <p>
        软件工程专业以IT业需求为导向，培养具有良好综合素质和职业道德，掌握扎实的基础理论和专业知识，具有软件分析、设计、开发、测试与管理能力，具备较强工程实践能力、技术创新能力和团队精神，能快速适应软件工程新技术发展并具有国际视野和国际竞争力的高级软件工程师。专业实施灵活的“211”人才培养模式（其中,2年基础教育,1年面向企业的专业教育,1年企业顶岗实习），在教学上着力推动基于问题、基于项目和基于案例的学习，对于实践性强的课程，采取校企联合“双师制”培养，同时以大学生创新实践活动、科技大赛为补充，突出工程化培养。

        教师队伍采用专兼结合的用人机制，现有专职教师12人，其中高级职称7人，讲师5人，博士8人，硕士4人，其中6人具有国外留学或访学经历，此外,专业还从国内外知名软件企业、高校聘请兼职教师承担部分教学工作作为补充。专业教师主持或参加了多项国家、省、部、市及学校的纵向、横向科研和教研项目。获得省优秀教育科研成果奖一等奖、省优秀高等教育科学研究成果二等奖、省科技进步二等奖、三等奖、省高等学校优秀多媒体教学软件三等奖、市科技进步一等奖、省高等教育学会十一五规划课题三等奖等奖项。取得发明专利和实用新型专利10余项，软件著作权10余项。专业教师累计主编和参编出版教材13部，发表论文70余篇，其中EI及ISTP检索论文40余篇。

        软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，建立了校企合作的实习、实训基地。结合企业项目、师资、环境等对学生进行有针对性的工程能力训练，使学生具备综合运用所学知识解决复杂工程问题的能力。

        专业目前已经建立了华为、亿阳安全、东软、华信、北京思特奇、博彦集智、江苏乐建、华宇（大连）、青软、微洋科技等实习基地。
    </p>
        <br>
    <p>
        软件工程专业综合实验室，服务于专业的课程实验和创新创业项目，培养学生获得软件项目管理和开发经验，完成系统开发的实习、实训。软件工程专业综合实验室下设软件工程实验室（系统开发实训基地）、嵌入式技术实验室、移动开发实验室和IOS开发实验室。主要完成基于行业标准和技术的Rational统一过程和测试、软件体系结构、面向对象技术与UML、软件需求与分析、软件测试和质量保证、移动开发和IOS开发等课程的实验。同时，依托国家级大型软件企业，建立了校企合作的实习、实训基地。结合企业项目、师资、环境等对学生进行有针对性的工程能力训练，使学生具备综合运用所学知识解决复杂工程问题的能力。
    </p>
    </div>
</div>

<div>
    <%@include file="/WEB-INF/layout/footer.jsp"%>
</div>


<%--
导航依赖element，面包屑不依赖
<script type="text/javascript">--%>
<%--&lt;%&ndash;    导航依赖element&ndash;%&gt;--%>
<%--layui.use('element', function(){--%>
<%--    var element = layui.element;--%>
<%--    //一些事件触发--%>
<%--    element.on('tab(demo)', function(data){--%>
<%--        console.log(data);--%>
<%--    });--%>
<%--});--%>
<%--</script>--%>

</body>
</html>