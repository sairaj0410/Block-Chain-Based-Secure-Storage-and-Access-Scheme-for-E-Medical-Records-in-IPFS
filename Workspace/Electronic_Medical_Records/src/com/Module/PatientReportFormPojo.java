package com.Module;

import java.io.Serializable;

public class PatientReportFormPojo implements Serializable {

	private static final long serialVersionUID = 1L;
	private String Patientname;
	private String fathername;
	private String email;
	private String phone;
	private String dob;
	private String age;
	private String MaritalStatus;
	private String genader;
	private String Disease;
	private String Height;
	private String weight;
	private String DoctorName;
	private String PatientId;
	private String BloodGroup;
	private String DoctorDescription, appaimentDate, docimage, doctorid;
	private String tokenid;

	public PatientReportFormPojo() {

	}

	public PatientReportFormPojo(String patientname, String fathername,
			String email, String phone, String dob, String age,
			String maritalStatus, String genader, String disease,
			String height, String weight, String doctorName, String patientId,
			String bloodGroup, String doctorDescription, String appaimentDate,
			String docimage, String doctorid, String tokenid) {
		super();
		Patientname = patientname;
		this.fathername = fathername;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.age = age;
		MaritalStatus = maritalStatus;
		this.genader = genader;
		Disease = disease;
		Height = height;
		this.weight = weight;
		DoctorName = doctorName;
		PatientId = patientId;
		BloodGroup = bloodGroup;
		DoctorDescription = doctorDescription;
		this.appaimentDate = appaimentDate;
		this.docimage = docimage;
		this.doctorid = doctorid;
		this.tokenid = tokenid;
	}

	public String getPatientname() {
		return Patientname;
	}

	public void setPatientname(String patientname) {
		Patientname = patientname;
	}

	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMaritalStatus() {
		return MaritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		MaritalStatus = maritalStatus;
	}

	public String getGenader() {
		return genader;
	}

	public void setGenader(String genader) {
		this.genader = genader;
	}

	public String getDisease() {
		return Disease;
	}

	public void setDisease(String disease) {
		Disease = disease;
	}

	public String getHeight() {
		return Height;
	}

	public void setHeight(String height) {
		Height = height;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getDoctorName() {
		return DoctorName;
	}

	public void setDoctorName(String doctorName) {
		DoctorName = doctorName;
	}

	public String getPatientId() {
		return PatientId;
	}

	public void setPatientId(String patientId) {
		PatientId = patientId;
	}

	public String getBloodGroup() {
		return BloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		BloodGroup = bloodGroup;
	}

	public String getDoctorDescription() {
		return DoctorDescription;
	}

	public void setDoctorDescription(String doctorDescription) {
		DoctorDescription = doctorDescription;
	}

	public String getAppaimentDate() {
		return appaimentDate;
	}

	public void setAppaimentDate(String appaimentDate) {
		this.appaimentDate = appaimentDate;
	}

	public String getDocimage() {
		return docimage;
	}

	public void setDocimage(String docimage) {
		this.docimage = docimage;
	}

	public String getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "PatientReportFormPojo [BloodGroup=" + BloodGroup + ", Disease="
				+ Disease + ", DoctorDescription=" + DoctorDescription
				+ ", DoctorName=" + DoctorName + ", Height=" + Height
				+ ", MaritalStatus=" + MaritalStatus + ", PatientId="
				+ PatientId + ", Patientname=" + Patientname + ", age=" + age
				+ ", appaimentDate=" + appaimentDate + ", dob=" + dob
				+ ", docimage=" + docimage + ", doctorid=" + doctorid
				+ ", email=" + email + ", fathername=" + fathername
				+ ", genader=" + genader + ", phone=" + phone + ", weight="
				+ weight + "]";
	}

	public void setTokenid(String tokenid) {
		this.tokenid = tokenid;
	}

	public String getTokenid() {
		return tokenid;
	}

}
