package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet("/login")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//create session object 
		HttpSession session = request.getSession();

		
		String username = request.getParameter("username");
		String password = request.getParameter("pass");
		
		CustomerDBUtill cusdb = new CustomerDBUtill();
		boolean isTrue = cusdb.validatenew(username, password);
		System.out.println(isTrue);
		if(isTrue == true) {
			
				List<Customer>  cusDetails = cusdb.validate(username, password); 
				
				//set sessions
				request.setAttribute("cusDetails", cusDetails);
				session.setAttribute("username", username);
				
				RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
				dis.forward(request, response);
			
		}
		else {
			
			//store false to display sweet alert in login with js validation
			request.setAttribute("checkLogin", "False");
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		
		}
	}

}
