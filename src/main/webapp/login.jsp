<%--
  Created by IntelliJ IDEA.
  User: Ave
  Date: 24.03.2019
  Time: 17:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
    <title>Zaloguj się</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<h1>Logowanie: </h1>
    <form action="j_security_check" method="post">
        Login: <input type="text" name="j_username">
        <br>
        Password: <input type="password" name="j_password">
        <input type="submit" value="Zaloguj">
    </form>
<jsp:include page="/WEB-INF/fragments/footer.jspf"/>
</body>
</html>
