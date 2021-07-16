package com.Module;

public class PatientAppointmentRequestpojo {
	private String sno;
	private String patientid;
	private String doctorid;
	private String category;
	private String appointmentDate;
	private String status;
	private String tocken;

	public String getPatientid() {
		return patientid;
	}

	public void setPatientid(String patientid) {
		this.patientid = patientid;
	}

	public String getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAppointmentDate() {
		return appointmentDate;
	}

	public void setAppointmentDate(String appointmentDate) {
		this.appointmentDate = appointmentDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "PatientAppointmentRequestpojo [appointmentDate="
				+ appointmentDate + ", category=" + category + ", doctorid="
				+ doctorid + ", patientid=" + patientid + ", status=" + status
				+ "]";
	}

	/**
	 * @param tocken
	 *            the tocken to set
	 */
	public void setTocken(String tocken) {
		this.tocken = tocken;
	}

	/**
	 * @return the tocken
	 */
	public String getTocken() {
		return tocken;
	}

	/**
	 * @param sno the sno to set
	 */
	public void setSno(String sno) {
		this.sno = sno;
	}

	/**
	 * @return the sno
	 */
	public String getSno() {
		return sno;
	}

}
