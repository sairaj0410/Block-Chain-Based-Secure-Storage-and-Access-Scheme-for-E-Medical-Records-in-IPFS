package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SearchToken extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String tk = request.getParameter("tk");
			String token = request.getParameter("Id");
			System.out.println(token + "--------Tocken--------" + tk);

			HttpSession session = request.getSession(false);

			String doctorname = (String) session.getAttribute("name");

			System.out.println("no");
			request.setAttribute("tk", tk);
			request.setAttribute("msg", token);
			request.setAttribute("doctorname", doctorname);
			RequestDispatcher requestDispatcher = request
					.getRequestDispatcher("Searchtoken.jsp");
			requestDispatcher.include(request, response);

		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

}
