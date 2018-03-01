<%@ tag import="net.psv73.websait.util.Utils" %>
<%@ tag pageEncoding="UTF-8" %>
<footer>
    <div class="container">
        <div class="row">
            <div class="hidden-xs hidden-sm col-md-3 twitter">
                    <%--<h3><%= Utils.getRecourceBundleValue("key.header.menu.contacts")%></h3>--%>
                    <h3><%= Utils.getRecourceBundleValue("key.footer.contacts")%>
                    </h3>
                    <b>Dimako Slovakia S.R.O.</b><br>
                    &phone; +421904543216<br>
                    <a href="mailto:info@dimako-logistic.com">info@dimako-logistic.com</a>
            </div>
            <div class="hidden-xs col-sm-4 col-md-3 sitemap">
                <h3><%= Utils.getRecourceBundleValue("key.footer.map")%></h3>
                <div class="row">
                    <div class="col-xs-6">
                        <a href="<%= request.getContextPath() %>/about"><%= Utils.getRecourceBundleValue("key.header.menu.about")%></a>
                        <a href="<%= request.getContextPath() %>/carpark"><%= Utils.getRecourceBundleValue("key.header.menu.carpark")%></a>
                        <a href="<%= request.getContextPath() %>/vacancies"><%= Utils.getRecourceBundleValue("key.header.menu.vacancies")%></a>
                    </div>
                    <div class="col-xs-6">
                        <a href="<%= request.getContextPath() %>/gallery"><%= Utils.getRecourceBundleValue("key.header.menu.gallery")%></a>
                        <a href="<%= request.getContextPath() %>/contacts"><%= Utils.getRecourceBundleValue("key.header.menu.contacts")%></a>
                    </div>
                </div>
            </div>
            <div class="col-xs-4 visible-xs">
                <h3><%= Utils.getRecourceBundleValue("key.footer.map")%></h3>
                <a href="<%= request.getContextPath() %>/about"><%= Utils.getRecourceBundleValue("key.header.menu.about")%></a><br>
                <a href="<%= request.getContextPath() %>/carpark"><%= Utils.getRecourceBundleValue("key.header.menu.carpark")%></a><br>
                <a href="<%= request.getContextPath() %>/vacancies"><%= Utils.getRecourceBundleValue("key.header.menu.vacancies")%></a><br>
                <a href="<%= request.getContextPath() %>/gallery"><%= Utils.getRecourceBundleValue("key.header.menu.gallery")%></a><br>
                <a href="<%= request.getContextPath() %>/contacts"><%= Utils.getRecourceBundleValue("key.header.menu.contacts")%></a><br>
            </div>
            <div class="col-xs-8 col-sm-8 col-md-3 social">
                <h3><%= Utils.getRecourceBundleValue("key.footer.network")%>
                </h3>
                <a href="https://www.facebook.com/DimakoSlovakia/" class="social-icon-grey facebook brightness" title="Facebook"></a>
                <a href="https://www.instagram.com/dimako2013/" class="social-icon-grey instagram brightness" title="Instagram"></a>
                <a href="viber://chat?number=‎+380972441511" class="social-icon-grey viber brightness" title="Viber %2B380972441511"></a>
                <a href="whatsapp://send?phone=‎+380972441511" class="social-icon-grey whatsapp brightness" title="WhatsApp +380972441511"></a>
            </div>
            <div class="col-xs-8 col-md-3 footer-logo" align="right">&copy; 2017
                <script>new Date().getFullYear() > 2017 && document.write("-" + new Date().getFullYear());</script>
                PSV73
            </div>
        </div>
    </div>
</footer>

<script type="text/javascript">
    $(document).ready(function () {
        var h = $("#main").outerHeight();
        if (h > 20) {
            $(".newsLine").css({"height": h });
        }
    })
</script>

<!-- Код тега ремаркетинга Google -->
<!--------------------------------------------------
С помощью тега ремаркетинга запрещается собирать информацию, по которой можно идентифицировать личность пользователя. Также запрещается размещать тег на страницах с контентом деликатного характера. Подробнее об этих требованиях и о настройке тега читайте на странице http://google.com/ads/remarketingsetup.
--------------------------------------------------->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 825045659;
var google_custom_params = window.google_tag_params;
var google_remarketing_only = true;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/825045659/?guid=ON&amp;script=0"/>
</div>
</noscript>

<!-- Global site tag (gtag.js) - Google AdWords: 825045659 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-825045659"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-825045659');
</script>

<!-- Event snippet for Водители conversion page -->
<script>
  gtag('event', 'conversion', {'send_to': 'AW-825045659/6PlgCPWyqnoQm-W0iQM'});
</script>
