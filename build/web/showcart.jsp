<%-- 
    Document   : showcart
    Created on : Oct 12, 2017, 8:37:17 AM
    Author     : Genn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Giỏ hàng</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header.jsp" %>
        <c:set var="shop" value="${sessionScope.SHOP}"/>
        <c:if test="${not empty shop}">
            <table border="1" style="width: 100%">
                <thead>
                    <tr>
                        <td>No.</td>
                        <td>Code</td>
                        <td>Name</td>
                        <td>Price</td>
                        <td>Quantity</td>
                        <td>Action</td>
                    </tr>
                </thead>
                <tbody>
                <form action="ControllerCartBean">
                    <c:set var="count" value="0"/>
                    <c:forEach var="rows" items="${shop}">
                        <c:set var="count" value="${count + 1}"/>
                        <tr>
                            <td>${count}</td>
                            <td>${rows.value.sanpham.code}</td>
                            <td>${rows.value.sanpham.name}</td>
                            <td>${rows.value.sanpham.price}</td>
                            <td>${rows.value.quantity}</td>
                            <td><input type="checkbox" name="rmv" value="${rows.value.sanpham.code}"/></td>
                        </tr>
                    </c:forEach>
                    <input type="submit" value="Remove" name="action" style="float: right;"/>
                </form>
            </tbody>

        </table>
    </c:if>
        <form action="ControllerCartBean">
        <input type="submit" name="action" value="Back to Products" style="float: right;"/>
    </form>
        <%@include file="thanhphanweb/footer.jsp" %>
</body>
</html>
