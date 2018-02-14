<%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 22.11.2017
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page import="net.psv73.websait.Languages" %>
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
        <h1>Add article</h1>
    </div>
    <p/>
    <div class=""row>
        <h3>${error}</h3>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <form method="post" action="${pageContext.request.contextPath}/mcon/addArticle">
                <table border="0" cellspacing="5" cellpadding="1">
                    <%--                    <tr>
                                            <td>ID</td>
                                            <td><input type="text" readonly name="id" value="${article.id}"></td>
                                        </tr>--%>
                    <tr>
                        ${date}
                        <td>Date</td>
                        <td><input type="date" name="date" value="<frt:formatDate pattern = "<%=Utils.DATEFORMAT%>"
         value = "${date}"/>"></td>
                    </tr>
                    <tr>
                        <td>News</td>
                        <td><textarea type="text" name="text" row="10" cols="100">${article.text}</textarea></td>
                    </tr>
                    <tr>
                        <td>Language</td>
                        <td>
                            <select name="lang">
                                <c:forEach items="<%=Languages.values()%>" var="item">
                                    <option value="${item}" ${item == lang ? 'selected' : ''}>${item}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Submit">
                            <a href="${pageContext.request.contextPath}/mcon/articlesList">Cancel</a></td>
                        </td>
                    </tr>
                </table>
            </form>
            <a href="${pageContext.request.contextPath}/">Home</a>
        </div>
    </div>
</div>
</body>
</html>
