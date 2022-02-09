package com.hotelapp.util;
 
import java.sql.DriverManager;
import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.hotelapp.model.managerlogin; 

@SuppressWarnings("unused")
public class DBconnectionManager {

	public static Connection initializeDatabase() throws SQLException, ClassNotFoundException{
			 String dbDriver=constantForManager.DB_DRIVER;
			 String dbURL=constantForManager.URL;
	         String dbName=constantForManager.DB_NAME;
	         String dbUsername=	constantForManager.USER;
	         String dbPassword=constantForManager.PASSWORD;
	         
	         Class.forName(dbDriver);
	         Connection con=(Connection) DriverManager.getConnection(dbURL+dbName,dbUsername,dbPassword);
	         
	         return con;
		 }
		  
	}
 
 


