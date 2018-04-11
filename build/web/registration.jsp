<%-- 
    Document   : register
    Created on : Sep 25, 2017, 9:25:29 PM
    Author     : Genn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header.jsp" %>
        <form action="Customers" method="post">
            Username <input type="text" name="txtUser" value=""/><br/>
            Password <input type="password" name="txtPass" value=""/><br/>
            Email <input type="text" name="txtEmail" value=""/><br/>
            SDT <input type="number" name="txtSDT" value=""/><br/>
            Admin <input type="checkbox" name="chkAdmin" value="ADMIN"/><br/>
            <input type="submit" name="action" value="Registor"/>
        </form>
        <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
