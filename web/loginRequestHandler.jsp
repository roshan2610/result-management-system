<%-- 
    Document   : loginRequestHandler
    Created on : 12 Jan, 2022, 12:17:01 PM
    Author     : ROSHA
--%>

<%@page import="com.LoginBean"%>
<%@page import="com.LoginBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.LoginDAO"%>
<jsp:useBean id="loginBean" class="com.LoginBean" scope="session"/>
<jsp:setProperty name="loginBean" property="*"/>
 
<%
String result=LoginDAO.loginCheck(loginBean);
 
if(result.equals("true")){
session.setAttribute("username",loginBean.getUsername());
response.sendRedirect("home.jsp");
}
 
if(result.equals("false")){
response.sendRedirect("AdminDash.jsp?status=false");
}
 
if(result.equals("error")){
    response.sendRedirect("AdminDash.jsp?status=error");
}
 
%>