<%--
  Created by IntelliJ IDEA.
  User: bojan
  Date: 2020-08-07
  Time: 16:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1" cellpadding="2" cellspacing="2">
    <tr>
        <td>
            Nazwa produktu
        </td>
        <td>
            Cena produktu
        </td>
        <td>
            Ilość
        </td>
        <td>
            Dodaj do koszyka
        </td>
    </tr>
    <c:forEach var="product" items="${products}">
        <tr>
            <td>
                <c:out value="${product.name}"></c:out>
            </td>
            <td>
                <c:out value="${product.price}"></c:out>
            </td>
            <form  method="get">
                <td>
                    <input type="number"  name="quantity"/>
                </td>
                <td>
                    <button type="submit" value="${product.id}" name="id">Dodaj</button>
                </td>

            </form>
        </tr>
    </c:forEach>
</table>
</body>
</html>
