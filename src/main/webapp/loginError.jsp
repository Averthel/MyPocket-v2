<%--
  Created by IntelliJ IDEA.
  User: Ave
  Date: 24.03.2019
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
    <title>Błąd logowania</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<h1>Logowanie nie powiodło się</h1>
<p>Podane przez Ciebie dane nie zostały odnalezione w bazie uzytkowników.</p>
<jsp:include page="/WEB-INF/fragments/footer.jspf"/>
</body>
</html>
