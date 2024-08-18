/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author ROSHA
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
 
public class LoginDAO {
public static String loginCheck(LoginBean loginBean){
String query="select * from admin where username=? and password=?";
try{
Connection con=DBConnection.getConnection();
PreparedStatement ps=con.prepareStatement(query);

ps.setString(1,loginBean.getUsername());
ps.setString(2,loginBean.getPassword());
ResultSet rs=ps.executeQuery();
if(rs.next()){
return "true";
}
else{
return "false";
}
}catch(SQLException e){
}
return "error";
}
}