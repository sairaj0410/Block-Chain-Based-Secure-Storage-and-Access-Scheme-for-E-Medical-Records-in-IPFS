package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Dao;

public class DoctorApporveAndcalcel extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Dao dao = new Dao();
		Random ran = new Random();
		try {
			String type = request.getParameter("type");
			String sno = request.getParameter("sno");
			String patienid = request.getParameter("Patientid");

			String token = "T" + ran.nextInt(9999);

			String calcel = "no";

			System.out
					.println(sno + "------" + patienid + "-----------" + type);

			if (type.equals("Cancel")) {
				String result = dao.DoctorCancel(sno, calcel);
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("DoctorViewPage.jsp");
				requestDispatcher.include(request, response);

			} else {

				String result = dao.DoctorAccept(sno, token);
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("DoctorViewPage.jsp");
				requestDispatcher.include(request, response);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
