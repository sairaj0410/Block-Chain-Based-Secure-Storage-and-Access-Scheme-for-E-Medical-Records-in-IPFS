package com.Controler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.Dao.Dao;
import com.Module.DoctorRegisterPojo;

public class DoctorRegister extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Dao dao = new Dao();
		Random rand = new Random();
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String filename = "", category = "", name = "", fathername = "", gender = "", age = "", dob = "", phone = "", email = "", experience = "", password = "";
		String address = "", state = "", country = "";
		String proImage = null;
		HttpSession session = request.getSession();
		HttpSession httpSession = request.getSession();
		String doctor_id = "Doc" + rand.nextInt(9999);

		email = (String) httpSession.getAttribute("email");
		System.out.println("---------" + email);
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		try {
			String filepath = "";
			List<FileItem> items = upload.parseRequest(request);
			for (FileItem locFileItem : items) {
				if (locFileItem.isFormField()) {
					System.out.println("---" + locFileItem.getFieldName());

					if (locFileItem.getFieldName().equals("name")) {
						name = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("fathername")) {
						fathername = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("phone")) {
						phone = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("email")) {
						email = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("password")) {
						password = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("dob")) {
						dob = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("gender")) {
						gender = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("age")) {
						age = locFileItem.getString();
					}

					if (locFileItem.getFieldName().equals("address")) {
						address = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("state")) {
						state = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("country")) {
						country = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("category")) {
						category = locFileItem.getString();
					}
					if (locFileItem.getFieldName().equals("experience")) {
						experience = locFileItem.getString();
					}

				} else {
					System.out.println("--------ELSE--------");
					System.out.println("filename : " + filename);
					System.out.println("name : " + name);
					System.out.println("fathername : " + fathername);
					System.out.println("phone : " + phone);
					System.out.println("email : " + email);
					System.out.println("password : " + password);
					System.out.println("dob : " + dob);
					System.out.println("Gender : " + gender);
					System.out.println("age : " + age);
					System.out.println("address : " + address);
					System.out.println("state : " + state);
					System.out.println("country : " + country);
					System.out.println("category : " + category);

					filepath = "webapps/Electronic_Medical_Records/photo/";
					String cantractpath = "webapps/Electronic_Medical_Records/sample";
					String path = filepath;

					File f = new File(path);
					File f1 = new File(cantractpath);
					if (!f.exists()) {
						f.mkdirs();

					}
					if (!f1.exists()) {
						f1.mkdirs();
					}
					String filename1 = locFileItem.getName();
					System.out.println("Filename is " + filename1);
					File tosave = new File(path, doctor_id + ".jpg");
					proImage = tosave.getPath();
					locFileItem.write(tosave);

					DoctorRegisterPojo drj = new DoctorRegisterPojo(name,
							fathername, gender, age, phone, email, experience,
							dob, category, password, doctor_id, proImage);

					boolean result = dao.saveDoctorRegister(drj);
					if (result) {
						request.setAttribute("msg1", "Register Sucess");
						RequestDispatcher rd = request
								.getRequestDispatcher("DoctorLogin.jsp");
						rd.include(request, response);

					} else {
						request
								.setAttribute("msg",
										"Invalid Email or Password");
						RequestDispatcher rd = request
								.getRequestDispatcher("index.jsp");
						rd.include(request, response);
					}

				}
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}