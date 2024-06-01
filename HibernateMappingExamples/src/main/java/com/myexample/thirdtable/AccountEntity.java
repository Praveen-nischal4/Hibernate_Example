package com.myexample.thirdtable;

import javax.persistence.*;

@Entity
@Table(name="AccountEntity")
public class AccountEntity {
	
	@Id
	int aid;
	String type;
	long balance;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}

	
}
