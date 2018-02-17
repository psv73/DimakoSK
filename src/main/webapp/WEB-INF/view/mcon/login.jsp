<%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 05.02.2018
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <page:header/>
</head>
<body>
<div class="wrapper container">
    <header>
        <page:language/>
    </header>
    <div class="heading">
        <h1>Login</h1>
    </div>
    <div class="row">
        <div class="col-xs-12 text-center">
            <h3 style="color: red">${error}</h3><br>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <form method="post" action="${pageContext.request.contextPath}/mcon/login">
                <input type="hidden" name="redirectID" value="${param.get(redirectID)}">
                <table border="0">
                    <tr>
                        <td>Login</td>
                        <td><input type="text" name="name" value="${userName}"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password"></td>
                    </tr>
                    <tr>
                        <td colspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td align="center">
                            <input type="submit" value="Submit"><a href="${pageContext.request.contextPath}/"/>&nbsp;&nbsp;&nbsp;
                            <a href="${pageContext.request.contextPath}/">Cancel</a>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>
