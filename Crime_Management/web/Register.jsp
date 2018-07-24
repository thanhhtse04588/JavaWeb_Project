<%-- 
    Document   : Register
    Created on : Jul 22, 2018, 9:36:22 PM
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
        <form action="AccountRegister" method="POST">
            <p>UserName <input type="text" name="txtUser" value="" /></p>
            <p>PassWord <input type="password" name="txtPass" value="" /></p>
            <p>Re-enter PassWord <input type="password" name="txtRePass" value="" />
            </p>
            <input type="submit" value="Register" />
            <p>${errorMess}</p>
        </form>
    </body>
</html>
