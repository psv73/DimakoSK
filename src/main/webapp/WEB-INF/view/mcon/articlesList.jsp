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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<%@ taglib prefix="frt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<date-util format="${Utils.getDatePattern()}"></date-util>
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
    <p/>
    <div class="row">
        <div class="col-xs-12 text-center">
            <form class="row" method="post" action="${pageContext.request.contextPath}/mcon/articlesList">
                <%--<frt:formatDate value="${dateStart}" pattern="yyyy-MM-dd" var="date1"/>--%>
                <span>From</span>
                <input type="date" name="dateStart" value="<frt:formatDate pattern = "<%= Utils.DATEFORMAT%>"
         value = "${dateStart}" />">
                <span>to</span>
                <input type="date" name="dateEnd" value="<frt:formatDate pattern = "<%= Utils.DATEFORMAT%>"
         value = "${dateEnd}" />">
<%--                    <div class='col-md-5'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker6'>
                                <input type='text' class="form-control"
                                       name="dateStart" value="<frt:formatDate pattern = "<%= Utils.DATEFORMAT%>"
         value = "${dateStart}" />"/>
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                             </span>
                            </div>
                        </div>
                    </div>
                    <div class='col-md-5'>
                        <div class="form-group">
                            <div class='input-group date' id='datetimepicker7'>
                                <input type='text' class="form-control" name="dateEnd" value="<frt:formatDate pattern = "<%= Utils.DATEFORMAT%>"
         value = "${dateEnd}" />"/>
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-calendar"></span>
                            </span>
                            </div>
                        </div>
                    </div>--%>
                <span>Language</span>
                <select name="lang">
                    <c:forEach items="<%=Languages.values()%>" var="item">
                        <option value="${item}" ${item == lang ? 'selected' : ''}>${item}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Show">
            </form>
            <br>
            <table border="1" cellpadding="5" cellspacing="1" width="100%">
                <tr align="center">
                    <th>ID</th>
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
            <a href="${pageContext.request.contextPath}/mcon/addArticle">Add article</a>
            <a href="${pageContext.request.contextPath}/mcon/logout">Logout</a>
        </div>
    </div>

</div>
<page:footer/>
<script type="text/javascript">
    $(function () {
        $('#datetimepicker6').datetimepicker({
            locale: '${Utils.getCurrentLanguage()}',
        });
        $('#datetimepicker7').datetimepicker({
            useCurrent: false, //Important! See issue #1075
            locale: '${Utils.getCurrentLanguage()}'
        });
        $("#datetimepicker6").on("dp.change", function (e) {
            $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
        });
        $("#datetimepicker7").on("dp.change", function (e) {
            $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
        });
    });
</script>
</body>
</html>

