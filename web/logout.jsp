<%-- 
    Document   : logout
    Created on : 12 Jan, 2022, 12:18:33 PM
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
        <%
session.invalidate();
response.sendRedirect("AdminDash.jsp");
%>
    </body>
</html>
