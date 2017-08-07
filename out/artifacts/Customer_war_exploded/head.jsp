<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
</head>
<body style="text-align: center;">

<h1>客户关系管理系统</h1>
<br/>
<a href="${pageContext.request.contextPath }/servlet/AddCustomerServlet" target="main">添加客户</a>
<a href="${pageContext.request.contextPath }/servlet/ListCustomerServlet" target="main">查看客户</a>
</body>
</html>
