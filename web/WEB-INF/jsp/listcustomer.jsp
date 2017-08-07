<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>列出所有客户</title>
</head>
<body style="text-align: center">
<table frame="border" width="85%" align="center">
    <tr>
        <td>客户姓名</td>
        <td>性别</td>
        <td>生日</td>
        <td>手机</td>
        <td>邮箱</td>
        <td>爱好</td>
        <td>类型</td>
        <td>备注</td>
        <td>操作</td>
    <tr>

        <c:forEach var="c" items="${requestScope.pageBean.list}">
    <tr>
        <td>${c.name }</td>
        <td>${c.gender }</td>
        <td>${c.birthday }</td>
        <td>${c.cellphone }</td>
        <td>${c.email }</td>
        <td>${c.preference }</td>
        <td>${c.type }</td>
        <td>${c.description }</td>
        <td>
            <a href="#">修改</a>
            <a href="#">删除</a>
        </td>
    <tr>
        </c:forEach>
</table>
<br>
<script type="text/javascript">

    function gotoPage(currentPage) {
        window.location.href = '${pageContext.request.contextPath}/servlet/ListCustomerServlet?currentPage=' + currentPage;
    }

</script>

共[${pageBean.totalRecord}]条记录，每页[${pageBean.pageSize}]条，共[${pageBean.totalPage}]页，
当前第[${pageBean.currentPage}]页，&nbsp;&nbsp;
<a href="javascript:;" onclick="gotoPage(${pageBean.previousPage})">上一页</a>
<c:forEach var="pageNum" items="${pageBean.pageBar}">
    <a href="javascript:;" onclick="gotoPage(${pageNum})">${pageNum}</a>
</c:forEach>
<a href="javascript:;" onclick="gotoPage(${pageBean.nextPage})">下一页</a>
</body>
</html>
