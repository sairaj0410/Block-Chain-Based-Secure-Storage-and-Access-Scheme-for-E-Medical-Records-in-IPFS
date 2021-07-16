package com.Controler;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.http.servlet.HttpsServlet;

public class Download extends HttpsServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession httpSession = request.getSession(false);
		String email = (String) httpSession.getAttribute("email");
		System.out.println("------------------------->" + email);
		String filename = (String) httpSession.getAttribute("filename");

		String file_enc = "webapps\\EfficientLanguageSearch\\UploadedFiles\\src";
		String file_dec = "webapps\\EfficientLanguageSearch\\UploadedFiles\\DecryptedFiles";

		response.setContentType("APPLICATION/OCTET-STREAM");

		response.setHeader("Content-Disposition", "attachment; filename=\""
				+ filename + "\"");

		FileInputStream fileInputStream = new FileInputStream(file_enc
				+ File.separator + filename);

		int i;
		while ((i = fileInputStream.read()) != -1) {
			out.write(i);
		}
		fileInputStream.close();
		out.close();
	}

}
