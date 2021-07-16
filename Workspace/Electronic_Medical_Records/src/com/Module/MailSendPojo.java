package com.Module;

import java.io.Serializable;

public class MailSendPojo implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String email;
	private String key;
	private String pid;
	private String token;
	private String image;

	/**
	 * @param email
	 * @param key
	 * @param pid
	 * @param token
	 * @param image
	 */
	public MailSendPojo(String email, String key, String pid, String token,
			String image) {
		super();
		this.email = email;
		this.key = key;
		this.pid = pid;
		this.token = token;
		this.image = image;
	}

	@Override
	public String toString() {
		return "MailSendPojo [email=" + email + ", image=" + image + ", key="
				+ key + ", pid=" + pid + ", token=" + token + "]";
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}
