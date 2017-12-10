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
    </div>
    <h1>Page ${requestScope.Filename} not found!</h1>
</div>
<page:footer/>
</body>
</html>