<%-- 
    Document   : menu
    Created on : Jul 24, 2018, 8:14:35 AM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            /*==Reset CSS==*/
            * {
              margin: 0;
              padding: 0;
            }

            /*==Style co ban cho website==*/
            body {
              font-family: sans-serif;
              color: #333;
            }

            #myMenu li {
              color: #f1f1f1;
              float: left;
              width: 120px;
              height: 40px;
              line-height: 40px;
              padding: 10px;
            }

            #myMenu ul {
              background: #1F568B;
              list-style-type: none;
              overflow: hidden;
              width: 100%;
            }

            #myMenu a {
              text-decoration: none;
              color: #fff;
              display: block;
            }

            #myMenu a:hover {
              background: #F1F1F1;
              color: #333;
            }
            
            #myMenu div{
                width: 100%;
            }
        </style> 
    </head>
    <body>
        <div id="myMenu">
          <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="Login.jsp">Login</a></li>
            <li><a href="Register.jsp">Register</a></li>
            <li>Welcome ${acc.userName}</li>
          </ul>
        </div>
    </body>
</html>
