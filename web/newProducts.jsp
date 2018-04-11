<%-- 
    Document   : newProducts
    Created on : Oct 12, 2017, 8:02:27 AM
    Author     : Genn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header_admin.jsp" %>
        <h1>New Product</h1>
        <form action="Products">
            Code : <input type="text" name="txtCode" value=""/><br>
            Name : <input type="text" name="txtName" value=""/><br>
            Price : <input type="text" name="txtPrice" value=""/><br>
            Image : <input type="file" name="txtImage" value=""/><br>
            <input type="submit" value="Insert" name="action"/>
        </form>
        <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
