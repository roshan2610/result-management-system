/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

/**
 *
 * @author ROSHA
 */ 
import bean.LoginBean;
import java.sql.*;  
import bean.ConnectionProvider;
public class LoginDao {  
  
public static boolean validate(LoginBean bean){  
boolean status=false;  
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement(  
    "select * from st where id=? and mothername=? and name=?");  
  
ps.setInt(1,bean.getId());  
ps.setString(2, bean.getMothername());  
ps.setString(3, bean.getName());

              
ResultSet rs=ps.executeQuery();  
status=rs.next();  
              
}catch(SQLException e){}  
  
return status;  
  
}  
}  