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
        <h1>News list</h1>
    </div>
    <jsp:include page="_menu.jsp"/>
    <div class="col-xs-12 text-center">
        <h3 style="color: red;">${error}</h3>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <form method="post" action="${pageContext.request.contextPath}/mcon/articlesList">
                <span>From</span>
                <input type="date" style="height: 2em" name="dateStart" value="<frt:formatDate pattern = "<%= Utils.DATEFORMAT%>"
                         value = "${dateStart}" />">
                <span>to</span>
                <input type="date" style="height: 2em" name="dateEnd" value="<frt:formatDate pattern = "<%= Utils.DATEFORMAT%>"
                         value = "${dateEnd}" />">
                <span>Language</span>
                <select name="articleLang">
                    <c:forEach items="<%=Languages.values()%>" var="item">
                        <option value="${item}" ${item == articleLang ? 'selected' : ''}>${item}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Show">
            </form>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Article</th>
                    <th>Language</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${articles}" var="article">
                    <tr>
                        <td><frt:formatDate pattern="<%= Utils.getDatePattern()%>"
                                            value="${article.date}"/></td>
                        <td style="text-align:justify; text-justify: inter-word;">${article.text}</td>
                        <td align="center">${article.language}</td>
                        <td align="center">
                            <a href="${pageContext.request.contextPath}/mcon/editArticle?id=${article.id}">Edit</a>
                        </td>
                        <td align="center"><a
                                href="${pageContext.request.contextPath}/mcon/deleteArticle?id=${article.id}"
                                onclick="delA(${article.id});return false;">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <br>
        </div>
    </div>
</div>

<page:footer/>
<script type="text/javascript">
    function delA(id) {
        if (confirm("Are you really wont delete article?")) {
            location.href = "${pageContext.request.contextPath}/mcon/deleteArticle?id=" + id;
        }
    }
</script>
</body>
</html>

