<%-- 
    Document   : showStudent
    Created on : 12 Jan, 2022, 11:54:34 PM
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
        <title>List Students</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .btn1{
    padding: 9px 14px;
    border-radius: 22px;
    color: white;
    background-color: red;
    font-weight: bold;
    font-size: 21px;
    margin: 0 3px;
    cursor: pointer;
}
        </style>
    </head>
    <body style="background-image: url('image/1.jpg');
                    background-repeat: no-repeat;
                    background-size: cover;">
        <div align="center"><center><h1>List of Students</h1></center><BR>
<!--            <fieldset style="border:5px solid red  ; margin:auto;
                      background-color:lightskyblue; font-size: 25px;">-->
                <sql:setDataSource var="ds"
                                   driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost:3307/new"
                                   user="root"
                                   password=""/>
                <sql:query dataSource="${ds}" var="rs">
                    SELECT * from st;
                </sql:query>
                    <div class="container">
                <table class="table">
                    <tr  class="table-info">
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
                        <tr  class="table-info">
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
                </table><br>
<div class="buttons1">
                     <a href="home.jsp">
                        <button class="btn1">Back</button></a><!--            </fieldset>-->
        </div>
    </body>
    </ <html>

