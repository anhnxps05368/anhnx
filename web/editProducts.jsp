<%-- 
    Document   : editProducts
    Created on : Oct 12, 2017, 7:43:29 AM
    Author     : Genn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Products</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header_admin.jsp" %>
            <h1>Edit Products</h1>
            <form action="Products">
                Code : ${SP.code}<input type="hidden" name="txtCode" value="${SP.code}"/><br>
                Name : <input type="text" name="txtName" value="${SP.name}"/><br>
                Price : <input type="text" name="txtPrice" value="${SP.price}"/><br>
                Image : <input type="file" name="txtImage" value="${SP.image}"/><br>
                <input type="submit" name="action" value="Update"/>
            </form>
                <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
