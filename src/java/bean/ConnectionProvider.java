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
 
import java.sql.Connection;  
import java.sql.DriverManager;  
import static bean.Provider.CONNECTION_URL;
import static bean.Provider.DRIVER;
import static bean.Provider.PASSWORD;
import static bean.Provider.USERNAME;
  
public class ConnectionProvider {  
private static Connection con=null;  
static{  
try{  
    String DRIVER="com.mysql.jdbc.Driver";  
String CONNECTION_URL="jdbc:mysql://localhost:3307/new";  
String USERNAME="root";  
String PASSWORD="";  
Class.forName(DRIVER);  
con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);  
}catch(Exception e){}  
}  
  
public static Connection getCon(){  
    return con;  
}  
  
}  