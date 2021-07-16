package com.Module;

public class DoctorRegisterPojo {

	private String name, fathername, gender, age, phone, email, exprince,
			dateofbirth, category, password;
	private String doctorid, imagepath;

	/**
	 * @param name
	 * @param fathername
	 * @param gender
	 * @param age
	 * @param phone
	 * @param email
	 * @param exprince
	 * @param dateofbirth
	 * @param category
	 * @param password
	 * @param doctorid
	 */
	public DoctorRegisterPojo(String name, String fathername, String gender,
			String age, String phone, String email, String exprince,
			String dateofbirth, String category, String password,
			String doctorid, String imagepath) {
		super();
		this.name = name;
		this.fathername = fathername;
		this.gender = gender;
		this.age = age;
		this.phone = phone;
		this.email = email;
		this.exprince = exprince;
		this.dateofbirth = dateofbirth;
		this.category = category;
		this.password = password;
		this.doctorid = doctorid;
		this.imagepath = imagepath;
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

	public String getExprince() {
		return exprince;
	}

	public void setExprince(String exprince) {
		this.exprince = exprince;
	}

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getDoctorid() {
		return doctorid;
	}

	public void setDoctorid(String doctorid) {
		this.doctorid = doctorid;
	}

	@Override
	public String toString() {
		return "DoctorRegisterPojo [age=" + age + ", category=" + category
				+ ", dateofbirth=" + dateofbirth + ", doctorid=" + doctorid
				+ ", email=" + email + ", exprince=" + exprince
				+ ", fathername=" + fathername + ", gender=" + gender
				+ ", name=" + name + ", password=" + password + ", phone="
				+ phone + "]";
	}

	/**
	 * @param imagepath
	 *            the imagepath to set
	 */
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}

	/**
	 * @return the imagepath
	 */
	public String getImagepath() {
		return imagepath;
	}

}
