import java.io.IOException;  
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;  
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static sun.misc.MessageUtils.out;
  
public class contact extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
out.println("<title>Contact Us</title>");
PrintWriter out = response.getWriter();  
          
String f=request.getParameter("fname");  
String l=request.getParameter("lname");  
String e=request.getParameter("email");  
String c=request.getParameter("comment");  
          
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/new","root","");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into contact values(?,?,?,?)");  
  
ps.setString(1,f);  
ps.setString(2,l);  
ps.setString(3,e);  
ps.setString(4,c);  
          
int i=ps.executeUpdate();  
if(i>0)  
    out.println("<br><br><br>");
    out.println("<fieldset style=\"margin-inline-start: -10px;;width: 40%;margin-left: 0;border:1px solid black  ; margin:auto;\n" +
"                      background-color:lightskyblue; font-size: 35px;\"><br> ");
    out.println("<body style='background-image:url(image/rs.jpg);background-size:cover;background-repeat:no-repeat;background-position: center center;'>");
out.print("<h2>Thank you for your response..!</h2>");  
      out.print("<center><a href='contactUs.html' style='background-color: white;\n" +
"  color: black;\n" +
"  border: 2px solid #4CAF50; /* Green */\n" +
";text-decoration: none;box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);'class='button'>Back</a>");
          
}catch (Exception e2) {System.out.println(e2);}  
          
out.close();  


 }   
}  