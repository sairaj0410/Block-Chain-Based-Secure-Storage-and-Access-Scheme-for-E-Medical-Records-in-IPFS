package com.Module;

public class DoctorAppoimentPojo {
	private String patientid;
	private String doctorid;
	private String appionmentDate;
	private String appionmentTime;
	private String tockan;
	private String status;

	/**
	 * @param patientid
	 * @param doctorid
	 * @param appionmentDate
	 * @param appionmentTime
	 * @param tockan
	 */
	public DoctorAppoimentPojo(String patientid, String doctorid,
			String appionmentDate, String appionmentTime, String tockan,String status) {
		super();
		this.patientid = patientid;
		this.doctorid = doctorid;
		this.appionmentDate = appionmentDate;
		this.appionmentTime = appionmentTime;
		this.tockan = tockan;
		this.status=status;
		
		
	}

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

	public String getAppionmentDate() {
		return appionmentDate;
	}

	public void setAppionmentDate(String appionmentDate) {
		this.appionmentDate = appionmentDate;
	}

	public String getAppionmentTime() {
		return appionmentTime;
	}

	public void setAppionmentTime(String appionmentTime) {
		this.appionmentTime = appionmentTime;
	}

	public String getTockan() {
		return tockan;
	}

	public void setTockan(String tockan) {
		this.tockan = tockan;
	}

	@Override
	public String toString() {
		return "DoctorAppoimentPojo [appionmentDate=" + appionmentDate
				+ ", appionmentTime=" + appionmentTime + ", doctorid="
				+ doctorid + ", patientid=" + patientid + ", tockan=" + tockan
				+ "]";
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

}
