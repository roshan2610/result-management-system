<%-- 
    Document   : adminProcess
    Created on : 25 Feb, 2022, 11:00:40 AM
    Author     : ROSHA
--%>

<%@page import="bean.AdminDao"%>
 
<jsp:useBean id="obj" class="bean.User"/>  
  
<jsp:setProperty property="*" name="obj"/>  
  
<%  
int status=AdminDao.register(obj);  
if(status>0)  {
    out.println("Please login into the form now..!");
    response.sendRedirect("AdminDash.jsp");
}
%> 