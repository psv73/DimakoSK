<%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 22.11.2017
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="net.psv73.websait.Languages" %>
<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<%@ taglib prefix="frt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <h1>Users list</h1>
    </div>
    <p/>
    <div class="row">
        <div class="col-xs-12 text-center">
            <br>
            <table border="1" cellpadding="5" cellspacing="1" width="100%">
                <tr align="center">
                    <th align="center">UserName</th>
                    <th>Date</th>
                    <th>Article</th>
                    <th>Language</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                <c:forEach items="${articles}" var="article">
                    <tr>
                        <td>${article.id}</td>
                        <td><frt:formatDate pattern = "<%= Utils.getDatePattern()%>" value = "${article.date}"/></td>
                        <td>${article.text}</td>
                        <td>${article.language}</td>
                            <%--<td><a href="${pageContext.request.contextPath}/mcon/editArticle?code=${article.id}">Edit</a></td>--%>
                        <td>
                            <a href="${pageContext.request.contextPath}/mcon/editArticle?id=${article.id}">Edit</a>
                        </td>
                        <td><a href="${pageContext.request.contextPath}/mcon/deleteArticle?id=${article.id}">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <a href="${pageContext.request.contextPath}/mcon/addUser">Add article</a>&nbsp;&nbsp;
            <a href="${pageContext.request.contextPath}/mcon/logout">Logout</a>
        </div>
    </div>

</div>
<page:footer/>
</body>
</html>

