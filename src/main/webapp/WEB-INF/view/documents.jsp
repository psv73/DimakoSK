<%@ page import="net.psv73.websait.util.Utils" %><%--
  Created by IntelliJ IDEA.
  User: Sergey
  Date: 22.11.2017
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
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
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.documents")%></h1>
    </div>
    <div class="row">
        <div class="col-xs-6 col-sm-3 col-sm-offset-3 col-md-offset-3 col-md-3 text-center">
            <p><%= Utils.getRecourceBundleValue("key.documents.license")%></p>
            <%--<a data-fancybox data-src="<%= request.getContextPath() %>/resources/img/License.pdf" href="javascript:;">--%>
            <a href="<%= request.getContextPath() %>/resources/img/License.pdf" target="_blank">
                <img class="license img-responsive img-thumbnail brightness"
                     src="<%= request.getContextPath() %>/resources/img/license_preview.png"
                     alt="License" title="<%= Utils.getRecourceBundleValue("key.documents.license")%>">
            </a>
        </div>
        <div class="col-xs-6 col-sm-3 col-sm-offset-0 col-md-offset-0 col-md-3 text-center">
            <p><%= Utils.getRecourceBundleValue("key.documents.insurance")%></p>
            <%--<a data-fancybox data-src="<%= request.getContextPath() %>/resources/img/License.pdf" href="javascript:;">--%>
            <a href="<%= request.getContextPath() %>/resources/img/INSURANCE.PDF" target="_blank">
                <img class="license img-responsive img-thumbnail brightness"
                     src="<%= request.getContextPath() %>/resources/img/insurance_preview.png"
                     alt="Insurance" title="<%= Utils.getRecourceBundleValue("key.documents.insurance")%>">
            </a>
        </div>
    </div>

</div>
<page:footer/>
</body>
</html>
