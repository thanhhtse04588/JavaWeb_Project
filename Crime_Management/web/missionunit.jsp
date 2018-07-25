<%-- 
    Document   : missionunit
    Created on : Jul 23, 2018, 3:55:46 PM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
                <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="w" class="model.WantedModel" scope="request"/>
        <jsp:useBean id="m" class="model.MissionUnitModel" scope="request"/>
        <<jsp:setProperty name="w" property="*"/>
        <form action="missionunit.jsp">
            <b>Select an MissionUnit:</b> 
            <select name="missID" onchange="document.forms[0].submit()">
                <option value="" ${param.missID ==""? "selected": ""}> </option>
                <c:forEach var="x" items="${m.selectAll()}">
                    <option value="${x.mID}" ${x.mID== param.missID? "selected": ""}>
                        ${x.mName}
                    </option>
                </c:forEach>
            </select>
            <table id="customers">
                <tr>
                    <th>WantedID</th>
                    <th>Image</th>
                    <th>CrimeName</th>
                    <th>Gender</th>
                    <th>TypeCrime</th>
                    <th>Status</th>
                </tr>
                <c:forEach var="x" items="${w.selectAll()}">
                    <tr>
                        <td>${x.wID}</td>
                        <td><image src="${x.image}"/></td>
                        <td>${x.cName}</td>
                        <td>${x.gender}</td>
                        <td>${x.getCrimeTypeName()}</td>
                        <td>${x.status}</td>
                        <td><a href="wanteddetail.jsp?wantedID=${x.wID}">See more</a></td>
                    </tr>  

                </c:forEach>
            </table>
        </form>
    </body>
</html>
