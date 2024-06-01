package com.myexample.mapping;

import javax.persistence.*;

@Entity
@Table(name="StudentDetails")
public class StudentDetails {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int rollno;
	String address;
	String mobile;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="rollno")
	Student e;
	
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Student getE() {
		return e;
	}
	public void setE(Student e) {
		this.e = e;
	}
	
	
}
