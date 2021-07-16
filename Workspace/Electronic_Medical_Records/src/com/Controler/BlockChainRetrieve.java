package com.Controler;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.BlockChain.BlockChain;
import com.BlockChain.BlockChainUrl;
import com.BlockChain.ObjectConversion;
import com.Module.PatientReportFormPojo;
import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class BlockChainRetrieve extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		try {
			String proid = request.getParameter("token");
			String chainre = BlockChain
					.retriveChain(BlockChainUrl.DOCTOR_CHAIN);
			System.out.println(chainre);
			JSONObject jsonObject = (JSONObject) new JSONParser()
					.parse(chainre);
			JSONArray array = (JSONArray) jsonObject.get("chain");
			JSONObject json = null;
			JSONArray array2 = null;
			String path = null;
			for (int i = 1; i < array.size(); i++) {
				json = (JSONObject) array.get(i);
				array2 = (JSONArray) json.get("transactions");
				json = (JSONObject) array2.get(0);
				String pro_id = (String) json.get("productid");
				if (pro_id.equals(proid)) {
					path = (String) json.get("filepath");

					byte[] object = (byte[]) Base64.decode(path);
					Object findbyid = (Object) new ObjectConversion()
							.byteToObj(object);
					if (findbyid instanceof PatientReportFormPojo) {
						PatientReportFormPojo sample = (PatientReportFormPojo) findbyid;
						// request.setAttribute("id", proid);
						request.setAttribute("contract", sample);
						// request.setAttribute("officerid", officerid);
						// request.setAttribute("pid", proid);

						RequestDispatcher dispatcher = request
								.getRequestDispatcher("BlockChianRetrive.jsp");
						dispatcher.forward(request, response);

					} else {
						System.out.println();
					}

				} else {
					System.out.println("========================");
				}
			}

			System.out.println("************" + proid);

		} catch (Exception e) {
			System.out.println("=============ok=================");

		}
	}

}
