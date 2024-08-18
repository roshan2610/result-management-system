<%-- 
    Document   : insert
    Created on : 13 Jan, 2022, 12:08:35 AM
    Author     : ROSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .btn1{
    padding: 9px 14px;
    border-radius: 19px;
    color: white;
    background-color: red;
    font-weight: bold;
    font-size: 21px;
    margin: 0 3px;
    cursor: pointer;
}
        </style>
    </head>
    <body style="background-color: lightgray">
        <div align="center">
<!--            <fieldset style="width:1400px;height:auto;border:5px solid red  ; margin:auto;
                      background-color:lightskyblue; font-size: 35px;">-->
                <sql:setDataSource var="ds"
                                   driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost:3307/new"
                                   user="root"
                                   password=""/>

                <sql:update dataSource="${ds}" var="count">  
                    INSERT INTO st VALUES ('${param.id}','${param.name}','${param.gender}','${param.mothername}','${param.coursename}','${param.sem}','${param.Subject1}','${param.Subject2}','${param.Subject3}','${param.Subject4}','${param.Subject5}');  
                </sql:update> 
                    <h2>Record Inserted Successfully..!</h2><BR>
                <sql:query dataSource="${ds}" var="rs">
                    SELECT * from st;
                </sql:query>
                <table border="1" width="100%" class="table-s">
                    <tr>
                        <th style='text-align:center;height: 50px;'>Roll No</th>
                        <th style='text-align:center;'>Student Name</th>
                        <th style='text-align:center;'>Gender</th>
                        <th style='text-align:center;'>Course Name</th>
                        <th style='text-align:center;'>Semester</th>
                        <th style='text-align:center;'>Subject1</th>
                        <th style='text-align:center;'>Subject2</th>
                        <th style='text-align:center;'>Subject3</th>
                        <th style='text-align:center;'>Subject4</th>
                        <th style='text-align:center;'>Subject5</th>
               
                        
                    </tr>

                    <c:forEach var="row" items="${rs.rows}">
                        <tr>
                            <td style='text-align:center;background-color: #FFFFF4;height:70px;width:100px'><c:out value="${row.id}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.name}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.gender}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.coursename}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.sem}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.Subject1}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.Subject2}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.Subject3}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.Subject4}"/></td>
                            <td style='text-align:center;background-color: #FFFFF4;height:80px;width:100px'><c:out value="${row.Subject5}"/></td>
                        </c:forEach>
                    </tr>
                    
                </table><BR><BR>
                    <div class="buttons1">
                     <a href="home.jsp">
                        <button class="btn1">Back</button></a>
            </fieldset>
        </div>
    </body>
</html>
