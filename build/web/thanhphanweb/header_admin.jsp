<%-- 
    Document   : header_dangnhap
    Created on : Oct 20, 2017, 7:17:46 PM
    Author     : tanks
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css_web/style.css" rel="stylesheet" type="text/css"/>
        <meta name="keywords" content="Mobilestore iphone web template, Andriod web template, Smartphone web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <link href='http://fonts.googleapis.com/css?family=Londrina+Solid|Coda+Caption:800|Open+Sans' rel='stylesheet' type='text/css'>
        <link href="css_web/responsiveslides.css" rel="stylesheet" type="text/css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                // Slideshow 1
                $("#slider1").responsiveSlides({
                    maxwidth: 1600,
                    speed: 600
                });
            });
        </script>
    </head>
    <body>
        <div class="wrap">
            <!----start-Header---->
            <div class="header">
                <div class="search-bar">
                    <form action="Products">
                        <input type="text" name="txtTenSP"/><input type="submit" name="action" value="Search" />
                    </form>
                </div>
                <div class="clear"> </div>
                <form action="ControllerCartBean">
                      <div class="header-top-nav">
                        <ul>
                            <li><a href="products.jsp">Quản lí sản phẩm</a></li>
                            <li><a href="customer.jsp">Quản lí người dùng</a></li>
                            <li><a href="404_admin.jsp">Xin chào, ${sessionScope.USER}</a></li>
                            <li><a href="index.jsp">Log out</a></li>
                            
                        </ul>
                    </div>
                </form>
                    <div class="clear"> </div>
            </div>
        </div>
        <div class="clear"> </div>
        <div class="top-header">
            <div class="wrap">
                <!----start-logo---->
                <div class="logo">
                    <a href="index_admn.jsp"><img src="images/logo.png" title="logo" /></a>
                </div>
                <!----end-logo---->
                <!----start-top-nav---->
                <div class="top-nav">
                    <ul>
                        <li><a href="index_admn.jsp">Trang chủ</a></li>
                        <li><a href="404_admin.jsp">Thông tin</a></li>
                        <li><a href="index_admn.jsp">Cửa hàng</a></li>
                        <li><a href="contact_admin.jsp">Liên hệ</a></li>
                    </ul>
                </div>
                <div class="clear"> </div>
            </div>
        </div>
        <!----End-top-nav---->
        <!----End-Header---->
        <!--start-image-slider---->
        <div class="wrap">
            <div class="image-slider">
                <!-- Slideshow 1 -->
                <ul class="rslides" id="slider1">
                    <li><img src="images/1.png" alt=""></li>
                    <li><img src="images/2.png" alt=""></li>
                    <li><img src="images/1.png" alt=""></li>
                </ul>
                <!-- Slideshow 2 -->
            </div>
            <!--End-image-slider---->
        </div>
        <div class="clear"> </div>
    </body>
</html>
