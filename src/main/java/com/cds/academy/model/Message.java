package com.cds.academy.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Message")
public class Message {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "idPerson")
	private String idPerson;
	@Column(name = "aliasPerson")
	private String aliasPerson;
	@Column(name = "message")
	private String message;
	private String mention;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIdPerson() {
		return idPerson;
	}

	public void setIdPerson(String idPerson) {
		this.idPerson = idPerson;
	}

	public String getAliasPerson() {
		return aliasPerson;
	}

	public void setAliasPerson(String aliasPerson) {
		this.aliasPerson = aliasPerson;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getMention() {
		return mention;
	}

	public void setMention(String mention) {
		this.mention = mention;
	}

	@Override
	public String toString() {
		return "id=" + id + ", message=" + message + " aliasPerson: " + aliasPerson + " idPerson: " + idPerson;
	}

}
