package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/signup")
public class CustomerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String phone = request.getParameter("phone");
		
		
		CustomerDBUtill cusdb = new CustomerDBUtill();	
		
		boolean check = cusdb.userAlreadyExsist(username);
		if(check == false) {
			
			boolean isTrue = cusdb.insertUser(0, fname, lname, username, email, phone, password,"user");
				
				if(isTrue == true) {
					RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
					dis.forward(request, response);
				}else {
					RequestDispatcher dis = request.getRequestDispatcher("signup.jsp");
					dis.forward(request, response);
				}
			
		}else {
			request.setAttribute("check", "True");
			RequestDispatcher dis = request.getRequestDispatcher("signup.jsp");
			dis.forward(request, response);
		}
			
			
	}
		
	}


