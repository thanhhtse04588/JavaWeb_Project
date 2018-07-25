<%-- 
    Document   : admin
    Created on : Jul 22, 2018, 9:28:14 PM
    Author     : MyPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <div><jsp:include page="/Header.html"/></div>
        <div class="menu" id="amenu"><jsp:include page="menuLog.jsp"/> </div>
        <div><jsp:include page="wantedtable.jsp"/></div>
        <div><jsp:include page="/Footer.html"/></div>
        <script type="text/javascript">
            window.onscroll=function() {menuFix()};
            function menuFix()
            {
                if(document.body.scrollTop>100||
                        document.documentElement.scrollTop>100)
                {
                    document.getElementById("amenu").className="menuFix";
                }
                else
                {
                    document.getElementById("amenu").className="menu";
                }
            }
        </script>
    </body>
</html>
