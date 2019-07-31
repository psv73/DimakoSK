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
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.carpark")%></h1>
    </div>
    <div class="row">
        <div class="col-xs-8" id="main">
            <div class="row">
                <div class="col-xs-12" align="justify">
                    <%= Utils.getRecourceBundleValue("key.carpark")%>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/carpark2.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/carpark2400.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark"
                       href="<%= request.getContextPath() %>/resources/img/carpark/carpark5.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/carpark5400.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark"
                       href="<%= request.getContextPath() %>/resources/img/carpark/carpark6.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/carpark6400.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/carpark7.jpg"
                       data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/carpark7400.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/man.jpg"
                       data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/reno.jpg"
                       data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/reno_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/20190703_162953.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/20190703_162953_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0004.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0004_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0008.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0008_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0011.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0011_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0016.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0016_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0017.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0017_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col-xs-6 col-md-4 col-lg-4">
                    <a data-fancybox="carpark" href="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0028.jpg" data-caption="Our new cars">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/IMG-20190726-WA0028_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
            </div>
        </div>
        <div class="col-xs-4" align="left">
            <page:news/>
        </div>
    </div>
</div>
<page:footer/>

</body>
</html>
