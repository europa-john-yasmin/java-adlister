<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/partials/navbar.jsp"/>
<body>
<h1>Here are all the ads:</h1>

<c:forEach var="ad" items="${ads}">
    <div class="ad">
        <h2>${ad.title}</h2>
        <p>${ad.description}</p>
    </div>
</c:forEach>

</body>
</html>