<%@ tag import="net.psv73.websait.util.Utils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="frt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ tag pageEncoding="UTF-8" %>

<div class="newsLine">
<h3 class="text-center"><%= Utils.getRecourceBundleValue("key.news").toUpperCase()%></h3>
    <c:forEach items="${articles}" var="article">
        <p style="text-align: justify; text-justify: inter-word;">
            <strong><frt:formatDate pattern="<%= Utils.getDatePattern()%>" value="${article.date}"/>
            </strong> — ${article.text}
        </p>
    </c:forEach>

</div>