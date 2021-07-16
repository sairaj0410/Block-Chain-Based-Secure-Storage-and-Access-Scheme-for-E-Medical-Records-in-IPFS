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

public class Logins extends HttpServlet {

	private static final long serialVersionUID = 1L;
	Dao dao = new Dao();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session2 = request.getSession();
		try {
			String email = request.getParameter("email");
			String Password = request.getParameter("pass");

			String result = dao.DoctorLogin(email, Password);
			String[] restemp = result.split("@");

			System.out.println(restemp[1] + "----------" + restemp[0]);

			if (!result.equalsIgnoreCase("no")) {
				session.setAttribute("docid", restemp[1]);
				session2.setAttribute("docid", restemp[1]);
				session.setAttribute("category", restemp[0]);
				session.setAttribute("name", restemp[2]);
				session.setAttribute("image", restemp[3]);
				System.out.println("ok");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("DoctorViewPage.jsp");
				requestDispatcher.forward(request, response);

			} else {
				String msg = "Invalied Email Or Password";
				System.out.println("no");
				request.setAttribute("msg", msg);
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("DoctorLogin.jsp");
				requestDispatcher.forward(request, response);
			}

		} catch (Exception e) {
			String msg = "Invalied Email Or Password";
			System.out.println("no");
			request.setAttribute("msg", msg);
			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("DoctorLogin.jsp");
			requestDispatcher.forward(request, response);
		}
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String email = request.getParameter("email");
			String Password = request.getParameter("pass");

			System.out.println(email + "----------" + Password);

			String result = dao.PatientLogin(email, Password);

			String[] restemp = result.split("@");

			if (!result.equalsIgnoreCase("no")) {
				HttpSession session = request.getSession();
				session.setAttribute("patientid", restemp[1]);
				session.setAttribute("category", restemp[0]);
				System.out.println("ok");
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("PasitentAppoinment.jsp");
				requestDispatcher.forward(request, response);
			} else {
				String msg = "Invalied Email Or Password";
				System.out.println("no");
				request.setAttribute("msg", msg);
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("PatientLogn.jsp");
				requestDispatcher.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
