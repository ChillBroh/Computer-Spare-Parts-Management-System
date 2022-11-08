package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CustomerDBUtill {
	boolean isSuccess = false;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	public boolean insertContactus(String name, String email, String phone, String reason, String message) {
		
		//insert data
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into contactus values(0,'"+name+"','"+email+"','"+phone+"','"+reason+"','"+message+"') ";
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
}
