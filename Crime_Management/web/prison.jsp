<%-- 
    Document   : prison
    Created on : Jul 23, 2018, 4:34:14 PM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <style>
            center {
                width: 50%;
                margin-left: auto;
                margin-right: auto;
            }
        </style>
        <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ include file="nhung.jsp" %>
        <jsp:useBean id="w" class="model.WantedModel" scope="request"/>
        <jsp:useBean id="p" class="model.PrisonModel" scope="request"/>
        <jsp:setProperty name="w" property="*"/>

        <form action="prison.jsp">
            <center>
                <b>Select an Prison:</b> 
                <select name="prisonID" onchange="document.forms[0].submit()">
                    <option value="" ${param.prisonID ==""? "selected": ""}> </option>
                    <c:forEach var="x" items="${p.selectAll()}">
                        <option value="${x.pID}" ${x.pID== param.prisonID? "selected": ""}>
                            ${x.pName}
                        </option>
                    </c:forEach>
                </select></center>
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
        </form>
    <center><a href="add.jsp"><button>Add new</button></a></center>
</body>
</html>
