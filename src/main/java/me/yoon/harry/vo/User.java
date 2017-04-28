package me.yoon.harry.vo;

import java.util.Date;

public class User {
	private int no;
	private String email;
	private String pwd;
	private String lastName;
	private String firstName;
	private String company;
	private Date regdate;
	private String isDeactive;
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getIsDeactive() {
		return isDeactive;
	}
	public void setIsDeactive(String isDeactive) {
		this.isDeactive = isDeactive;
	}
	@Override
	public String toString() {
		return "User [no=" + no + ", pwd=" + pwd + ", lastName=" + lastName + ", firstName=" + firstName
				+ ", email=" + email + ", company=" + company + ", regdate=" + regdate + ", isDeactive=" + isDeactive
				+ "]";
	}
}
