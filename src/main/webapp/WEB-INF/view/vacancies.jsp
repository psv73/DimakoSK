<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <page:header/>
</head>
<body>
<div class="wrapper container" style="padding: 0 0 0 0;">
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
    <div class="row" align="center" >
        <p>
            <img src="<%= request.getContextPath() %>/resources/img/flag/Ukraine_16.png"> ‎+380972441511
            <img src="<%= request.getContextPath() %>/resources/img/flag/Russia_16.png"> ‎+74994906960
            <img src="<%= request.getContextPath() %>/resources/img/flag/Kazakhstan_16.png">‎ +‎‎77273505866
            <img src="<%= request.getContextPath() %>/resources/img/flag/Slovakia_16.png">‎ +‎‎421233046905
        </p>
    </div>
</div>
<page:footer/>
</body>
</html>
