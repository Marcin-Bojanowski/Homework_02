<%--
  Created by IntelliJ IDEA.
  User: bojan
  Date: 2020-08-07
  Time: 21:44
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
        <td>
            Wyjmij z koszyka koszyka
        </td>
        <td>
            Usuń z koszyka
        </td>
    </tr>
    <c:forEach var="cartItem" items="${cart.cartItems}">
        <tr>
            <td>
                <c:out value="${cartItem.product.name}"></c:out>
            </td>
            <td>
                <c:out value="${cartItem.product.price}"></c:out>
            </td>
            <td>
                <c:out value="${cartItem.quantity}"></c:out>
            </td>
            <form method="get">
                <td>
                    <button type="submit" value="${cartItem.product.id}" name="idPlus">Dodaj</button>
                </td>
                <td>
                    <button type="submit" value="${cartItem.product.id}" name="idMinus">Odejmij</button>
                </td>
                <td>
                    <button type="submit" value="${cartItem.product.id}" name="idDelete">Usuń</button>
                </td>
            </form>
        </tr>
    </c:forEach>
</table>
<br><br>
W koszyku jest ${cartItemsCount} pozycji.<br>
W koszyku jest ${productCount} produktów.<br>
Wartość koszyka to: ${sum}


</body>
</html>
