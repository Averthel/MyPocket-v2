<%@ page import="pl.ave.model.User" %><%--
  Created by IntelliJ IDEA.
  User: Ave
  Date: 17.03.2019
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% User user = (User)request.getAttribute("user"); %>
<!DOCTYPE html>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
    <title>Title</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
    <h2>Wykonano operacje: <%= request.getAttribute("operation") %> </h2>
<jsp:include page="/WEB-INF/fragments/footer.jspf"/>

</body>
</html>
