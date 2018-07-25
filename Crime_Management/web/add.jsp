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
        <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <jsp:useBean id="c" class="model.CrimeTypeModel" scope="request"/>
        <jsp:useBean id="m" class="model.MissionUnitModel" scope="request"/>
    <center><h2>Information Wanted</h2></center>
    <form action="AddWantedServlet" onsubmit=" return confirm('Do you really want to submit the form?');">
        <table id="customers">
            <tr>
                <th>Crime Name :  </th> <td><input type="text" name="cName" value="" required="required"/></td> 
            </tr>
            <tr>
                <th>Gender :</th> <td><input type="radio" name="gender" value="male" checked="checked"/> Male
                    <input type="radio" name="gender" value="female" /> Female</td> 
            </tr>
            <tr>
                <th>Country: </th> <td><input type="text" name="country" value="" required="required"/></td> 
            </tr>
            <tr>
                <th>DOB : </th> <td><input type="date" name="dob" value="yyyy/mm/dd" required="required"/></td> 
            </tr>
            <tr>
                <th>Offense : </th> <td><textarea rows="4" cols="50" name="offense" required="required">Offense</textarea></td> 
            </tr>
            <tr>
                <th>CrimeType: </th> <td><select name="cType">

                        <c:forEach var="x" items="${c.selectAll()}">
                            <option value="${x.cTypeID}" ${param.cType == x.cTypeID ? "selected":""}>${x.cTypeName}</option>
                        </c:forEach>              
                    </select></td> 
            </tr>

            <tr>
                <th>Mission Unit:  </th> <td><select name="mUnitID">
                    <c:forEach var="y" items="${m.selectAll()}">
                            <option value="${y.mID}" ${param.mUnitID == y.mID ? "selected":""}>${y.mName}</option>
                        </c:forEach>
                    </select>
                </td> 
            </tr>
            <tr>
                <th>Wanted Date : </th> <td><input type="date" name="wantedDate" value="yyyy/mm/dd" required="required"/></td> 
            </tr>
            <tr>
                <th>Status: </th> <td><input type="text" name="status" value="Wanted" readonly="readonly"/></td> 
            </tr>
            <tr>
                <th>Detail: </th> <td><textarea rows="4" cols="50" name="detail">Detail</textarea></td> 
            </tr>
        </table>
        <center><button type="submit">Add</button></center>
    </form>
</body>
</html>
