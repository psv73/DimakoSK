<%@ page import="net.psv73.websait.util.Utils" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib tagdir="/WEB-INF/tags/page" prefix="page" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <page:header/>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
</head>
<body>
<div class="wrapper container">
    <header>
        <page:language/>
    </header>
    <div class="heading">
        <h1><%= Utils.getRecourceBundleValue("key.header.menu.contacts")%></h1>
    </div>
    <div class="row">
        <div class="col-xs-12 col-md-6">
            <div class="row">
                <div class="col-xs-6">
                    <p><b>Dimako Slovakia S.R.O.</b></p>
                    <p>IČO 47096063 <br>
                        DIČ 2023736902<br>
                        <a href="http://www.orsr.sk/zbl.asp?ID=263558&SID=2"><%= Utils.getRecourceBundleValue("key.contacts.register")%>
                        </a></p>
                    <p>Osadná, 2<br>
                        Bratislava 831 03<br>
                        Slovensko<br>
                        &phone; +421904543216 <br>
                        <a href="mailto:info@dimako-logistic.com">info@dimako-logistic.com</a>
                    </p>
                </div>
                <div class="col-xs-6 social">
                    <p><%= Utils.getRecourceBundleValue("key.contacts.job")%>
                    </p>
                    <address>
                        <p>Tuhovská, 1/A<br>
                            Bratislava 831 06<br>
                            Slovensko<br>
                            <img src="<%= request.getContextPath() %>/resources/img/flag/Ukraine_16.png"> ‎+380972441511
                            <br>
                            <img src="<%= request.getContextPath() %>/resources/img/flag/Kazakhstan_16.png">
                            ‎+‎‎77273505866
                            <br>
                            <img src="<%= request.getContextPath() %>/resources/img/flag/Slovakia_16.png">
                            ‎+‎‎421233046905
                            <br>
                            <%--<a href="viber://chat?number=‎380972441511" class="social-icon viber brightness" title="Viber +380972441511"></a>--%>
                            <a href="viber://forward?text=<Your Text>" class="social-icon viber brightness"
                               title="Viber +380972441511"></a>
                            <a href="whatsapp://send?phone=‎+380972441511" class="social-icon whatsapp brightness"
                               title="WhatsApp +380972441511"></a><br>
                            <a href="mailto:job@dimako-logistic.com">job@dimako-logistic.com</a>
                        </p>
                    </address>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 text-center">
            <p><%= Utils.getRecourceBundleValue("key.contacts.fizadres")%>
            </p>
            <iframe class="map"
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2659.8457255888493!2d17.187634615726406!3d48.19032387922779!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x476c8fa9dbffb0a1%3A0x287ad3d4319192de!2sTuhovsk%C3%A1+10145%2F1%2C+831+07+Bratislava!5e0!3m2!1sru!2ssk!4v1510488822185"
                    frameborder="0" style="border:1pt" allowfullscreen></iframe>
            <br/>
        </div>
    </div>
</div>
<page:footer/>
</body>
</html>
