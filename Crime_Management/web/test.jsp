<%-- 
    Document   : newjsp
    Created on : Jul 24, 2018, 4:24:25 PM
    Author     : Muscle_Life
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value="/css/css.css" />" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
        </style>
    </head>
    <body>
        <jsp:useBean id="p" class="model.PrisonModel" scope="request"/>
        <jsp:useBean id="w" class="model.WantedModel" scope="request"/>
        <table id="customers" >
            <tr>
                <th>WantedID</th>
                <th>Image</th>
                <th>CrimeName</th>
                <th>Gender</th>
                <th>TypeCrime</th>
                <th>Status</th>
                <th>Catch</th>
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
                    <td><c:if test="${x.status == 'Wanted'}">

                            <button onclick="document.getElementById('id01').style.display = 'block'" style="width:auto;">Catched</button>

                            <div id="id01" class="modal">
                                <form class="modal-content animate" action="CatchedServlet">
                                    <div class="imgcontainer">
                                        <center><h2>Catched Form</h2></center>
                                        <span onclick="document.getElementById('id01').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                                        <img src="img_avatar2.png" alt="Avatar" class="avatar">

                                        <center><h3>${x.cName}</h3></center>

                                    </div>

                                    <div class="container">

                                        <label><b>Catched Date</b></label>
                                        <input type="text" placeholder="Enter Catched" name="catchedDate" required>

                                        <label><b>Prison ID</b></label>
                                        <select name="prisonID">
                                            <option value="" ${param.prisonID == i.pID? "selected": ""} ></option>
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
                        </c:if></td>
                    <td><a href="wanteddetail.jsp?wantedID=${x.wID}">See more</a></td>
                </tr>  

            </c:forEach>



    </body>
</html>


