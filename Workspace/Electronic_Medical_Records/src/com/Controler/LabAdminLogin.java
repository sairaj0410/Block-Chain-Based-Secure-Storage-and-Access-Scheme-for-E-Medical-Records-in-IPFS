package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LabAdminLogin extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String email = request.getParameter("email");
			String pass = request.getParameter("pass");
			System.out.println(email + "----------" + pass);

			if (email.equals("Labadmin@gmail.com") & pass.equals("admin")) {
				System.out.println("----------ok");
				request.setAttribute("msg", "");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("Lab.jsp");
				requestDispatcher.include(request, response);
			} else {
				System.out.println("----------no");
				request.setAttribute("msg", "invalied Email And Password");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("MedicalLabLogin.jsp");
				requestDispatcher.include(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
