<%--
  Created by IntelliJ IDEA.
  User: Ave
  Date: 03.03.2019
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="${pageContext.request.contextPath}/resources/css/styles.css" type="text/css" rel="stylesheet">
    <title>MyPocket</title>
</head>
<body>
<main id="main">
    <jsp:include page="/WEB-INF/fragments/header.jspf"/>


    <article>
        <section>
            <div class="westSide">
                <h1>Twój Portfel</h1>

                <form action="ProductServlet" method="post">
                    <input placeholder="Nazwa produktu" type="text" name="name">
                    <br>
                    <select name="category">
                        <option>Spożywcze</option>
                        <option>Ubrania</option>
                        <option>Opłaty/Rachunki</option>
                        <option>Inne</option>
                    </select>
                    <br>
                    <textarea placeholder="Opis" rows="5" cols="33" name="description"></textarea>
                    <br>
                    <input placeholder="cena" type="number" name="price" step="0.01"> <input placeholder="ilość"
                                                                                             type="number" step="0.01"
                                                                                             name="count">
                    <br/><br/>
                    Szukaj: <input type="radio" name="option" value="search"><br>
                    Dodaj: <input type="radio" name="option" value="add"><br>
                    Modyfikuj: <input type="radio" name="option" value="update"><br>
                    Usuń: <input type="radio" name="option" value="delete"><br>
                    <br>
                    <input type="submit" value="Wyślij">
                </form>
            </div>
        </section>

        <div class="eastSide">
            <aside>
                <nav>
                    <br/><br/>
                    <div>
                        <h2>Register Panel</h2>
                        <form action="UserServlet" method="post">
                            <input placeholder="Nazwa użytkownika" type="text" name="username">
                            <br/>
                            <input placeholder="E-mail" type="email" name="email">
                            <br/>
                            <input placeholder="Hasło" type="password" name="password">
                            <br/>
                            <button type="submit" name="register" value="register">Zarejestruj się!</button>
                            <button type="submit" name="update" value="update">Zmień email i hasło</button>
                        </form>
                    </div>
                    <br/>
                    <div>
                        <form action="UserServlet" method="post">
                            <input placeholder="Szukaj..." type="text" name="findUser">
                            <br/>
                            <button type="submit" name="search" value="search">Szukaj!</button>
                        </form>
                    </div>
                    <br/>
                    <div>
                        <form action="UserServlet" method="post">
                            <h3>Usuń usera</h3>
                            <input placeholder="Nazwa użytkownika" type="text" name="userForDelete">
                            <br/>
                            <button type="submit" name="delete" value="delete">Usuń!</button>
                        </form>
                    </div>
                    <br/><br/>
                    <div class="admin">
                        <a href="admin.jsp">Zaloguj sie do panelu administratora</a>
                    </div>
                </nav>
            </aside>
        </div>
        <div style="clear:both;"></div>

    </article>
</main>


<jsp:include page="/WEB-INF/fragments/footer.jspf"/>

</body>
</html>