<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
</head>
<body>
<h3>Please Log In</h3>
<form action="./login.jsp" method="post">
    <label for="username">Username: </label>
    <input id="username" type="text" name="username" placeholder="Username"/>
    <br>
    <label for="password">Password:</label>
    <input id="password" type="password" name="password" placeholder="Password"/>
    <br>
    <input type="submit" value="submit">
</form>

<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <%response.sendRedirect("/profile.jsp");%>
</c:if>
</body>
</html>
