package com.myexample.mapping;

import javax.persistence.*;

@Entity
@Table(name="student")
public class Student {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="rollno")
	int rollno;
	@Column(name="sname")
	String sname;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="rollno")
	StudentDetails d;
	
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public StudentDetails getD() {
		return d;
	}
	public void setD(StudentDetails d) {
		this.d = d;
	}
	
	
}
