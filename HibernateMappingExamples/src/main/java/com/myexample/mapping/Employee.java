package com.myexample.mapping;

import javax.persistence.*;

@Entity
@Table(name="employee")
public class Employee {

	@Id
	int id;
	String ename;
	String eaddress;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="account_id")
	Account ac;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getEaddress() {
		return eaddress;
	}

	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}

	public Account getAc() {
		return ac;
	}

	public void setAc(Account ac) {
		this.ac = ac;
	}

	

}
