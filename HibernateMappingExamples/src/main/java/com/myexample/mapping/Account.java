package com.myexample.mapping;

import javax.persistence.*;

@Entity
@Table(name="account")
public class Account {

	@Id
	int account_id;
	long balance;
	
	@OneToOne(mappedBy = "ac")
	Employee emp;

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public long getBalance() {
		return balance;
	}

	public void setBalance(long balance) {
		this.balance = balance;
	}

	public Employee getEmp() {
		return emp;
	}

	public void setEmp(Employee emp) {
		this.emp = emp;
	}
	
	
}
