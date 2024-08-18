<%-- 
    Document   : updateStudent
    Created on : 13 Jan, 2022, 12:40:58 AM
    Author     : ROSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Update Record</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
                    .buttons1{
    margin-top: 34px;
}

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
        <div class="buttons1">
                     <a href="home.jsp">
                        <button class="btn1">Back</button></a>
                </div>
        <div align="center">
            <fieldset style="width:600px;height:auto;border:5px solid red  ; margin:auto;
                      background-color:lightskyblue; font-size: 30px;">
        <sql:setDataSource var="ds"
                           driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3307/new"
                           user="root"
                           password=""/>
        String id = request.getParameter("id");

        if id exists in st{
        <sql:update dataSource="${ds}" var="count">  
            update st set id='${param.id}', name='${param.name}',gender='${param.gender}',mothername='${param.mothername}',coursename='${param.coursename}',sem='${param.sem}',Subject1='${param.Subject1}',Subject2='${param.Subject2}',Subject3='${param.Subject3}',Subject4='${param.Subject4}',Subject5='${param.Subject5}' where id='${param.id}';
        </sql:update> }
        else{
        out.println("Id does not exist!");
        

            <h1>Student Data Updated Successfully..!</h1>
            <h2>To see the Data</h2>
            <div class="buttons1">
                     <a href="showStudent.jsp">
                        <button class="btn1">Show Students</button></a>
                </div>
            </fieldset>
    </body>
</html>

