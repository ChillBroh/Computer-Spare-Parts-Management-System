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

	//insert data to contact us table
	public boolean insertContactus(String name, String email, String phone, String reason, String message) {

		// insert data
		try {
			//create connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			//insert data to databse
			String sql = "insert into contactus values(0,'" + name + "','" + email + "','" + phone + "','" + reason
					+ "','" + message + "') ";
			
			//execute query
			int rs = stmt.executeUpdate(sql);
			
			//check whether query executed successfully
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			//catch and print exception
			e.printStackTrace();
		}

		return isSuccess;
	}

	//insert data to user table
	public boolean insertUser(int id, String fname, String lname, String username, String email, String phone,
			String password, String type) {

		try {
			
			//create connection
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			
			
			String sql = "insert into user values (0,'" + fname + "','" + lname + "','" + username + "','" + email
					+ "','" + phone + "','" + password + "','" + type + "')";
			
			//execute query
			int rs = stmt.executeUpdate(sql);
			
			//check whether query executed successfully
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			//catch and print exception
			e.printStackTrace();
		}

		return isSuccess;
	}

	//validate customer
	public boolean userAlreadyExsist(String username) {
		boolean userStatus = false;
		String uname;

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "select username from user";
			rs = stmt.executeQuery(sql);

				//check whole table to find is there any match to entered username from new user
			while (rs.next()) {
				uname = rs.getString("username");
					//check table values with given input
				if (uname.equals(username)) {
					userStatus = true;

				}
			}

		} catch (Exception e) {

			e.printStackTrace();
		}
		System.out.println(userStatus);
		return userStatus;

	}

	//update customer
	public boolean updateCustomer(String id, String fname, String lname, String username, String email, String phone) {
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "update user set fname = '" + fname + ", lname = '" + lname + "',  Username = '" + username
					+ "', email= '" + email + "', phone = '" + phone + "', where id= '" + id + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	//get customer details using arraylist as objects
	public List<Customer> getCustomerDetails(String id) {
		//convert received id to integer
		int cid = Integer.parseInt(id);
		
		//create array list
		ArrayList<Customer> cus = new ArrayList<>();

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id = '" + cid + "'";
			rs = stmt.executeQuery(sql);

			//check for the whole row in the table according to given id
			if (rs.next()) {
				int uid = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String uname = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String pass = rs.getString(7);
				String type = rs.getString(8);

					//create customer object and passe found data to store
				Customer c = new Customer(uid, fname, lname, uname, email, phone, pass, type);
				cus.add(c);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return cus;
	}

	//validate customer whether the customer exist or not
	public boolean validatenew(String username, String password) {

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "Select * from user where username ='"+username+"' and password = '"+password+"' ";

			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
System.out.println(isSuccess);
		return isSuccess;
	}

	//validate and get details according to the username and password
	public List<Customer> validate(String userName, String password) {

		ArrayList<Customer> cus = new ArrayList<>();

		// validate

		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();

			String sql = "Select * from user where username ='" + userName + "' and password = '" + password + "' ";

			rs = stmt.executeQuery(sql);
			if (rs.next()) {
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

	public boolean updateUserDetails(String id, String fname, String lname, String username, String email, String phone,
			String type) {
		int convertID = Integer.parseInt(id);
		try {
			System.out.println(fname);
			Connection con = DBconnection.getConnection();
			Statement st = con.createStatement();
			String sql = "update user set fname = '" + fname + "', lname = '" + lname + "',  username = '" + username
					+ "', email= '" + email + "', phone = '" + phone + "'  where id= '" + convertID + "'";
			int result = st.executeUpdate(sql);
			if (result > 0) {
				isSuccess = true;
			}
		} catch (Exception e) {
			//get excepton as readable message
			System.out.println("error in updateUserDetails method " + e.getMessage());
		}
		return isSuccess;
	}

	public List<Customer> getUserProfileDetails(String uid, String username) {
		ArrayList<Customer> list = new ArrayList<>();
		int convertId = Integer.parseInt(uid);
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from user where id = '" + convertId + "' and username = '" + username + "'";
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				int id = rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String uname = rs.getString(4);
				String email = rs.getString(5);
				String phone = rs.getString(6);
				String pass = rs.getString(7);
				String type = rs.getString(8);

				Customer c = new Customer(id, fname, lname, uname, email, phone, pass, type);
				list.add(c);
			}
		} catch (Exception e) {
			System.out.println("error occurs in getUserProfileDetails method " + e.getMessage());
		}
		return list;
	}

	public boolean deleteDetails(String userid,String username) {
		int convertId = Integer.parseInt(userid);
		try {
			con = DBconnection.getConnection();
			stmt = con.createStatement();
			String sql = "delete from user where id = '"+convertId+"' and username = '"+username+"'";
			int result = stmt.executeUpdate(sql);
			if(result >0) {
				isSuccess = true;
			}
		}catch (Exception e) {
			System.out.println("error in deleteDetails method "+e.getMessage());
		}
		return isSuccess;
	}
}
