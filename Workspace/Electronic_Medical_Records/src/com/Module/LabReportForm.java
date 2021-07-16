package com.Module;

public class LabReportForm {
	private String date, did, pid, token, category, blood, bp, weight, sugar,
			cholesterol, image, sno;

	/**
	 * @param date
	 * @param did
	 * @param pid
	 * @param token
	 * @param category
	 * @param blood
	 * @param bp
	 * @param weight
	 * @param sugar
	 * @param cholesterol
	 * @param image
	 */
	public LabReportForm(String sno, String date, String did, String pid,
			String token, String category, String blood, String bp,
			String weight, String sugar, String cholesterol, String image) {
		super();
		this.date = date;
		this.did = did;
		this.pid = pid;
		this.token = token;
		this.category = category;
		this.blood = blood;
		this.bp = bp;
		this.weight = weight;
		this.sugar = sugar;
		this.cholesterol = cholesterol;
		this.image = image;
	}

	@Override
	public String toString() {
		return "TestDetailsPojo [blood=" + blood + ", bp=" + bp + ", category="
				+ category + ", cholesterol=" + cholesterol + ", date=" + date
				+ ", did=" + did + ", image=" + image + ", pid=" + pid
				+ ", sugar=" + sugar + ", token=" + token + ", weight="
				+ weight + "]";
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getDid() {
		return did;
	}

	public void setDid(String did) {
		this.did = did;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}

	public String getBp() {
		return bp;
	}

	public void setBp(String bp) {
		this.bp = bp;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getSugar() {
		return sugar;
	}

	public void setSugar(String sugar) {
		this.sugar = sugar;
	}

	public String getCholesterol() {
		return cholesterol;
	}

	public void setCholesterol(String cholesterol) {
		this.cholesterol = cholesterol;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	/**
	 * @param sno
	 *            the sno to set
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
