package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Dao.Dao;
import com.Module.DoctorAppoimentPojo;

public class DocApp extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			Random ran = new Random();
			Dao dao = new Dao();
			String patientid = request.getParameter("pid");
			String doctorid = request.getParameter("did");
			String adate = request.getParameter("apdate");
			String atime = request.getParameter("atime");
			
			String status="pending";

			String tok = "tocken" + ran.nextInt(9999);

			System.out.println(patientid + "---" + doctorid + "--" + adate
					+ "--" + atime + "--" + tok);

			DoctorAppoimentPojo doctoe = new DoctorAppoimentPojo(patientid,
					doctorid, adate, atime, tok,status);

			boolean result = dao.DoctorAppoiment(doctoe);

			if (result) {
				System.out.println("Ok");

			} else {
				System.out.println("no");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
