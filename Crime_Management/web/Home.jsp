<%-- 
    Document   : Home
    Created on : Jul 17, 2018, 7:28:44 AM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
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
        <div class="menu" id="hmenu"><jsp:include page="MenuHome.html"/></div>
        <div class="content"><jsp:include page="HomeContent.html"/></div>
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
