package com.webkitchen.model;

public class Account {
	private String userName;
	private String passWork;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassWork() {
		return passWork;
	}
	public void setPassWork(String passWork) {
		this.passWork = passWork;
	}
	public Account(String userName, String passWork) {
		super();
		this.userName = userName;
		this.passWork = passWork;
	}
	public Account() {
		// TODO Auto-generated constructor stub
	}

	
	
}
