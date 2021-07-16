package com.Controler;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Module.PatientReportFormPojo;

public class Token extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String msg = "";
		try {
			String name = request.getParameter("value");
			System.out.println("*************" + name);
			if (name.equalsIgnoreCase("-")) {
				System.out.println("*******Tocken Value Is Empty***********");
				msg = "*******Tocken Value Is Empty***********";
				out.print(msg);
			} else {

				PatientReportFormPojo o = null;
				try {
					FileInputStream fis = new FileInputStream("C:\\hospital\\"
							+ name + ".ser");
					ObjectInputStream ois = new ObjectInputStream(fis);
					o = (PatientReportFormPojo) ois.readObject();
					ois.close();
					fis.close();
				} catch (IOException ioe) {
					ioe.printStackTrace();
					return;
				} catch (ClassNotFoundException cnfe) {
					System.out.println(" Class is not found.");
					cnfe.printStackTrace();
					return;
				}

				System.out.println("Name :" + o.getPatientname());
				System.out.println("Doctorname :" + o.getDoctorName());
				System.out.println("pID :" + o.getPatientId());
				List<PatientReportFormPojo> Models = new ArrayList<PatientReportFormPojo>();
				Models.add(o);
				request.setAttribute("value", Models);

				request.setAttribute("msg", msg);
				RequestDispatcher requestDispatcher = request
						.getRequestDispatcher("ReportForm.jsp");
				requestDispatcher.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
