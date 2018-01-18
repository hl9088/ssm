package com.demo.ssm.pojo;

import java.io.Serializable;

public class TestBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	// id
	private int id;
	// name
	private String name;
	// password
	private String password;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
