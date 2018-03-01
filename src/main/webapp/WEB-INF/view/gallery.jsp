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
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.gallery")%>
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-8" style="padding-top: 17px" id="main">
            <div class="row">
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/iveco_yellow.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/iveco_side_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/iveco_side.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/iveco_yellow_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/iveco_inside.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/iveco_inside_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_back.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_back_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_front.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_front_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_headlamp.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_headlamp_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_inside2.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_inside2_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_inside3.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_inside3_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_inside4.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_inside4_preview.jpg"
                             class="img-responsive img-thumbnail brightness" alt="">
                    </a>
                </div>
                <div class="col col-xs-6 col-md-4">
                    <a data-fancybox="carpark" title="Truck"
                       href="<%= request.getContextPath() %>/resources/img/carpark/man_inside1.jpg">
                        <img src="<%= request.getContextPath() %>/resources/img/carpark/man_inside1_preview.jpg"
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
