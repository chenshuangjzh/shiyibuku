<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<base href="<%=basePath %>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>chenshuangjzh</title>
    <link rel="stylesheet" href="static/plugin/bootstrap/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="static/css/style-writing.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="shortcut icon" href="/favicon.ico"/>
</head>
<body>
<jsp:include page="/WEB-INF/view/include/nav.jsp">
    <jsp:param name="current" value="writing"></jsp:param>
</jsp:include>

<div class="container-fluid">
    <div class="row">
        <div class="col-xs-6 articleContainer col-xs-offset-1">
            <div class="article">
                <label>原本超凡脱俗又忧郁神秘的她，怎么18岁起就残了呢？！</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>从明天起，做一个幸福的人</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>我听过最美的爱情</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>「黄油相机」爱是奶酪，也是陷阱</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>【特别策划】英文情诗翻译大赛</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>生命无需退缩：不要羞怯、勇敢尝试、然后收获和成长</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>看了多少书不重要，输出了什么才重要</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>柳如是：与伊深怜低语</label>
            </div>
            <div class="articleLine"></div>
            <div class="article">
                <label>再见野孩子——杨千嬅的少女情愁</label>
            </div>
        </div>
        <div class="col-xs-3 nav-right">
            <div class="userInfoContainer"></div>
            <div class="userInfo2"></div>
            <div class="userInfo2"></div>
        </div>
        <div class="col-xs-1">
            <div class="addArticle">
                <a href="writing/new"><i class="fa fa-pencil-square-o"></i></a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="bottomInfo"></div>
        </div>
    </div>
</div>

<script src="static/js/jquery-1.11.3.min.js"></script>
<script src="static/plugin/bootstrap/js/bootstrap.min.js"></script>
<script src="static/js/js.cookie.js"></script>
<script src="static/js/nav.js"></script>
</body>
</html>