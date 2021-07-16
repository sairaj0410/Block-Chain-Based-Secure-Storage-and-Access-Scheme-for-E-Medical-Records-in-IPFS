package com.Module;

public class PasenteRegisterPojo {

	private String name;
	private String fathername;
	private String phone;
	private String email;
	private String password;
	private String dataofbirth;
	private String gender;
	private String age;
	private String marital;
	private String category;
	private String address, state, contury, patientID, Imagepath;

	/**
	 * @param name
	 * @param fathername
	 * @param phone
	 * @param email
	 * @param password
	 * @param dataofbirth
	 * @param gender
	 * @param age
	 * @param marital
	 * @param category
	 * @param address
	 * @param state
	 * @param contury
	 * @param patientID
	 * @param imagepath
	 */
	public PasenteRegisterPojo(String name, String fathername, String phone,
			String email, String password, String dataofbirth, String gender,
			String age, String marital, String category, String address,
			String state, String contury, String patientID, String imagepath) {
		super();
		this.name = name;
		this.fathername = fathername;
		this.phone = phone;
		this.email = email;
		this.password = password;
		this.dataofbirth = dataofbirth;
		this.gender = gender;
		this.age = age;
		this.marital = marital;
		this.category = category;
		this.address = address;
		this.state = state;
		this.contury = contury;
		this.patientID = patientID;
		Imagepath = imagepath;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFathername() {
		return fathername;
	}

	public void setFathername(String fathername) {
		this.fathername = fathername;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDataofbirth() {
		return dataofbirth;
	}

	public void setDataofbirth(String dataofbirth) {
		this.dataofbirth = dataofbirth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMarital() {
		return marital;
	}

	public void setMarital(String marital) {
		this.marital = marital;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getContury() {
		return contury;
	}

	public void setContury(String contury) {
		this.contury = contury;
	}

	public String getPatientID() {
		return patientID;
	}

	public void setPatientID(String patientID) {
		this.patientID = patientID;
	}

	public String getImagepath() {
		return Imagepath;
	}

	public void setImagepath(String imagepath) {
		Imagepath = imagepath;
	}

	@Override
	public String toString() {
		return "PasenteRegisterPojo [Imagepath=" + Imagepath + ", address="
				+ address + ", age=" + age + ", category=" + category
				+ ", contury=" + contury + ", dataofbirth=" + dataofbirth
				+ ", email=" + email + ", fathername=" + fathername
				+ ", gender=" + gender + ", marital=" + marital + ", name="
				+ name + ", password=" + password + ", patientID=" + patientID
				+ ", phone=" + phone + ", state=" + state + "]";
	}

}
