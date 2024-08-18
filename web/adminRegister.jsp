<%-- 
    Document   : adminRegister
    Created on : 25 Feb, 2022, 10:56:38 AM
    Author     : ROSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="adminProcess.jsp">  

            <input type="text" name="name" placeholder='Name'/><br/>
            <input type="text" name="username" placeholder='Username'/><br/>  
            <input type="text" name="email" placeholder='Email'/><br/>  
            <input type="password" name="password" placeholder='Password'/><br/>  
            <input type="submit" value="Register"/>  
        </form>  
    </body>
</html>
