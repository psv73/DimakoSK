<%@ tag import="net.psv73.websait.util.Utils" %>
<%@ tag pageEncoding="UTF-8" %>
<div class="header">
    <div class="logo_and_image">
        <a href="<%= request.getContextPath() %>/about"><img
                src="<%= request.getContextPath() %>/resources/img/Dimako_ENG.png" alt="Dimako logo"
                width="30%"></a>
        <a href="<%= request.getContextPath() %>/about"><img
                src="<%= request.getContextPath() %>/resources/img/trucks.png" alt="Trucks" width="69%"
                align="right"></a>
    </div>
    <div class="lang_block">
        <a href="?lang=sk" title="Slovenčina" onclick="SetCookie('lang','sk');return false;">
            <img src="<%= request.getContextPath() %>/resources/img/flag/Slovakia.png" alt="" width="32px"
                 class="brightness">
        </a>
        <a href="?lang=en" title="English" onclick="SetCookie('lang','en');return false;">
            <img src="<%= request.getContextPath() %>/resources/img/flag/United-Kingdom.png" alt="" width="32px"
                 class="brightness">
        </a>
        <a href="?lang=ru" title="Русский" onclick="SetCookie('lang','ru');return false;">
            <img src="<%= request.getContextPath() %>/resources/img/flag/Russia.png" alt="" width="32px"
                 class="brightness">
        </a>
        <a href="?lang=de" title="Deutsch" onclick="SetCookie('lang','de');return false;">
            <img src="<%= request.getContextPath() %>/resources/img/flag/Germany.png" alt="" width="32px"
                 class="brightness">
        </a>
    </div>
</div>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed right" data-toggle="collapse"
                    data-target="#navbar-main"
                    aria-expanded="false">
                <span class=sr-only>Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <%--<a class="navbar-brand" href="#">Dimako Slovakia S.R.O</a> --%>
        </div>
        <div class="collapse navbar-collapse" id="navbar-main">
            <ul class="nav navbar-nav">
                <li${pageName.equals("/about")?" class='active'" : ""}>
                    <a href="<%= request.getContextPath() %>/about"><%= Utils.getRecourceBundleValue("key.header.menu.about")%>
                    </a>
                </li>
                <li${pageName.equals("/carpark")?" class='active'" : ""}>
                    <a href="<%= request.getContextPath() %>/carpark"><%= Utils.getRecourceBundleValue("key.header.menu.carpark")%>
                    </a>
                </li>
                <li${pageName.equals("/vacancies")?" class='active'" : ""}>
                    <a href="<%= request.getContextPath() %>/vacancies"><%= Utils.getRecourceBundleValue("key.header.menu.vacancies")%>
                    </a>
                </li>
                <li${pageName.equals("/gallery")?" class='active'" : ""}>
                    <a href="<%= request.getContextPath() %>/gallery"><%= Utils.getRecourceBundleValue("key.header.menu.gallery")%>
                    </a>
                </li>
                <li${pageName.equals("/documents")?" class='active'" : ""}>
                    <a href="<%= request.getContextPath() %>/documents"><%= Utils.getRecourceBundleValue("key.header.menu.documents")%>
                    </a>
                </li>
                <li${pageName.equals("/contacts") ? " class='active'" : ""}>
                    <a href="<%= request.getContextPath() %>/contacts"><%= Utils.getRecourceBundleValue("key.header.menu.contacts")%>
                    </a>
                </li>
                <%--
                                <li<%= request.getAttribute("pageName").equals("/about")?" class='active'":""%>>
                                    <a href="<%= request.getContextPath() %>/about"><%= Utils.getRecourceBundleValue("key.header.menu.about")%></a>
                                </li>
                                <li<%=request.getAttribute("pageName").equals("/carpark")?" class='active'":""%>>
                                    <a href="<%= request.getContextPath() %>/carpark"><%= Utils.getRecourceBundleValue("key.header.menu.carpark")%></a>
                                </li>
                                <li<%=request.getAttribute("pageName").equals("/vacancies")?" class='active'":""%>>
                                    <a href="<%= request.getContextPath() %>/vacancies"><%= Utils.getRecourceBundleValue("key.header.menu.vacancies")%></a>
                                </li>
                                <li<%=request.getAttribute("pageName").equals("/gallery")?" class='active'":""%>>
                                    <a href="<%= request.getContextPath() %>/gallery"><%= Utils.getRecourceBundleValue("key.header.menu.gallery")%></a>
                                </li>
                                <li<%=request.getAttribute("pageName").equals("/documents")?" class='active'":""%>>
                                    <a href="<%= request.getContextPath() %>/documents"><%= Utils.getRecourceBundleValue("key.header.menu.documents")%></a>
                                </li>
                                <li<%=request.getAttribute("pageName").equals("/contacts")?" class='active'":""%>>
                                    <a href="<%= request.getContextPath() %>/contacts"><%= Utils.getRecourceBundleValue("key.header.menu.contacts")%></a>
                                </li>
                --%>
            </ul>
        </div>
    </div>
</nav>
<script type="text/javascript">
    function SetCookie(name, val) {
        if (GetCookie(name) != "") DeleteCookie(name);

        document.cookie = name + "=" + val + "; path=/";
        location.reload(true);
    }

    function DeleteCookie(name) {
        var date = new Date();
        date.setTime(date.getTime() - 1);
        document.cookie = name + "=; expires=" + date.toGMTString();
    }

    function GetCookie(name) {
        var r = document.cookie.match("(^|;) ?" + name + "=([^;]*)(;|$)");
        if (r) return r[2];
        else return "";
    }
</script>