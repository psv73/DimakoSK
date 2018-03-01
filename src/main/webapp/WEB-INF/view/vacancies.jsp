<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.vacancies")%></h1>
    </div>
    <div class="row">
        <div class="col-xs-8" align="justify" id="main">
            <img src="<%= request.getContextPath() %>/resources/img/happydriver.jpg" alt="truck" class="office img-responsive pull-right img-thumbnail">
            <%= Utils.getRecourceBundleValue("key.vacancies")%>
            <c:set var = "lang" scope = "request" value = "${'ru'}"/>
            <c:set var = "cur" scope = "request" value = "<%=Utils.getCurrentLanguage()%>"/>
            <c:if test="${cur.equals(lang)}">
                <p><strong>Более подробную информацию об условиях вы сможете найти в разделе
                    <a href="${pageContext.request.contextPath}/faq">Часто задаваемые вопросы (F.A.Q.)</a></strong></p>
            </c:if>
        </div>
        <div class="col-xs-4" align="left">
                <page:news/>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>
