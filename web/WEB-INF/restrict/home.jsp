<%--
  Created by IntelliJ IDEA.
  User: linux
  Date: 28/04/16
  Time: 10:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home User</title>
</head>
<body>

    <c:forEach var="borrow" items="${requestScope.borrows}">
        <c:set var="book" value="${borrow.book}"/>
        <c:out value="${book}"/> deadline = <c:out value="${borrow.deadline}"/></br>
    </c:forEach>
</body>
</html>
