<%-- 
    Document   : wantedtable
    Created on : Jul 23, 2018, 5:37:00 AM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>  
        <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="nhung.jsp" %>
        <jsp:useBean id="w" class="model.WantedModel" scope="session"/>
    <center><h2>Wanted Table</h2></center>
    <table id="customers">
        <tr>
            <th>WantedID</th>
            <th>Image</th>
            <th>CrimeName</th>
            <th>Gender</th>
            <th>TypeCrime</th>
            <th>Status</th>
            <th>Detail</th>
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
    <center><a href="add.jsp"><button>Add new</button></a></center>
</body>
</html>
