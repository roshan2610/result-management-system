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
import java.sql.DriverManager;
import java.sql.SQLException;
 
public class DBConnection {
static final String URL="jdbc:mysql://localhost:3307/";
static final String DATABASE_NAME="new";
static final String USERNAME="root";
static final String PASSWORD="";
public static Connection getConnection(){
Connection con=null;
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection(URL+DATABASE_NAME,USERNAME,PASSWORD);
 
}catch(ClassNotFoundException | SQLException e){
}
return con;
}
}