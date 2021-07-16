package com.Controler;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.Socket;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import sun.misc.BASE64Decoder;

public class FingerVerification extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String b64img = request.getParameter("b64img");
			System.out.println(b64img + "base 64---------------->>");
			String value = b64img;
			BASE64Decoder decoder = new BASE64Decoder();
			byte[] imgBytes = decoder.decodeBuffer(value);
			BufferedImage bufImg = ImageIO.read(new ByteArrayInputStream(
					imgBytes));
			HttpSession session2 = request.getSession(false);
			String pid = (String) session2.getAttribute("patientid");

			File path1 = new File(
					"webapps/BiometricInspiredMedicalImages/FingerPrint/fingertest.png");
			File path = new File(
					"webapps/BiometricInspiredMedicalImages/FingerPrint/" + pid
							+ ".png");
			ImageIO.write(bufImg, "png", path1);

			Socket s1 = new Socket(InetAddress.getLocalHost().getHostAddress()
					.toString(), 8078);
			ObjectOutputStream obj1 = new ObjectOutputStream(s1
					.getOutputStream());
			System.out.println("socket running");

			obj1.writeObject("finger");
			obj1.writeObject("verify");
			obj1.writeObject(path);
			obj1.writeObject(path1.toString());

			obj1.close();
			s1.close();

			RequestDispatcher rd = request
					.getRequestDispatcher("Fingerverification.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			// TODO: handle exception
		}
		out.close();
	}
}
