<%-- 
    Document   : deleteStudent
    Created on : 13 Jan, 2022, 1:09:41 AM
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
            .buttons2{
                margin-top: 34px;
            }

            .btn2{
                padding: 9px 14px;
                border-radius: 22px;
                color: white;
                background-color: green;
                font-weight: bold;
                font-size: 21px;
                margin: 0 3px;
                cursor: pointer;
            }
        </style>

    </head>
    <body style="background-image: url('image/1.jpg');
          background-repeat: no-repeat;
          background-size: cover;"><br>
        <div class="buttons1">
            <a href="home.jsp">
                <button class="btn1">Home</button></a>
        </div>
        <div align="center">
            <fieldset style="width:400px;height:auto;border:5px solid red  ; margin:auto;
                      background-color:lightskyblue; font-size: 35px;">
                <sql:setDataSource var="ds"
                                   driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost:3307/new"
                                   user="root"
                                   password=""/>

                <sql:update dataSource="${ds}" var="count">  
                    delete from st where id='${param.id}' ; 
                </sql:update> 
                <h2>Data deleted Successfully..!</h2>
                <div class="buttons2">
                    <a href="showStudent.jsp">
                        <button class="btn2">Show Students</button></a>
                </div>

        </div>
    </fieldset>
</div>
</body>
</html>
