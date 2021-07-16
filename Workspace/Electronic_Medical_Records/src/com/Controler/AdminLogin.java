package com.Controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		try {
			if (email.equalsIgnoreCase("admin@gmail.com")
					&& pass.equalsIgnoreCase("admin")) {

				System.out.println("login");

				response.sendRedirect("AdminView.jsp");
			} else {

				System.out.println("failed");
				request.setAttribute("error", "Invalid Email or Password");
				RequestDispatcher rd = request
						.getRequestDispatcher("AdminLogin.jsp");
				rd.include(request, response);
			}
		} catch (Exception e) {
			System.err.println("=======>" + e);
		}

	}

}
