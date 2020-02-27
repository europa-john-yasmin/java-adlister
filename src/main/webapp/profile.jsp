<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Profile</title>
    <jsp:include page="partials/head.jsp"/>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>

<h1>Welcome ${param.username}</h1>
</body>
</html>