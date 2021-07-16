package com.Service;

import java.util.List;

import com.Module.DoctorAppoimentPojo;
import com.Module.DoctorRegisterPojo;
import com.Module.FingerVerificationPojo;
import com.Module.LabReportForm;
import com.Module.MailSendPojo;
import com.Module.PasenteRegisterPojo;
import com.Module.PatientAppointmentRequestpojo;
import com.Module.PatientReportFormPojo;

public interface MethodInterface {

	boolean saveDoctorRegister(DoctorRegisterPojo doctorRegisterPojo);

	boolean savaPatientRegister(PasenteRegisterPojo pasenteRegisterPojo);

	public List<PasenteRegisterPojo> getPatientDetails();

	public List<DoctorRegisterPojo> getDoctorDetails();

	public String PatientLogin(String email, String pass);

	public String DoctorLogin(String email, String pass);

	public List<PasenteRegisterPojo> patientCatgoeryDateils(String category);

	public boolean DoctorAppoiment(DoctorAppoimentPojo doctorAppoimentPojo);

	public List<DoctorAppoimentPojo> getDoctotAppoinmet();

	public List<DoctorRegisterPojo> doctorCatgoeryDateils(String category);

	public List<PatientAppointmentRequestpojo> patientAppimrntDetails(
			String patientid, String category);

	public List<PatientAppointmentRequestpojo> patientAppimrntDetails1(
			String Doctorid, String category);

	public String DoctorAccept(String id, String status);

	public String DoctorCancel(String id, String status);

	public String deleteColoumDoctor(String email);

	public String PatientColoumDoctor(String email);

	public List<LabReportForm> getLabReportForm();

	public List<LabReportForm> getlabreport(String pid);

	public List<FingerVerificationPojo> getFingerDetails();

	public List<MailSendPojo> getmailDetails();

	public boolean savePrescription(PatientReportFormPojo patientReportFormPojo);

	public List<PatientReportFormPojo> getPrescriptionDetails();
}
