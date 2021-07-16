package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.Dao;

public class Delete extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Dao dao = new Dao();

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String email = request.getParameter("email");
			String result = dao.deleteColoumDoctor(email);
			HttpSession session = request.getSession();
			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("DoctorDetails.jsp");
			requestDispatcher.forward(request, response);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// ------------------------------Patient---------------------//
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String email = request.getParameter("email");
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
