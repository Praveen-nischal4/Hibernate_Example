package com.myexample.thirdtable;

import javax.persistence.*;

@Entity
@Table(name="EmployeeEntity")
public class EmployeeEntity {

	@Id
	int empid;
	String enmae;
	long esalary;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinTable(name="EMP_ACC" ,joinColumns=@JoinColumn(name="empid"),inverseJoinColumns=@JoinColumn(name="aid"))
	AccountEntity ActEnt;

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	public String getEnmae() {
		return enmae;
	}

	public void setEnmae(String enmae) {
		this.enmae = enmae;
	}

	public long getEsalary() {
		return esalary;
	}

	public void setEsalary(long esalary) {
		this.esalary = esalary;
	}

	public AccountEntity getActEnt() {
		return ActEnt;
	}

	public void setActEnt(AccountEntity actEnt) {
		ActEnt = actEnt;
	}
	
	
	
}
