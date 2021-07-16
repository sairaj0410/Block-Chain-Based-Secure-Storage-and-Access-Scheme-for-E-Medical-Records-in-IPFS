package com.Controler;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.BlockChain.BlockChain;
import com.BlockChain.BlockChainUrl;
import com.BlockChain.ObjectConversion;
import com.Dao.Dao;
import com.Module.PatientReportFormPojo;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class PatientReport extends HttpServlet {

	private static final long serialVersionUID = 1L;
	Dao dao = new Dao();

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession(false);

		String image = (String) session.getAttribute("image");

		String Patientname = request.getParameter("name");
		String fathername = request.getParameter("fathername");
		String email = request.getParameter("email");
		String phone = request.getParameter("Phone");
		String dob = request.getParameter("dob");
		String age = request.getParameter("age");
		String MaritalStatus = request.getParameter("Marital");
		String genader = request.getParameter("Gender");
		String Disease = request.getParameter("Disease");
		String Height = request.getParameter("Height");
		String weight = request.getParameter("weight");
		String DoctorName = request.getParameter("doctorname");
		String PatientId = request.getParameter("patientid");
		String BloodGroup = request.getParameter("BloodGroup");
		String DoctorDescription = request.getParameter("doctordescription");
		String doctorid = (String) session.getAttribute("docid");

		System.out.println("------------>>>" + DoctorDescription);

		String tk = request.getParameter("tk");
		Date date = Calendar.getInstance().getTime();
		DateFormat dateFormat = new SimpleDateFormat("dd-mm-yyyy");
		String strDate = dateFormat.format(date);
		PatientReportFormPojo PFReport = new PatientReportFormPojo(Patientname,
				fathername, email, phone, dob, age, MaritalStatus, genader,
				Disease, Height, weight, DoctorName, PatientId, BloodGroup,
				DoctorDescription, strDate, image, doctorid, tk);
		try {
			FileOutputStream fos = new FileOutputStream("C:\\hospital\\" + tk
					+ ".ser");
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			oos.writeObject(PFReport);
			oos.close();
			fos.close();
			out.println("Serialzation Done!!");
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("productid", tk.toString());
			jsonObject.put("filename", PatientId.toString());
			System.out.println(Base64.encode(new ObjectConversion()
					.objToByte(PFReport)));
			jsonObject.put("filepath", Base64.encode(new ObjectConversion()
					.objToByte(PFReport)));
			jsonObject.put("sender", "12");
			jsonObject.put("recipient", "12");
			jsonObject.put("amount", "12");


			BlockChain.addTransaction(jsonObject.toJSONString(),
					BlockChainUrl.DOCTOR_TRANS);
			BlockChain.mineChain(BlockChainUrl.DOCTOR_MINE);
			boolean result = dao.savePrescription(PFReport);

			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("Searchtoken.jsp");
			requestDispatcher.include(request, response);
		} catch (IOException ioe) {
			System.out.println(ioe);
		}

	}

}
