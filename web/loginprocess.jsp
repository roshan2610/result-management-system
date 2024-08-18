<%-- 
    Document   : loginprocess
    Created on : 24 Feb, 2022, 11:54:42 PM
    Author     : ROSHA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result</title>
    </head>
    <body>
        <%@page import="bean.LoginDao"%>  
        <jsp:useBean id="obj" class="bean.LoginBean"/>  

        <jsp:setProperty property="*" name="obj"/>  

        <%
            boolean status = LoginDao.validate(obj);
            if (status) {
                out.println("");
                session.setAttribute("session", "TRUE");
                %>
                <jsp:include page="resultMain.jsp"></jsp:include>
                <%
            } else {
                out.print("Sorry, Id or Mother Name not matching!");
        %>  
        <jsp:include page="student.jsp"></jsp:include>  
        <%
            }
        %>
    </body>
</html>
