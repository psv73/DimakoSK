<%@ page import="net.psv73.websait.util.Utils" %><%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 05.02.2018
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<!DOCTYPE html>
<html>
<head>
    <title>DimakoSK</title>
</head>
<body>
    <jsp:include page="_menu.jsp"/>
    <h3>Login</h3>
    <form method="post" action="${pageContext.request.contextPath}/mcon/login">
        <input type="hidden" name="redirectID" value="${param.get(redirectID)}">
        <table border="0">
            <tr>
                <td>Login</td>
                <td><input type="text" name="name" value="${logginedUser.name}"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="text" name="password" value="${logginedUser.password}"></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Submit"><a href="${pageContext.request.contextPath}/"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
