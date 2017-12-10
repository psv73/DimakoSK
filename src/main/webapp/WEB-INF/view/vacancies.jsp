<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
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
        <div class="col-xs-12" align="justify">
            <img src="<%= request.getContextPath() %>/resources/img/happydriver.jpg" alt="truck" class="office img-responsive pull-right img-thumbnail">
            <%= Utils.getRecourceBundleValue("key.vacancies")%>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>
