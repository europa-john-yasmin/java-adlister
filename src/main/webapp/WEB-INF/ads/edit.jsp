<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="This Add Page"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Please edit your ad!</h1>
    <c:forEach var="ad" items="${single}">
    <div class="col-md-6">
        <form action="/ads/editAd" method="post">
            <h3>${ad.title}</h3>
            <label for="titleInput"><input type="text" name="titleInput" id="titleInput"
                                           placeholder="update title"></label>
            <p>${ad.description}</p>
            <label for="descriptionInput"><input type="text" name="descriptionInput" id="descriptionInput"
                                                 placeholder="update description"></label>
            <span class="form-check">
<%--            <p>Delete ad</p>--%>
                <input id="deleteAd" type="checkbox" class="form-check-input" name="deleteAd" value="true"
                       style="float: left; margin-top: 4px;>">
                <label class="form-check-label" for="deleteAd">Delete ad</label>
            </span>
            <br>
            <button type="submit" class="btn btn-primary">Submit Changes</button>
            <input type="hidden" name="ad-id" id="ad-id" value="${ad.id}">
        </form>
    </div>
    </c:forEach>


</body>
</html>
