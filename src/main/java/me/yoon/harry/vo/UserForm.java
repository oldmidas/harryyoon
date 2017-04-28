package me.yoon.harry.vo;

public class UserForm {
	private String pwd;
	private String lastName;
	private String firstName;
	private String email;
	private String company;

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
	@Override
	public String toString() {
		return "UserForm [pwd=" + pwd + ", lastName=" + lastName + ", firstName=" + firstName
				+ ", email=" + email + ", company=" + company + "]";
	}
}
