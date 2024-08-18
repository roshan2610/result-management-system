import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.apache.taglibs.standard.tag.common.core.OutSupport.out;


public class student extends HttpServlet 
{
     int i;
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    float percentage;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        try {
             i++;
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            String id= request.getParameter("combo");


            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3307/new","root","");
            pst = con.prepareStatement("select id,name,gender,mothername,coursename,sem,Subject1,Subject2,Subject3,Subject4,Subject5 from st where id=?");
            pst.setString(1, id);
            rs = pst.executeQuery();
            out.print("<br>");
            out.println("<a href='student.jsp'>");
            out.println("<button style='padding: 9px 14px;border-radius: 22px;color: white;background-color: red;font-weight: bold;font-size: 21px;margin: 0 3px;cursor: pointer;'>Back</button></a><br>");


            out.print("<title>Results</title>");
            out.print("<br>");
          out.println("<body style='background-color:lightskyblue;'>");
//            out.println("<body style='background-image: url(image/);background-size: cover;background-repeat: no-repeat;'>");
            out.println("<html><head><link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'>");
            out.println("<html><head><script src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'></script>");
            out.println("<html><head><script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script></head></html>");
            
            if(rs.isBeforeFirst()){
                  
                while(rs.next()){
             out.print("<center>");

                out.println("<div class='container'>");
                out.println("<h1 style=\"text-shadow: 4px 4px 7px red;\"><b>Student Report Card<b></h1>");
                out.println("<table class='table'>");
//                out.println("<tr><td colspan=20>K J Somaiya </td></tr>");
                out.println("<tr class=\"table-dark\"><td style='text-align:center;height:60px;width:80px' colspan=6 ><b>Rollno </b></td><td style='text-align:center;height:40px;width:60px' colspan=4><b> Class </b></td>      <td style='text-align:center;height:40px;width:60px' colspan=4><b> Semester </b></td>        <td style='text-align:center;height:60px;width:80px' colspan=5 ><b>Mother Name </b></td><td colspan=6><center><b>Student Name </b> </td></center></tr>");
                out.println("<tr class=\"table-info\"><td style='text-align:center;height:50px;width:70px' colspan=6>"+rs.getString("ID")+" </td><td style='text-align:center;height:40px;width:60px' colspan=4> <center> "+rs.getString("coursename")+" </center> </td>    <td style='text-align:center;height:40px;width:60px' colspan=4> <center> "+rs.getString("sem")+" </center> </td>           <td colspan=5><center> "+rs.getString("mothername")+" </center></td><td colspan=6><center> "+rs.getString("name")+" </center></td></tr><br></thead>");
                out.println("<tbody><tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10><b>Subject Name</b></td><td style='text-align:center;height:40px;width:60px' colspan=4><b>Out Of</b></td><td style='text-align:center;height:40px;width:60px' colspan=6><b> Marks Gained </b></td></tr>");
                out.println("<tr class=\"table-info\"><td colspan=10><b>Subject1</b></td><td colspan=4><center> 100</center></td><td colspan=6><center> "+rs.getInt("Subject1")+" </td></tr>");
                out.println("<tr class=\"table-info\"><td colspan=10><b>Subject2</b></td><td colspan=4><center> 100</td><td colspan=6><center> "+rs.getInt("Subject2")+" </td></tr>");
                out.println("<tr class=\"table-info\"><td colspan=10><b>Subject3</b></td><td colspan=4><center> 100</td><td colspan=6><center> "+rs.getInt("Subject3")+" </td></tr>");
                out.println("<tr class=\"table-info\"><td colspan=10><b>Subject4</b></td><td colspan=4><center> 100</td><td colspan=6><center> "+rs.getInt("Subject4")+" </td></tr>");
                out.println("<tr class=\"table-info\"><td colspan=10><b>Subject5</b></td><td colspan=4><center> 100</td><td colspan=6><center> "+rs.getInt("Subject5")+" </td></tr></tbody>");

                float total=rs.getInt("Subject1")+rs.getInt("Subject2")+rs.getInt("Subject3")+rs.getInt("Subject4")+rs.getInt("Subject5");
                float perc=(total/500)*100;               
//                  out.println("<tr><th></th><td></td><td rowspan='2'>"+((Integer.parseInt(t2)+Integer.parseInt(t3)))+"</td><td rowspan='2'>150</td><td rowspan='2'>"+m1+"</td><td rowspan='2'>"+gr(m1)+"</td>");
//                out.println("<tr><th>""</th><td>"+t3+"</td>");
                out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Total</b></td><td colspan=6><center><b> "+total+" </td></tr></tbody>");
                out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Percentage</b></td><td colspan=6> <center><b>"+perc+" </td></tr></tbody>");
                
                
               String grade;
                if(rs.getInt("Subject1")<35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> F </td></tr></tbody>");
                else if(rs.getInt("Subject2")<35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> F </td></tr></tbody>");
                else if(rs.getInt("Subject3")<35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> F </td></tr></tbody>");
                else if(rs.getInt("Subject4")<35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> F </td></tr></tbody>");
                else if(rs.getInt("Subject5")<35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> F </td></tr></tbody>");

                else if(perc<=100 && perc>98)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> O </td></tr></tbody>");
                
                
               else if(perc<=98 && perc>80)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> A </td></tr></tbody>");
                else if(perc<=80 && perc>65)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> B </td></tr></tbody>");
                else if(perc<=65 && perc>55)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> C </td></tr></tbody>");
                else if(perc<=55 && perc>35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> D </td></tr></tbody>");
                else if(perc<35)
                    out.println("<tr class=\"table-info\"><td style='text-align:center;height:40px;width:60px' colspan=10></td><td colspan=4><b><center>Grade</b></td><td colspan=6><center><b> F </td></tr></tbody>");
              
                
                
                out.println("</table>");
                out.println("</center></tr>");
                out.println("<center>");
                if( rs.getInt("Subject1")<35) {
                    out.println("<h1 style='color:red;text-shadow:2px 2px 3px black;'>You are FAILED..!</h1>");
                    }                 
                else if( rs.getInt("Subject2")<35) {
                    out.println("<h1 style='color:red;text-shadow:2px 2px 3px black;'>You are FAILED..!</h1>");
                    } 
                
                else if( rs.getInt("Subject3")<35) {
                    out.println("<h1 style='color:red;text-shadow:2px 2px 3px black;'>You are FAILED..!</h1>");
                    } 
                
                else if( rs.getInt("Subject4")<35) {
                    out.println("<h1 style='color:red;text-shadow:2px 2px 3px black;'>You are FAILED..!</h1>");
                    }  
                
                else if( rs.getInt("Subject5")<35) {
                    out.println("<h1 style='color:red;text-shadow:2px 2px 3px black;'> You are FAILED..!</h1>");
                    } 
                else 
                    out.println("<h1 style='color:Green;text-shadow:2px 2px 3px purple;'>Congratulations...you are PASS..!</h1>");
                
                out.print("<br>");
                out.println("<button onclick='window.print()'; style='padding: 9px 14px;border-radius: 22px;color: white;background-color: red;font-weight: bold;font-size: 21px;margin: 0 3px;cursor: pointer;'>Print</button>");
                out.println("</center>");
              }
                
            }
            
               } 
        
            catch (ClassNotFoundException ex) {
        } catch (SQLException ex) {
             Logger.getLogger(student.class.getName()).log(Level.SEVERE, null, ex);
         }
        
        
         out.println("</table>");
              out.println("</center>");
              
         
                
    }
    
    public void destory()
    {
        i = 0;
    }
    

}