package com.cds.academy.dao;

import java.util.List;

import com.cds.academy.model.Person;

public interface PersonDAO {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons();
	public Person getPersonById(int id);
	public void removePerson(int id);
	public List<Person> randListPersons();
	
	public Person loginPerson(String login, String password);
}
