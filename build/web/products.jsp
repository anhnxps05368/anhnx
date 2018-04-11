<%-- 
    Document   : products
    Created on : Oct 2, 2017, 1:04:05 PM
    Author     : Genn
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%@include file="thanhphanweb/header_admin.jsp" %>
        <form action="Products">
            Nhập tên sản phẩm : <input type="text" name="txtTenSP" value=""/>
            <input type="submit" name="action" value="Search"/><input type="submit" name="action" value="New Product"/>
        </form>
        <table border="1" width="100%">
            <tr>
                <td>Code</td>
                <td>Name</td>
                <td>Price</td>
                <td>Edit</td>
                <td>Delete</td>
            </tr>
            <c:forEach var="rows" items="${listSP}">
                <form action="Products">
                    <tr>
                        <td>${rows.code}</td>
                        <td>${rows.name}</td>
                        <td>${rows.price}$</td>
                        <c:url var="del" value="Products">
                            <c:param name="action" value="Edit"/>
                            <c:param name="txtCode" value="${rows.code}"/>
                            <c:param name="txtName" value="${rows.name}"/>
                            <c:param name="txtPrice" value="${rows.price}"/>
                        </c:url>
                        <td><a href="${del}">Edit</a></td>
                        <td>
                            <input type="hidden" name="txtCode" value="${rows.code}"/>
                            <input type="submit" name="action" value="Delete"/>
                        </td>
                    </tr>
                </form>
            </c:forEach>
        </table>
        <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
