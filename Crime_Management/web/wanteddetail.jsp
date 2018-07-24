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
        <jsp:setProperty name="w" property="*"/>
        <c:forEach var="x" items="${w.selectAll()}">
            <table border="1" cellspacing="0.5">
                <tr>
                    <th>WantedID:</th> <td> ${x.wID}</td> 
                </tr>
                <tr>
                    <th>Image:</th> <td> <image src="${x.image}"/></td> 
                </tr>
                <tr>
                    <th>CrimeName:</th> <td>${x.cName} </td> 
                </tr>
                <tr>
                    <th> Gender:</th> <td>${x.gender}</td> 
                </tr>
                <tr>
                    <th> Country:</th> <td>${x.country} </td> 
                </tr>
                <tr>
                    <th>DOB:</th> <td>${x.dob} </td> 
                </tr>
                <tr>
                    <th> Offense:</th> <td>${x.offense} </td> 
                </tr>
                <tr>
                    <th> CrimeType:</th> <td>${x.getCrimeTypeName()}</td> 
                </tr>
                <tr>
                    <th> MissionUnit:</th> <td> ${x.getMissionUnitName()}</td> 
                </tr>
                <tr>
                    <th> WantedDate:</th> <td>${x.wDate} </td> 
                </tr>
                <tr>
                    <th> CatchedDate:</th> <td>${x.cDate} </td> 
                </tr>
                <tr>
                    <th>PrisonName : </th> <td>${x.getPrisonName()} </td> 
                </tr>
                <tr>
                    <th>Status:</th> <td>${x.status} </td> 
                </tr>
                <tr>
                    <th>Detail:</th> <td>${x.detail} </td> 
                </tr>
                <tr>
                    <th>Comment:</th> <td> </td> 
                </tr>
                <br>
                <button />
            </table>
        </c:forEach>
        <a href="edit.jsp?wantedID=${x.wID}"><button>Edit</button></a>
        <a href="RemoveWantedServlet?wantedID=${x.wID}"><button>Remove</button></a>

    </body>
</html>
