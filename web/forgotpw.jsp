<%-- 
    Document   : forgotpw
    Created on : 13 Jan, 2022, 2:01:28 PM
    Author     : ROSHA
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Count Rows JSP</title>
</head>
<body>
<%
try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
Statement st=con.createStatement();
String email=request.getParameter("email");
String strQuery = "SELECT password FROM admin where email='"+email+"'";
ResultSet rs = st.executeQuery(strQuery);
rs.next();
String Countrow = rs.getString(1);
if(Countrow.equals("1")){
/*mail code
paste your mail code here
------------------
Mail code*/
out.println("Password send to your email id successfully !");
}
else{
out.println("Invalid Email Id !");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>
