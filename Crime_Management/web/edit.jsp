<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%-- 
    Document   : edit
    Created on : Jul 24, 2018, 8:00:47 AM
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
        <jsp:setProperty name="w" property="*"/>
        <jsp:useBean id="c" class="model.CrimeTypeModel" scope="request"/>
        <jsp:useBean id="m" class="model.MissionUnitModel" scope="request"/>

        <form action="EditWantedServlet" method="POST" onsubmit="return confirm('Do you really want to submit the form?');">

            <c:forEach var="x" items="${w.selectAll()}">
                <table id="customers">
                    <tr>
                        <th>WantedID: </th><td>${wantedID}</td>
                    </tr>
                    <tr>
                        <th>Image   :  </th><td><image src="${x.image}"/></td>
                    </tr>
                    <tr>
                        <th>CrimeName: </th><td><input type="text" value="${x.cName}" name="cName" required="required"/></td>
                    </tr>
                    <tr>
                        <th>Gender   :</th>
                        <td><input type="radio" name="gender" value="Male" checked=${x.gender =='Male'? "checked": ""} /> Male
                            <input type="radio" name="gender" value="Female"  checked=${x.gender =='Female'? "checked": ""} /> Female
                        </td>
                    </tr>
                    <tr>
                        <th>Country  :</th><td><input type="text" value="${x.country}" name="country" required="required"/></td>
                    </tr>
                    <tr>
                        <th>DOB      :</th><td><input type="date" value="${x.dob}" name="dob" required="required"/></td>
                    </tr>
                    <tr>
                        <th>Offense  :</th><td><textarea rows="4" cols="50" name="offense" required="required">${x.offense}</textarea></td>
                    </tr>
                    <tr>
                        <th>WantedDate  :</th><td><input type="date" name="wantedDate" value="${x.wDate}" required="required"/></td>
                    </tr>
                    <tr>
                        <th>Detail  :</th><td><input type="text" value="${x.detail}" name="detail"/></td>
                    </tr>
                    <tr>
                        <th>CrimeType:</th> 
                        <td><select name="cType">    
                                <c:forEach var="i" items="${c.selectAll()}">
                                    <option value="${i.cTypeID}" ${x.cTypeID == i.cTypeID ? "selected":""}
                                            ${param.cType == i.cTypeID ? "selected":""}>${i.cTypeName}</option>
                                </c:forEach>              
                            </select></td>
                    </tr>
                    <tr><th>Mission Unit:</th>
                        <td>
                            <select name="mUnitID">
                                <c:forEach var="i" items="${m.selectAll()}">
                                    <option value="${i.mID}" ${x.mID == i.mID ? "selected":""}
                                            ${param.mUnitID == i.mID ? "selected":""}>${i.mName}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                </c:forEach>

            </table>
            <center><button type="submit">Edit</button></center>
        </form>

    </body>
</html>
