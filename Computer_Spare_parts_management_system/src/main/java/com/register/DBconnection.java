package com.register;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnection {
	private static String url = "jdbc:mysql://localhost3306/computer_parts";
	private static String user = "root";
	private static String pass = "Melisha@9";
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,pass);
			
		}
		catch (Exception e){
			System.out.print("Database connection is failed");
		}
		
		return con;
	}
}
