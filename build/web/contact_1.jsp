<%-- 
    Document   : contact
    Created on : Oct 18, 2017, 1:13:18 PM
    Author     : tanks
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="thanhphanweb/header_dangnhap.jsp" %>
        <div class="wrap">
            <div class="content">
                <div class="section group">				
                    <div class="col span_1_of_3">
                        <div class="contact_info">
                            <h2>Địa chỉ</h2>
                            <div class="map">
                                <iframe width="100%" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.271061023454!2d106.67748971439958!3d10.790539392311937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528d4d38a492d%3A0x5c3235caedbc065e!2zMTM2LzQ4IFRy4bqnbiBRdWFuZyBEaeG7h3UsIHBoxrDhu51uZyAxNCwgUXXhuq1uIDMsIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1508307337266"></iframe>
                            </div>
                        </div>
                        <div class="company_address">
                            <h2>Thông tin công ty :</h2>
                            <p>136/48 Trần Quang Diệu, P14, Q3, TP. Hồ Chí Minh</p>
                            
                            <p>Việt Nam</p>
                            <p>Số điện thoại:+84 120 60 76 517</p>
                            <p>Email: <span>anhnxps05368@fpt.edu.vn</span></p>
                            <p>Theo dõi tại: <span>Facebook</span>, <span>Twitter</span></p>
                        </div>
                    </div>				
                    <div class="col span_2_of_3">
                        <div class="contact-form">
                            <h2>Ý kiến phản hồi </h2>
                            <form>
                                <div>
                                    <span><label>TÊN</label></span>
                                    <span><input type="text" value=""></span>
                                </div>
                                <div>
                                    <span><label>E-MAIL</label></span>
                                    <span><input type="text" value=""></span>
                                </div>
                                <div>
                                    <span><label>SỐ ĐIỆN THOẠI</label></span>
                                    <span><input type="text" value=""></span>
                                </div>
                                <div>
                                    <span><label>NỘI DUNG</label></span>
                                    <span><textarea> </textarea></span>
                                </div>
                                <div>
                                    <span><input type="submit" value="Gửi"></span>
                                </div>
                            </form>
                        </div>
                    </div>				
                </div>
                <div class="clear"> </div>
            </div>
            <div class="clear"> </div>
        </div>
        <%@include file="thanhphanweb/footer.jsp" %>
    </body>
</html>
