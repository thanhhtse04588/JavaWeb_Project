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
        <style>
        </style>
        <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:setProperty name="w" property="*"/>
        <jsp:useBean id="p" class="model.PrisonModel" scope="request"/>
        <c:set var="wantedID" value="${param.wantedID}" scope="session"  />
        <c:forEach var="x" items="${w.selectAll()}">
            <table id="customers">
                <tr>
                    <th>WantedID:</th> <td> ${x.wID}</td> 
                </tr>
                <tr>
                    <th>Image:</th> <td> <img src="${x.image}"/></td> 
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
                    <th>Status:</th> 
                    <td>${x.status} 
                        <c:if test="${x.status == 'Wanted'}">

                            <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Catched</button>

                            <div id="id01" class="modal">
                                
                                <form class="modal-content animate" action="CatchedServlet">
                                    <div class="imgcontainer">
                                        <center><h2>Catched Form</h2></center>
                                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                        <center><img src="${x.image}" alt="Avatar"></center>

                                        <center><h3>${x.cName}</h3></center>

                                    </div>

                                    <div class="container">

                                        <label><b>Catched Date</b></label>
                                        <br>
                                        <input type="date" name="catchedDate" value="dd/mm/yyyy" required>
                                        <br>
                                        <label><b>Prison ID</b></label>
                                        <select name="prisonID">
                                            <c:forEach var="i" items="${p.selectAll()}">
                                                <option value="${i.pID}"  ${param.prisonID == i.pID? "selected": ""}>${i.pName}</option>
                                            </c:forEach>
                                        </select>

                                        <button type="submit">Submit</button>
                                    </div>

                                    <div class="container" style="background-color:#f1f1f1">
                                        <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn">Cancel</button>
                                    </div>
                                </form>
                            </div>
                        </c:if>
                    </td> 
                </tr>
                <tr>
                    <th>Detail:</th> <td>${x.detail} </td> 
                </tr>
            </table>
            <br>

        <center><a href="edit.jsp?wantedID=${wantedID}" onclick=" return confirm('Do you really want to edit the form?');" ><button >Edit</button></a>
            <a href="RemoveWantedServlet" onclick=" return confirm('Do you really want to remove the form?');"><button>Remove</button></a>
            <a href="wantedtable.jsp" onclick=" return confirm('Do you really want to back to the Wanted Table?');"><button>Cancel</button></a></center>
        
        </c:forEach>

</body>
</html>
