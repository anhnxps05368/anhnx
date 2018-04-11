<%-- 
    Document   : error
    Created on : Oct 2, 2017, 1:00:14 PM
    Author     : Genn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <div class="container">
            <div id="login">
                <h2><span class="fontawesome-lock"></span>Sign In</h2>
                <form action="Customers" method="post">
                    <fieldset>
                        <p><label for="email">Username</label></p>
                        <p><input type="text" id="email" placeholder="Username" name="txtUser" value=""/></p>
                        <p><label for="password">Password</label></p>
                        <p><input type="password" name="txtPass"  id="password" placeholder="Password" value=""/></p>
                        <b class="cc">Username or Password is invalid</b>
                        <p><input type="submit" name="action" value="Sign in"/></p>
                        <p><input type="submit" name="action" value="Registration"/></p>
                    </fieldset>
                </form>
            </div>
        </div>
    </body>
</html>
