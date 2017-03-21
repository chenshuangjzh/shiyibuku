<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <meta name="google-signin-client_id" content="969341111856-fi11ji34j6fj2ipqk74an1astlhckepn.apps.googleusercontent.com">
    <title>chenshuangjzh</title>
    <link rel="stylesheet" href="static/plugin/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/style_index.css">
    <link rel="shortcut icon" href="/favicon.ico"/>
    <link rel="search" type="application/opensearchdescription+xml" href="static/xml/opensearch.xml" title="chenshuangjzh" />
</head>
<body>
    <jsp:include page="/WEB-INF/view/include/nav.jsp"/>

    <div class="container">
        <div class="row">
            <div class="col-xs-12 heart">
                <i class="fa fa-heart"></i>
            </div>
            <div class="col-xs-12 title">
                <span>Build to celebrate our 1314th.</span>
            </div>
        </div>
    </div>

    <script src="static/plugin/bootstrap/js/bootstrap.min.js"></script>
    <script src="static/js/js.cookie.js"></script>
    <script src="static/js/nav.js"></script>
</body>
</html>
