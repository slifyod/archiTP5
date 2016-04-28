<%--
  Created by IntelliJ IDEA.
  User: linux
  Date: 26/04/16
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
  <head>
    <title>Home</title>
  </head>
  <body>
    <c:forEach var="book" items="${requestScope.books}">
        Name = <c:out value="${book.name}"/><br>

    </c:forEach>

    <a href="/login">Login</a>
  </body>
</html>
