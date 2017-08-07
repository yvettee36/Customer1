<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>添加客户</title>
    <script type="text/javascript" src="${pageContext.request.contextPath }/js/ShowCalendar.js"></script>
    <script type="text/javascript">
        function makepre() {
            var pres = document.getElementsByName("pre");
            var preference = "";
            for (var i = 0; i < pres.length; i++) {
                var input = pres[i];
                if (input.checked == true) {
                    preference = preference + input.value + ",";
                }
            }
            preference = preference.substr(0, preference.length - 1);

            var form = document.getElementById("form");
            var input = document.createElement("input");
            input.type = "hidden";
            input.name = "preference";
            input.value = preference;

            form.appendChild(input);
            return true;
        }
    </script>
</head>
<body style="text-align: center">
<form id="form" action="${pageContext.request.contextPath }/servlet/AddCustomerServlet" method="post"
      onsubmit="return makepre()">
    <table border="1" width="50%" align="center">
        <tr>
            <td>客户姓名</td>
            <td>
                <input type="text" name="name">
            </td>
        </tr>

        <tr>
            <td>客户性别</td>
            <td>
                <c:forEach var="gender" items="${genders}">
                    <input type="radio" name="gender" value="${gender }">${gender }
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td>生日</td>
            <td>
                <input type="text" name="birthday" onClick="showCalendar(this.id)" id="birthday">
            </td>
        </tr>

        <tr>
            <td>手机</td>
            <td>
                <input type="text" name="cellphone">
            </td>
        </tr>

        <tr>
            <td>邮箱</td>
            <td>
                <input type="text" name="email">
            </td>
        </tr>


        <tr>
            <td>爱好</td>
            <td>
                <c:forEach var="p" items="${preferences}">
                    <input type="checkbox" name="pre" value="${p }">${p }
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td>客户类型</td>
            <td>
                <c:forEach var="type" items="${types}">
                    <input type="radio" name="type" value="${type }">${type }
                </c:forEach>
            </td>
        </tr>

        <tr>
            <td>客户备注</td>
            <td>
                <textarea rows="5" cols="60" name="description"></textarea>
            </td>
        </tr>

        <tr>
            <td>
                <input type="reset" value="重置">
            </td>
            <td>
                <input type="submit" value="添加客户">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
