<%-- 
    Document   : checkout
    Created on : Nov 22, 2021, 11:44:23 AM
    Author     : kevin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="checkOut" method="post">
            <div>
                <label for="firstName">First Name:</label>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="" value="" required>
            </div>
            <div>
                <label for="lastName">Last Name:</label>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="" value="" required>
            </div>
            <div>
                <label for="txtEmail">Email:</label>
                <input type="email" class="form-control" id="txtEmail" name="txtEmail" placeholder="" value="" required>
            </div>
            <div>
                <label for="address">Address:</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="" value="" required>
            </div>
            <div>
                <label for="country">Country:</label>
                <input type="text" class="form-control" id="country" name="country" placeholder="" value="" required>
            </div>
            <div>
                <label for="state">State:</label>
                <input type="text" class="form-control" id="state" name="state" placeholder="" value="" required>
            </div>
            <div>
                <label for="zip">Zip Code:</label>
                <input type="text" class="form-control" id="zip" name="zipCode" placeholder="" value="" required>
            </div>
            <div>
                <div>
                    <label for="credit">Credit Card:</label>
                    <input type="radio" class="form-control" id="credit" name="paymentMethod" placeholder="" value="" checked required>
                </div>
                <div>
                    <label for="debit">Debit Card:</label>
                    <input type="radio" class="form-control" id="debit" name="paymentMethod" placeholder="" value="" required>
                </div>
            </div>
            <div>
                <label for="cc-name">Name on card:</label>
                <input type="text" class="form-control" id="cc-name" name="cardName" placeholder="" value="" required>
            </div>
            <div>
                <label for="cc-number">Zip Code:</label>
                <input type="text" class="form-control" id="cc-number" name="cardNumber" placeholder="" value="" required>
            </div>
            <div>
                <label for="cc-expire">Expiration:</label>
                <input type="text" class="form-control" id="cc-expire" name="cardExpire" placeholder="" value="" required>
            </div>
            <div>
                <label for="cc-expiration">CVV:</label>
                <input type="text" class="form-control" id="cc-expiration" name="cardCVV" placeholder="" value="" required>
            </div>
                <p>${product.fullPrice}</p>
                <label for="totalPrice">CVV:</label>
                <input type="text" id="totalPrice" name="totalPrice" value="${product.fullPrice}">
            <input class="ml-auto btn hvr-hover" type="submit" name="submit" value=" Place Order ">
            
        </form>
    </body>
</html>
