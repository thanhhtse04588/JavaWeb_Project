<%-- 
    Document   : addimage
    Created on : Jul 25, 2018, 5:15:19 PM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

    </head>
    <body>

        <h2>Update Crime Image to CrimeID =${param.wantedID} </h2>
        <form action="AddWantedServlet?wantedID=${param.wantedID}" method="POST" enctype="multipart/form-data" onsubmit="return confirm('Do you really want to submit the form?');">   
            <p>Image: <input type="file" name="uploadFile" accept="image/*" onchange="loadFile(event)" required="required"/></p>
             <img id="output"/>
             <input type="submit" value="Update"/>
        </form>  
       
        <script>
            var loadFile = function (event) {
                var output = document.getElementById('output');
                output.src = URL.createObjectURL(event.target.files[0]);
            };
        </script>
    </body>
</html>
