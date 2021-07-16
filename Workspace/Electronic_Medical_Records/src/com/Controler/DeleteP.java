package com.Controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.Dao;

public class DeleteP extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dao dao = new Dao();
		try {
			String email = request.getParameter("email");
			System.out.println("----------------->>"+email);
			String result = dao.PatientColoumDoctor(email);
			HttpSession session = request.getSession();
			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("PatientDetails.jsp");
			requestDispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
