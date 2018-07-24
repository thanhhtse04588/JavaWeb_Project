<%-- 
    Document   : Login
    Created on : Jul 22, 2018, 7:33:10 PM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="AccountLogin" method="POST">
            <p>User Name <input type="text" name="txtUser" value="" /></p>
            <p>Pass Word <input type="password" name="txtPass" value="" /></p>
            <p><input type="submit" value="Login" /></p>
            <p>${ErrorMess}</p>
        </form>
    </body>
</html>
