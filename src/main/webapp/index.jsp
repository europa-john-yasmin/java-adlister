<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! int counter = 0; %>
<% counter += 1; %>
<html>
<head>
    <title>Index</title>
    <jsp:include page="partials/bootstrapCSS.jsp"/>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<h1>The current count is <%= counter %>.</h1>

View the page source!

<%-- this is a JSP comment, you will *not* see this in the html --%>

<!-- this is an HTML comment, you *will* see this in the html -->
<jsp:include page="partials/bootstrapCDN.jsp"/>
</body>
</html>