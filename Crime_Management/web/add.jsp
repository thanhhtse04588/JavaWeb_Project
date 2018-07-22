<%-- 
    Document   : add
    Created on : Jul 21, 2018, 12:06:42 AM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <<jsp:useBean id="c" class="model.CrimeTypeModel" scope="session"/>
        <<jsp:useBean id="m" class="model.MissionUnitModel" scope="session"/>
        <h2>Information Wanted</h2>
        <form action="WantedServlet" method="POST" enctype="multipart/form-data">
            <p>Image: <input type="file" name="uploadFile" /></p>
            <p>Crime Name :  <input type="text" name="name" value="" /></p>
            <p>Gender : <input type="radio" name="radioGender" value="male" /> Male
                <input type="radio" name="radioGender" value="female" /> Female</p>
            <p>Country: <input type="text" name="country" value="" /></p>
            <p>DOB : <input type="date" name="dob" value="mm/dd/yyyy"/></p>
            <p>Offense : <textarea rows="4" cols="50" name="offense">Offense</textarea></p>
            <p>CrimeType: <select name="cType">
                    <c:forEach var="x" items="${c.selectAll()}">
                        <option value="${x.cTypeID}" ${param.cType == x.cTypeID ? "selected":""}>${x.cTypeName}</option>
                    </c:forEach>
                </select></p>
            <p>Mission Unit: <select name="missionUnit">
                    <c:forEach var="y" items="${m.selectAll()}">
                        <option value="${y.mID}" ${param.missionUnit == y.mID ? "selected":""}>${y.mName}</option>
                    </c:forEach>
                </select></p>
            <p>Wanted Date : <input type="date" name="wantedDate" value="mm/dd/yyyy"/></p>
            <p>Status: <input type="text" name="status" value="wanted" disabled="disabled" /></p>
            <p>Detail: </p>
            <p><input type="submit" value="Submit" /></p>
        </form>
    </body>
</html>
