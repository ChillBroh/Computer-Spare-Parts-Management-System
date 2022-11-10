package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		boolean isTrue;
		
		CustomerDBUtill cus = new CustomerDBUtill();
		isTrue = cus.updateCustomer(id, fname, lname, username, email, phone);
		
		if(isTrue == true) {
			
			CustomerDBUtill cusD = new CustomerDBUtill();
			
			try {
				List<Customer> cusDetails = cusD.getCustomerDetails(id);
				request.setAttribute("cusDetails", cusDetails);
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
			
			RequestDispatcher dis = request.getRequestDispatcher("userprofile.jsp");
			dis.forward(request, response);
		}
		else {
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
		
	}

}


