package com.customer;

public class Customer {
		private int id;
		private String fname;
		private String lname;
		private String username;
		private String email;
		private String phone;
		private String password;
		private String type;
		
		public Customer(int id, String fname,String lname, String username, String email, String phone, String password,String type) {
			this.id = id;
			this.fname = fname;
			this.lname = lname;
			this.email = email;
			this.phone = phone;
			this.password = password;
			this.type = type;
			this.username = username;
			
		}

		public int getId() {
			return id;
		}


		public String getFname() {
			return fname;
		}


		public String getLname() {
			return lname;
		}

		public String getUsername() {
			return username;
		}


		public String getEmail() {
			return email;
		}

	
		public String getPhone() {
			return phone;
		}


		public String getPassword() {
			return password;
		}


		public String getType() {
			return type;
		}

		
		
		
		
}
