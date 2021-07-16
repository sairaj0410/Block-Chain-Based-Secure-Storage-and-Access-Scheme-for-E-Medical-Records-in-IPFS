package com.Controler;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;

import com.Module.PatientReportFormPojo;

public class AcceptClass {

	public static void main(String args[]) {
		PatientReportFormPojo o = null;
		try {
			FileInputStream fis = new FileInputStream("F:\\hospital\\T8100.ser");
			ObjectInputStream ois = new ObjectInputStream(fis);
			o = (PatientReportFormPojo) ois.readObject();
			ois.close();
			fis.close();
		} catch (IOException ioe) {
			ioe.printStackTrace();
			return;
		} catch (ClassNotFoundException cnfe) {
			System.out.println("Student Class is not found.");
			cnfe.printStackTrace();
			return;
		}
		
		System.out.println("Name :" + o.getPatientname());
		System.out.println("Doctorname :" + o.getDoctorName());
		System.out.println("pID :" + o.getPatientId());

	}
}