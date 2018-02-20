<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="frt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.about")%>
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-8" align="justify">
            <img src="<%= request.getContextPath() %>/resources/img/Office.jpg" alt="office"
                 class="office img-responsive pull-right img-thumbnail">
            <%= Utils.getRecourceBundleValue("key.about")%>
        </div>
        <div class="col-xs-4" align="left">
            <div class="row">
                <page:news/>
            </div>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>
