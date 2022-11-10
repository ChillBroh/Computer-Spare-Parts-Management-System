package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String uname = request.getParameter("uname");
		
		CustomerDBUtill service  = new CustomerDBUtill();
		
		boolean result = service.deleteDetails(id, uname);
		
		if(result == true) {
			RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
			rd.forward(request, response);
		}else {
			
		}
		
	}

}
