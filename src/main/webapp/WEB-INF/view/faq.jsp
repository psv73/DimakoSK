<%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 21.02.2018
  Time: 12:15
  To change this template use File | Settings | File Templates.
--%>
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
        <h1>F.A.Q.
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-8" align="justify">
            <%= Utils.getRecourceBundleValue("key.faq")%>
        </div>
        <div class="col-xs-4" align="left">
                <page:news/>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>

