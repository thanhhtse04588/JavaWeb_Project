<%-- 
    Document   : addimage
    Created on : Jul 25, 2018, 5:15:19 PM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <style>
        center{
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }
    </style>
    <head>
        <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>
        <%@ include file="nhung.jsp" %>
    <center>
        <h2>Update Image</h2>
        <form action="AddWantedServlet?wantedID=${param.wantedID}" method="POST" enctype="multipart/form-data" onsubmit=" return confirm('Do you really want to submit the form?');">   
            <p><b>Image:</b> <input type="file" name="uploadFile" accept="image/*" onchange="loadFile(event)" required="required"/></p>
            <img id="output"/>
            <center><button type="submit">Update</button></center>
        </form>  
    </center>
    <script>
        var loadFile = function (event) {
            var output = document.getElementById('output');
            output.src = URL.createObjectURL(event.target.files[0]);
        };
    </script>
</body>
</html>
