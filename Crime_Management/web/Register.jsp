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
        <style type="text/css">
            .regis{
                margin:10% 30%
            }
            button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}
button:hover {
    opacity: 0.8;
}
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}
.menu{
                position: static;
            }
            .content
            {
                position: static;
            }
            .menuFix{
                top: 0;
                position: fixed;
            }
        </style>
    </head>
    <body>
        <div><jsp:include page="Header.html"/></div>
        <div class="menu" id="hmenu"><jsp:include page="MenuHome.jsp"/></div>
        <div class="regis">
        <form action="AccountRegister" method="POST">
            <p><label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="txtUser" value="${param.txtUser}" required/>
            </p>
            <p><label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="txtPass" required/></p>
            <p><label for="rePass"><b>Re-Enter Password</b></label>
            <input type="password" placeholder="Re-Enter Password" name="txtRePass" required/><p>
            <p><button type="submit">Register</button></p>
            <p>${errorMess}</p>
        </form>
        </div>
        <div><jsp:include page="Footer.html"/></div>
        <script type="text/javascript">
            window.onscroll=function() {menuFix()};
            function menuFix()
            {
                if(document.body.scrollTop>100||
                        document.documentElement.scrollTop>100)
                {
                    document.getElementById("hmenu").className="menuFix";
                }
                else
                {
                    document.getElementById("hmenu").className="menu";
                }
            }
        </script>
    </body>
</html>
