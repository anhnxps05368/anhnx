<%-- 
    Document   : customer
    Created on : Oct 2, 2017, 12:59:00 PM
    Author     : Genn
--%>

<%@page import="java.util.List"%>
<%@page import="model.Customer"%>
<%@page import="model.Customerz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer, ${sessionScope.USER}</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header_admin.jsp" %>
        
        <table border="1" width="100%">
            <tr>
                <td>Username</td>
                <td>Password</td>
                <td>Email</td>
                <td>SDT</td>
                <td>isAdmin</td>
                <td>Delete</td>
                <%
                    Customerz listSP = new Customerz();
                    List<Customer> list = listSP.showAcc("");
                    for (Customer sp : list) {
                        out.print("<form action=\"Customers\">");
                        out.print("<tr><td>" + sp.getUsername() + "</td><td>" + sp.getPassword() + "</td><td>" + sp.getEmail() + "</td><td>"+sp.getSdt()+"</td><td>"+sp.getRoles()+"</td>"
                                +"<td><input type='submit' name='action' value='Delete'/></td>"
                                + "<input type=\"hidden\" name=\"txtUser\" value='" + sp.getUsername() + "'/>"
                                + "<input type=\"hidden\" name=\"txtPass\" value='" + sp.getPassword() + "'/>"
                                + "<input type=\"hidden\" name=\"txtEmail\" value='" + sp.getEmail()+ "'/>"
                                + "<input type=\"hidden\" name=\"txtSDT\" value='" + sp.getSdt()+ "'/>"
                                + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getRoles()+ "'/></tr>");
                        out.print("</form>");
                    }
                %>
            </tr>
        </table>
            
                <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
