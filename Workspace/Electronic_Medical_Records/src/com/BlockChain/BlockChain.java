package com.BlockChain;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;

public class BlockChain {

	public static String addTransaction(String jsonInput, String urlLink) {
		try {
			URL url = new URL(urlLink);
			HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
			httpCon.setRequestProperty("Content-Type", "application/json");
			httpCon.setRequestMethod("POST");
			httpCon.setDoInput(true);
			httpCon.setDoOutput(true);
			// String json ="{'sender':'sender','recipient':'recipient','amount':567}";
			OutputStreamWriter out = new OutputStreamWriter(httpCon.getOutputStream());
			out.write(jsonInput);
			out.close();
			System.out.println(httpCon.getResponseCode());

			InputStreamReader ir = new InputStreamReader(httpCon.getInputStream());
			char b[] = new char[1024];
			int l = 0;
			while (ir.ready()) {
				l = ir.read(b);
				System.out.println(new String(b, 0, l));
			}
		} catch (Exception e) {

			return "no";
		}
		return "ok";
	}

	public static void mineChain(String urlLink) {

		try {
			URL url = new URL(urlLink);
			HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
			httpCon.setDoOutput(false);
			httpCon.setRequestMethod("GET");
			System.out.println(httpCon.getResponseCode());
			System.out.println(httpCon.getResponseMessage());
			InputStreamReader ir = new InputStreamReader(httpCon.getInputStream());
			char b[] = new char[1024];
			int l = 0;
			while (ir.ready()) {
				l = ir.read(b);
				System.out.println(new String(b, 0, l));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static String retriveChain(String urlLink) {
		String data = null;
		try {

			URL url = new URL(urlLink);
			HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
			httpCon.setDoOutput(false);
			httpCon.setRequestMethod("GET");
			System.out.println(httpCon.getResponseCode());
			System.out.println(httpCon.getResponseMessage());
			BufferedReader in = new BufferedReader(new InputStreamReader(httpCon.getInputStream()));

			char b[] = new char[1024];
			int l = 0;
			String inputLine = null;
			StringBuffer response = new StringBuffer();

			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			data = response.toString();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return data;

	}

}
