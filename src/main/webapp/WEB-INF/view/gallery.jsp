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
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.gallery")%></h1>
    </div>
    <div class="row">
        <div class="col-xs-8" id="main">
            <p/>
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
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/20190506_172607.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/20190506_172607_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/20190703_165249.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/20190703_165249_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0000.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0000_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0001.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0001_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0002.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0002_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0003.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0003_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0006.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0006_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0007.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0007_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0009.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0009_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0012.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0012_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0013.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0013_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0014.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0014_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0015.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0015_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0018.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0018_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0020.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0020_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0021.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0021_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0022.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0022_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0023.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0023_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0025.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0025_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
        <div class="col col-xs-6 col-md-4 col-lg-3">
            <a data-fancybox="carpark" title="Truck"
               href="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0026.jpg">
                <img src="<%= request.getContextPath() %>/resources/img/gallery/IMG-20190726-WA0026_preview.jpg"
                     class="img-responsive img-thumbnail brightness" alt="">
            </a>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>
