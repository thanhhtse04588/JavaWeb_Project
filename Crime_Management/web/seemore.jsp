<%-- 
    Document   : seemore
    Created on : Jul 23, 2018, 8:07:09 AM
    Author     : Muscle_Life
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="w" class="model.WantedModel" scope="request"/>
        <<jsp:setProperty name="w" property="*"/>
        <c:forEach var="x" items="${w.selectAll()}">
            <p><b>WantedID :</b>${x.wID}</p>
            <p><b>Image    :</b><image src="${x.image}"/></p>
            <p><b>CrimeName: </b>${x.cName}</p>
            <p><b>Gender   :</b>${x.gender}</p>
            <p><b>Country  :</b>${x.country}</p>
            <p><b>DOB      :</b>${x.dob}</p>
            <p><b>Offense  :</b>${x.offense}</p>
            <p><b>CrimeType :</b>${x.getCrimeTypeName()}</p>
            <p><b>MissionUnit :</b>${x.getMissionUnitName()}</p>
            <p><b>WantedDate  :</b>${x.wDate}</p>
            <p><b>CatchedDate :</b>${x.cDate}</p>
            <p><b>PrisonName  :</b>${x.getPrisonName()}</p>
            <p><b>Status  :</b>${x.status}</p>
            <p><b>Detail  :</b>${x.detail}</p>
            <p><b>Comment :</b></p>
        </c:forEach>

    </body>
</html>
