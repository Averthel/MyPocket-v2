<%--
  Created by IntelliJ IDEA.
  User: Ave
  Date: 06.03.2019
  Time: 21:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
    <title>Upss</title>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<h1>Coś poszło nie tak</h1>
    <a href="index.jsp">Spróbuj ponownie</a>
<jsp:include page="/WEB-INF/fragments/footer.jspf"/>
</body>
</html>
