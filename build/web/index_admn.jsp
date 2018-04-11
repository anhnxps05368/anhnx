<%-- 
    Document   : index
    Created on : Oct 12, 2017, 7:23:58 AM
    Author     : Genn
--%>

<%@page import="model.Customer"%>
<%@page import="model.Product"%>
<%@page import="model.Productsz"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobilestore</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header_admin.jsp" %>
        <div class="section group">
            <%
                Productsz listSP = new Productsz();
                List<Product> list = listSP.showProduct("");
                for (Product sp : list) {

                    out.print("<form action=\"ControllerCartBean\">");
                    out.print("<div class=\"grid_1_of_4 images_1_of_4 products-info\" >"
                            + "<img style='width:150px; height:270px' src='images/" + sp.getImage() + "'/>"
                            + "<a href=\"#\">" + sp.getName() + "</a>"
                            + "<h3>" + "$" + sp.getPrice() + "</h3>"
                            + "<ul><li><input type='submit' name='action' value='Add to Cart'/></li>"
                            + "<input type=\"hidden\" name=\"txtCode\" value='" + sp.getCode() + "'/>"
                            + "<input type=\"hidden\" name=\"txtName\" value='" + sp.getName() + "'/>"
                            + "<input type=\"hidden\" name=\"txtPrice\" value='" + sp.getPrice() + "'/>"
                            + "<input type=\"hidden\" name=\"txtImage\" value='" + sp.getImage() + "'/>"
                            + "<li><input type='submit' name='action' value='Information'/></li>"
                            + "</ul></div>");
                    out.print("</form>");
                }
            %>
        </div>
            <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
