package com.asm.bean;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Report2 {
	@Id
	Serializable id;
	Serializable fullname;
	Serializable email;
	Date likeDate;
	
	
	public Report2(Serializable id, Serializable fullname, Serializable email, Date likeDate) {
		super();
		this.id = id;
		this.fullname = fullname;
		this.email = email;
		this.likeDate = likeDate;
	}
	public Serializable getId() {
		return id;
	}
	public void setId(Serializable id) {
		this.id = id;
	}
	public Serializable getFullname() {
		return fullname;
	}
	public void setFullname(Serializable fullname) {
		this.fullname = fullname;
	}
	public Serializable getEmail() {
		return email;
	}
	public void setEmail(Serializable email) {
		this.email = email;
	}
	public Date getLikeDate() {
		return likeDate;
	}
	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}
	
}