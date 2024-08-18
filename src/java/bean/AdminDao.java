/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
import java.sql.*;  
/**
 *
 * @author ROSHA
 */
public class AdminDao {

public static int register(User u){  
int status=0;  
try{  
Connection con=ConnectionProvider.getCon();  
PreparedStatement ps=con.prepareStatement("insert into admin values(?,?,?,?)");  
ps.setString(1,u.getName()); 
ps.setString(2,u.getUsername());  
ps.setString(3,u.getEmail());  
ps.setString(4,u.getPassword());  
              
status=ps.executeUpdate();  
}catch(SQLException e){}  
      
return status;  
}  
  
}  

