<%-- 
    Document   : cart
    Created on : Nov 19, 2021, 9:41:35 PM
    Author     : kevin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        
        <table>
            <tr>
              <th>Quantity</th>
              <th>Description</th>
              <th>Price</th>
              <th>Amount</th>
              <th></th>
            </tr>
            <c:set var="total" value="${0}"/>
            <c:forEach var="item" items="${cart.items}">
            <tr>
            <td>
              <form action="cart" method="post">
                <input type="hidden" name="productId" value="${item.product.code}">
                <input type=text name="quantity" value="${item.quantity}" id="quantity">
                <input type="submit" value="Update">
              </form>
            </td>
            <td>${item.product.description}</td>
            <!--<td>${item.product.priceCurrencyFormat}</td>-->  
            <!--<td>${item.totalCurrencyFormat}</td>-->
            <td>${item.product.price}</td>
            <td>
              <a href="cart?productId=${item.product.code}&amp;quantity=0">Remove Item</a>
              <!--
              <form action="" method="post">
                <input type="hidden" name="productCode" 
                       value="${item.product.code}">
                <input type="hidden" name="quantity" 
                       value="0">
                <input type="submit" value="Remove Item">
              </form>
              -->
            </td>
          </tr>
          <form>
              
          </form>
          <c:set var="total" value="${total + item.product.price}"/>
          
          </c:forEach>
         
           
        </table>
<!--        <form action="" method="post">
            <input type="hidden" name="action" value="shop">
            <input type="submit" value="Continue Shopping">
          </form>
        
-->        <form action="cart" method="post">
            <input type="hidden" name="action" value="checkout">
            <input type="text" name="totalPrice" value='<c:out value='${total}'/>'> // 47000.0
            <input type="text" name="sum" value='<c:out value='${total}'/>'> // 47000.0
            <input type="submit" value="Checkout">
          </form>
            
            sum

    </body>
</html>
