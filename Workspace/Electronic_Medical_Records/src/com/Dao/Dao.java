package com.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.Module.DoctorAppoimentPojo;
import com.Module.DoctorRegisterPojo;
import com.Module.FingerVerificationPojo;
import com.Module.LabReportForm;
import com.Module.MailSendPojo;
import com.Module.PasenteRegisterPojo;
import com.Module.PatientAppointmentRequestpojo;
import com.Module.PatientReportFormPojo;
import com.Service.MethodInterface;

public class Dao implements MethodInterface {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost/hospital", "root", "root");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

	public boolean savaPatientRegister(PasenteRegisterPojo pasenteRegisterPojo) {

		boolean status = false;
		try {
			Connection con = Dao.getConnection();
			List<PasenteRegisterPojo> patient = getPatientDetails();

			String dbEmail = "";

			for (PasenteRegisterPojo pasenteRegisterPojo1 : patient) {
				dbEmail = pasenteRegisterPojo1.getEmail();
				System.out.println(dbEmail);
			}
			if (pasenteRegisterPojo.getEmail().equals(dbEmail)) {

				status = false;

			} else {

				String query = "insert into patient(name,fathername,phone,email,password,dob,gender,age,marital,category,address,state,country,patient_id,photo)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

				PreparedStatement pr = con.prepareStatement(query);
				pr.setString(1, pasenteRegisterPojo.getName());
				pr.setString(2, pasenteRegisterPojo.getFathername());
				pr.setString(3, pasenteRegisterPojo.getPhone());
				pr.setString(4, pasenteRegisterPojo.getEmail());
				pr.setString(5, pasenteRegisterPojo.getPassword());
				pr.setString(6, pasenteRegisterPojo.getDataofbirth());
				pr.setString(7, pasenteRegisterPojo.getGender());
				pr.setString(8, pasenteRegisterPojo.getAge());
				pr.setString(9, pasenteRegisterPojo.getMarital());
				pr.setString(10, pasenteRegisterPojo.getCategory());
				pr.setString(11, pasenteRegisterPojo.getAddress());
				pr.setString(12, pasenteRegisterPojo.getState());
				pr.setString(13, pasenteRegisterPojo.getContury());
				pr.setString(14, pasenteRegisterPojo.getPatientID());
				pr.setString(15, pasenteRegisterPojo.getImagepath());

				int i = pr.executeUpdate();
				if (i >= 0) {
					status = true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;

	}

	public List<PasenteRegisterPojo> getPatientDetails() {

		List<PasenteRegisterPojo> list = new ArrayList<PasenteRegisterPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from patient";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PasenteRegisterPojo pas = new PasenteRegisterPojo(rs
						.getString(1), rs.getString(2), rs.getString(3), rs
						.getString(4), rs.getString(5), rs.getString(6), rs
						.getString(7), rs.getString(8), rs.getString(9), rs
						.getString(10), rs.getString(11), rs.getString(12), rs
						.getString(13), rs.getString(14), rs.getString(15));

				list.add(pas);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean saveDoctorRegister(DoctorRegisterPojo doctorRegisterPojo) {

		boolean status = false;
		try {
			Connection con = Dao.getConnection();
			List<DoctorRegisterPojo> doctor = getDoctorDetails();

			String dbEmail = "";

			for (DoctorRegisterPojo doctorregisterPojo : doctor) {
				dbEmail = doctorregisterPojo.getEmail();
				System.out.println(dbEmail);
			}
			if (doctorRegisterPojo.getEmail().equals(dbEmail)) {

				status = false;

			} else {

				String query = "insert into doctor(name,fathername,Gender,age,phone,email,exp,dob,category,pass,Doc_id,imagePath) values(?,?,?,?,?,?,?,?,?,?,?,?)";

				PreparedStatement pr = con.prepareStatement(query);
				pr.setString(1, doctorRegisterPojo.getName());
				pr.setString(2, doctorRegisterPojo.getFathername());
				pr.setString(3, doctorRegisterPojo.getGender());
				pr.setString(4, doctorRegisterPojo.getAge());
				pr.setString(5, doctorRegisterPojo.getPhone());
				pr.setString(6, doctorRegisterPojo.getEmail());
				pr.setString(7, doctorRegisterPojo.getExprince());
				pr.setString(8, doctorRegisterPojo.getDateofbirth());
				pr.setString(9, doctorRegisterPojo.getCategory());
				pr.setString(10, doctorRegisterPojo.getPassword());
				pr.setString(11, doctorRegisterPojo.getDoctorid());
				pr.setString(12, doctorRegisterPojo.getImagepath());

				int i = pr.executeUpdate();
				if (i >= 0) {
					status = true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public List<DoctorRegisterPojo> getDoctorDetails() {
		List<DoctorRegisterPojo> list = new ArrayList<DoctorRegisterPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from doctor";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DoctorRegisterPojo doctor = new DoctorRegisterPojo(rs
						.getString(1), rs.getString(2), rs.getString(3), rs
						.getString(4), rs.getString(5), rs.getString(6), rs
						.getString(7), rs.getString(8), rs.getString(9), rs
						.getString(10), rs.getString(11), rs.getString(12));

				list.add(doctor);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	public String DoctorLogin(String email, String pass) {
		String result = "no";
		try {
			Connection con = Dao.getConnection();
			String query = "Select * from doctor where email=? and pass=?";
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, email);
			pr.setString(2, pass);
			ResultSet rd = pr.executeQuery();
			if (rd.next()) {
				result = rd.getString("category") + "@"
						+ rd.getString("Doc_id") + "@" + rd.getString("name")
						+ "@" + rd.getString("imagePath");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	public String PatientLogin(String email, String pass) {
		String result = "no";
		try {
			Connection con = Dao.getConnection();
			String query = "Select * from patient where email=? and password=?";
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, email);
			pr.setString(2, pass);
			ResultSet rd = pr.executeQuery();
			if (rd.next()) {
				result = rd.getString("category") + "@"
						+ rd.getString("patient_id");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	// ----------------Patient Details get Category---------------//
	public List<PasenteRegisterPojo> patientCatgoeryDateils(String category) {
		List<PasenteRegisterPojo> list = new ArrayList<PasenteRegisterPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from patient where category=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PasenteRegisterPojo pas = new PasenteRegisterPojo(rs
						.getString(1), rs.getString(2), rs.getString(3), rs
						.getString(4), rs.getString(5), rs.getString(6), rs
						.getString(7), rs.getString(8), rs.getString(9), rs
						.getString(10), rs.getString(11), rs.getString(12), rs
						.getString(13), rs.getString(14), rs.getString(15));

				list.add(pas);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	// /-------------------- Doctor Appointment Insert-------------///
	public boolean DoctorAppoiment(
			PatientAppointmentRequestpojo patientAppointmentRequestpojo) {
		boolean status = false;
		try {
			Connection con = Dao.getConnection();
			String query = "insert into doctorap(patientid,doctorid,appdate,apptime,tocken,status)values(?,?,?,?,?,?)";

			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, patientAppointmentRequestpojo.getPatientid());
			pr.setString(2, patientAppointmentRequestpojo.getDoctorid());
			pr.setString(3, patientAppointmentRequestpojo.getAppointmentDate());
			// pr.setString(4,
			// patientAppointmentRequestpojo.getAppionmentTime());
			// pr.setString(5, patientAppointmentRequestpojo.getTockan());
			// pr.setString(6, patientAppointmentRequestpojo.getStatus());

			int i = pr.executeUpdate();
			if (i >= 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;

	}

	// /---------------------Doctor Appointment Get
	// Details-------------------///
	public List<DoctorAppoimentPojo> getDoctotAppoinmet() {
		List<DoctorAppoimentPojo> list = new ArrayList<DoctorAppoimentPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from doctorap";
			PreparedStatement ps = con.prepareStatement(query);
			// ps.setString(1, category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DoctorAppoimentPojo pas = new DoctorAppoimentPojo(rs
						.getString(1), rs.getString(2), rs.getString(3), rs
						.getString(4), rs.getString(5), rs.getString(6));

				list.add(pas);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}

	// ----------------Doctor details get category--------------------//

	public List<DoctorRegisterPojo> doctorCatgoeryDateils(String category) {
		List<DoctorRegisterPojo> list = new ArrayList<DoctorRegisterPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from doctor where category=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				DoctorRegisterPojo doctor = new DoctorRegisterPojo(rs
						.getString(1), rs.getString(2), rs.getString(3), rs
						.getString(4), rs.getString(5), rs.getString(6), rs
						.getString(7), rs.getString(8), rs.getString(9), rs
						.getString(10), rs.getString(11), rs.getString(12));

				list.add(doctor);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	// ----------------------PatientAppoinment---------------insert------///
	public boolean savePatientAppoinment(
			PatientAppointmentRequestpojo patientAppointmentRequestpojo) {

		boolean status = false;
		try {
			Connection con = Dao.getConnection();
			String query = "insert into patientappoinment(patientid,doctorid,category,AppointmentDate,status,tocken)values(?,?,?,?,?,?)";

			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, patientAppointmentRequestpojo.getPatientid());
			pr.setString(2, patientAppointmentRequestpojo.getDoctorid());
			pr.setString(3, patientAppointmentRequestpojo.getCategory());
			pr.setString(4, patientAppointmentRequestpojo.getAppointmentDate());
			pr.setString(5, patientAppointmentRequestpojo.getStatus());
			pr.setString(6, patientAppointmentRequestpojo.getTocken());
			int i = pr.executeUpdate();
			if (i >= 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public boolean DoctorAppoiment(DoctorAppoimentPojo doctorAppoimentPojo) {
		// TODO Auto-generated method stub
		return false;
	}

	// -------Patient appointment Details With category and patented

	public List<PatientAppointmentRequestpojo> patientAppimrntDetails(
			String patientid, String category) {
		List<PatientAppointmentRequestpojo> list = new ArrayList<PatientAppointmentRequestpojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "SELECT * FROM patientappoinment WHERE patientid=? and category=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, patientid);
			ps.setString(2, category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PatientAppointmentRequestpojo obj = new PatientAppointmentRequestpojo();
				obj.setAppointmentDate(rs.getString("AppointmentDate"));
				obj.setCategory(rs.getString("category"));
				obj.setDoctorid(rs.getString("doctorid"));
				obj.setPatientid(rs.getString("patientid"));
				obj.setStatus(rs.getString("status"));
				obj.setTocken(rs.getString("tocken"));
				obj.setSno(rs.getString("Id"));

				list.add(obj);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<PatientAppointmentRequestpojo> patientAppimrntDetails1(
			String Doctorid, String category) {
		List<PatientAppointmentRequestpojo> list = new ArrayList<PatientAppointmentRequestpojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "SELECT * FROM patientappoinment WHERE doctorid=? and category=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, Doctorid);
			ps.setString(2, category);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PatientAppointmentRequestpojo obj = new PatientAppointmentRequestpojo();
				obj.setAppointmentDate(rs.getString("AppointmentDate"));
				obj.setCategory(rs.getString("category"));
				obj.setDoctorid(rs.getString("doctorid"));
				obj.setPatientid(rs.getString("patientid"));
				obj.setStatus(rs.getString("status"));
				obj.setTocken(rs.getString("tocken"));
				obj.setSno(rs.getString("Id"));

				list.add(obj);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public String DoctorAccept(String id, String status) {
		String result = "no";
		try {
			Connection con = Dao.getConnection();
			String query2 = "update patientappoinment set status=?,tocken=? where Id=?";
			PreparedStatement ps2 = con.prepareStatement(query2);
			ps2.setString(1, "Approved");
			ps2.setString(2, status);
			ps2.setString(3, id);
			int k = ps2.executeUpdate();
			if (k > 0) {
				result = "yes";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String DoctorCancel(String id, String status) {
		String result = "no";
		try {
			Connection con = Dao.getConnection();
			String query2 = "update patientappoinment set status=?,tocken=? where Id=?";
			PreparedStatement ps2 = con.prepareStatement(query2);
			ps2.setString(1, "Cancel");
			ps2.setString(2, status);
			ps2.setString(3, id);
			int k = ps2.executeUpdate();
			if (k > 0) {
				result = "yes";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String deleteColoumDoctor(String email) {

		String result = "no";
		try {
			Connection con = Dao.getConnection();
			String query2 = "delete from doctor where email=?";
			PreparedStatement ps2 = con.prepareStatement(query2);
			ps2.setString(1, email);
			int k = ps2.executeUpdate();
			if (k > 0) {
				result = "yes";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public String PatientColoumDoctor(String email) {
		String result = "no";
		try {
			Connection con = Dao.getConnection();
			String query2 = "delete from patient where email=?";
			PreparedStatement ps2 = con.prepareStatement(query2);
			ps2.setString(1, email);
			int k = ps2.executeUpdate();
			if (k > 0) {
				result = "yes";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public List<LabReportForm> getLabReportForm() {

		List<LabReportForm> list = new ArrayList<LabReportForm>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from testdetails";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				LabReportForm labreport = new LabReportForm(rs.getString(1), rs
						.getString(2), rs.getString(3), rs.getString(4), rs
						.getString(5), rs.getString(6), rs.getString(7), rs
						.getString(8), rs.getString(9), rs.getString(10), rs
						.getString(11), rs.getString(12));

				list.add(labreport);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<LabReportForm> getlabreport(String pid) {
		List<LabReportForm> list = new ArrayList<LabReportForm>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from testdetails where pid=?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, pid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				LabReportForm labreport = new LabReportForm(rs.getString(1), rs
						.getString(2), rs.getString(3), rs.getString(4), rs
						.getString(5), rs.getString(6), rs.getString(7), rs
						.getString(8), rs.getString(9), rs.getString(10), rs
						.getString(11), rs.getString(12));

				list.add(labreport);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<FingerVerificationPojo> getFingerDetails() {
		List<FingerVerificationPojo> list = new ArrayList<FingerVerificationPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from fingerverification";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				FingerVerificationPojo fv = new FingerVerificationPojo(rs
						.getString("status"), rs.getString("idnum"));

				list.add(fv);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<MailSendPojo> getmailDetails() {

		List<MailSendPojo> list = new ArrayList<MailSendPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from medicallab";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				MailSendPojo MailSend = new MailSendPojo(rs.getString("mail"),
						rs.getString("imagekey"), rs.getString("pid"), rs
								.getString("token"), rs.getString("images"));
				list.add(MailSend);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public boolean savePrescription(PatientReportFormPojo patientReportFormPojo) {

		boolean status = false;
		try {
			Connection con = Dao.getConnection();
			String query = "insert into prescription(patientid,doctorid,a_date,token_id)values(?,?,?,?)";
			PreparedStatement pr = con.prepareStatement(query);
			pr.setString(1, patientReportFormPojo.getPatientId());
			pr.setString(2, patientReportFormPojo.getDoctorid());
			pr.setString(3, patientReportFormPojo.getAppaimentDate());
			pr.setString(4, patientReportFormPojo.getTokenid());

			int i = pr.executeUpdate();
			if (i >= 0) {
				status = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return status;
	}

	public List<PatientReportFormPojo> getPrescriptionDetails() {

		List<PatientReportFormPojo> list = new ArrayList<PatientReportFormPojo>();
		try {
			Connection con = Dao.getConnection();
			String query = "select * from prescription";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				PatientReportFormPojo psp = new PatientReportFormPojo();
				psp.setDoctorid(rs.getString("doctorid"));
				psp.setPatientId(rs.getString("patientid"));
				psp.setTokenid(rs.getString("token_id"));
				psp.setAppaimentDate(rs.getString("a_date"));
				list.add(psp);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
