package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class UpdateUserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String uname = request.getParameter("uname");
		String phone = request.getParameter("phone");
		String type = request.getParameter("type");
		
		CustomerDBUtill service = new CustomerDBUtill();
		
		boolean result = service.updateUserDetails(id, fname, lname, uname, email, phone, type);
		
		if(result == true) {
			List<Customer> list = service.getUserProfileDetails(id,uname);
			request.setAttribute("cusDetails", list);
			RequestDispatcher rd = request.getRequestDispatcher("userprofile.jsp");
			rd.forward(request, response);
		}else {
			
		}
	}

}
