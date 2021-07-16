package com.Module;

public class FingerVerificationPojo {
	private String status, pid;

	/**
	 * @param status
	 * @param pid
	 */

	public FingerVerificationPojo(String status, String pid) {
		super();
		this.status = status;
		this.pid = pid;
	}

	@Override
	public String toString() {
		return "FingerVerificationPojo [pid=" + pid + ", status=" + status
				+ "]";
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

}
