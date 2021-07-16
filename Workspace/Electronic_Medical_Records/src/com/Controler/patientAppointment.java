package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Dao.Dao;
import com.Module.PatientAppointmentRequestpojo;

public class patientAppointment extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			HttpSession session = request.getSession();
			Random ran = new Random();
			Dao dao = new Dao();

			String patientid = request.getParameter("pid");
			String doctorid = request.getParameter("did");
			String category = request.getParameter("category");
			String adate = request.getParameter("apdate");
			String status = "pending";
			// String tockan = "Tocken" + ran.nextInt(9999);
			String tockan = "-";

			System.out.println(patientid + "--" + doctorid + "--" + category
					+ "--" + adate + "--" + status);
			PatientAppointmentRequestpojo obj = new PatientAppointmentRequestpojo();

			obj.setPatientid(patientid);
			obj.setDoctorid(doctorid);
			obj.setCategory(category);
			obj.setAppointmentDate(adate);
			obj.setStatus(status);
			obj.setTocken(tockan);

			boolean result = dao.savePatientAppoinment(obj);
			if (result) {
				System.out.println("ok---------ok");
				session.setAttribute("patientid", patientid);
				session.setAttribute("category", category);
				request.setAttribute("msg1", "Appointment Submitted");
				RequestDispatcher rd = request
						.getRequestDispatcher("PasitentAppoinment.jsp");
				rd.forward(request, response);

			} else {
				System.out.println("No-------------No");
				request.setAttribute("msg1", "Failed");
				RequestDispatcher rd = request
						.getRequestDispatcher("PasitentAppoinment.jsp");
				rd.forward(request, response);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
