package com.customer;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
	
	public boolean insertUser(int id, String fname,String lname, String username, String email, String phone, String password,String type) {
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "insert into user values (0,'"+fname+"','"+lname+"','"+username+"','"+email+"','"+phone+"','"+password+"','"+type+"')";
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
	
	public boolean userAlreadyExsist(String username){
		boolean userStatus = false;
		String uname;
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "select username from user";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				uname = rs.getString("username");
				
				
				if(uname.equals(username)) {
					userStatus = true;
					
				}
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		System.out.println(userStatus);
		return userStatus;
		
	}
	
	public boolean updateCustomer(String id, String fname, String lname, String username,String email, String phone) {
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "update user set fname = '"+fname+", lname = '"+lname+"',  Username = '"+username+"', email= '"+email+"', phone = '"+phone+"', where id= '"+id+"'";
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
	
	public List<Customer> getCustomerDetails(String id){
		int cid = Integer.parseInt(id);
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id = '"+cid+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int uid = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String uname = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String pass = rs.getString(7);
				String type = rs.getString(8);
				
				Customer c = new Customer(uid, fname, lname, uname, email, phone, pass, type);
				cus.add(c);
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return cus;
	}
	
	public boolean validatenew(String username, String password) {
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from user where username ='"+username+"' and password = '"+password+"' ";
			
			rs = stmt.executeQuery(sql);
	
		
			if(rs.next()) {
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
	
public List<Customer> validate(String userName, String password){
		
		ArrayList <Customer> cus = new ArrayList<>();
	
	
		//validate
		
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			String sql = "Select * from user where username ='"+userName+"' and password = '"+password+"' ";
			
			rs = stmt.executeQuery(sql);
			if(rs.next()) {
				int uid = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String uname = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String pass = rs.getString(7);
				String type = rs.getString(8);
				System.out.println(uname);
				Customer c = new Customer(uid, fname, lname, uname, email, phone, pass, type);
				cus.add(c);
				
				
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cus;
		
	}
}


























