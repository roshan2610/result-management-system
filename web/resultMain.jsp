<%-- 
    Document   : resultMain
    Created on : 25 Feb, 2022, 12:16:38 AM
    Author     : ROSHA
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Student</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="newcssstyle.css">
    </head>
    <body style='background-image: url(image/bg.png);
                 height:100%;
                 width: 100%;
                 background-repeat: no-repeat;
                 background-size: cover;
                 position: fixed;'>
       
        <div class="buttons">
                        <a href="student.jsp">
                        <button class="btn">Logout</button></a><br>
        <div class="form-group">
            <div align="center"><br><br>
                
                <fieldset style="width:650px;height:500px;border:7px solid red  ; margin:auto;
                          background-color:lightskyblue; font-size: 25px">
                    <h1 style="color:red">Result Management System</h1><br>
                    <img height= "100px" id="pp" width="100px" src="image/st.png"/>
				<br><br>
                    <form method="get" action="student">     
                        <div class="form-group">

                            
                            <%
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    con = DriverManager.getConnection("jdbc:mysql://localhost:3307/new", "root", "");
                                    pst = con.prepareStatement("select distinct id from st");
                                    rs = pst.executeQuery();
                                    if (rs.next()) {
                                        out.println("<tr>");
                                        out.println("<td><h2>Choose Seat No</h2></td><br>");
                                        out.println("<td>");
                                        out.println("<select style=font-size:25px;background-color:lightgreen name='combo'>");
                                        do {
                                            String id = rs.getString("id");
                                            
                                            out.println("<h2><option value='" + id + "'style=font-size:25px; >" + id + " </option></h2>");
                                        } while (rs.next());
                                        out.println("</select>");
                                        rs.close();
                                        out.println("</td></tr>");
                                        out.println("<br>");
                                        out.println("<br>");
                                        out.println("</tr><td colspan=2 align=center><b><input type=submit  value=Search style=font-size:25px;background-color:#4080ff></b></td></tr><br>");
                                        out.println("<br>");
                                    } else {
                                        out.println("<tr>");
                                        out.println("<td colspan=2 align=right>");
                                        out.println("Sorry table is Empty");
                                        out.println("</td>");
                                    }
                                    out.println("</form>");
                                } catch (Exception e) {
                                    e.printStackTrace(); // Or System.out.println(e);
                                }

                            %>
                    </div>
                        </div>
                    </form>       
                </fieldset></div>
        </div>      
    </div>
</div>
</body>
</html>
