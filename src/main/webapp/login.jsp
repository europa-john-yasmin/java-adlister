<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
    <jsp:include page="partials/bootstrapCSS.jsp"/>
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>


<%--<form action="./login.jsp" method="post">--%>
<%--    <div class="form-group">--%>
<%--        Enter username : <input type="text" name="username" placeholder="Username">--%>
<%--    </div>--%>
<%--    <div class="form-group">--%>
<%--        Enter password : <input type="password" name="password" placeholder="Password"><br>--%>
<%--        <input type="submit" value="Login">--%>
<%--    </div>--%>
<%--</form>--%>

<div class="container">
    <h3>Please Log In</h3>
    <form action="./login.jsp" method="post">
        <div class="form-group">
            Enter username : <input type="text" name="username" placeholder="Username">
        </div>
        <div class="form-group">
            Enter password : <input type="password" name="password" placeholder="Password"><br>
            <input type="submit" value="Login">
        </div>
    </form>
</div>

<%--https://stackoverflow.com/questions/5935892/if-else-within-jsp-or-jstl&ndash;%&gt;--%>

<%--https://stackoverflow.com/questions/8355787/how-do-i-check-two-or-more-conditions-in-one-cif--%>

<c:if test="${param.username == 'admin' && param.password == 'password'}">
    <%response.sendRedirect("/profile.jsp");%>
</c:if>

<jsp:include page="partials/bootstrapCDN.jsp"/>
</body>
</html>