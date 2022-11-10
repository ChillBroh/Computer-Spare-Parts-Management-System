package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;



@WebServlet("/cusinsert")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//get details from contact form
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String reason = request.getParameter("reason");
		String message = request.getParameter("message");
		
	
		//create utill object
		CustomerDBUtill cusdb = new CustomerDBUtill();
		
		
		//access insert function using object
		boolean isTrue = cusdb.insertContactus(name, email, phone, reason, message);
		
		//check return value
		if(isTrue == true) {
			
			request.setAttribute("consuccess", "True");
			//if true redirrect to indexpage
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		
		}
		else {
			request.setAttribute("consuccess", "False");
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
	}

}
