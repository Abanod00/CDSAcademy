package com.cds.academy.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cds.academy.dao.PersonDAO;
import com.cds.academy.model.Person;

@Service
public class PersonServiceImpl implements PersonService {
	
	private PersonDAO personDAO;

	public void setPersonDAO(PersonDAO personDAO) {
		this.personDAO = personDAO;
	}

	@Override
	@Transactional
	public void addPerson(Person p) {
		this.personDAO.addPerson(p);
	}

	@Override
	@Transactional
	public void updatePerson(Person p) {
		this.personDAO.updatePerson(p);
	}

	@Override
	@Transactional
	public List<Person> listPersons() {
		return this.personDAO.listPersons();
	}

	@Override
	@Transactional
	public Person getPersonById(int id) {
		return this.personDAO.getPersonById(id);
	}

	@Override
	@Transactional
	public void removePerson(int id) {
		this.personDAO.removePerson(id);
	}

	@Override
	@Transactional
	public Person loginPerson(String email, String password) {
		return this.personDAO.loginPerson(email, password);
	}
	
	@Override
	@Transactional
	public List<Person> randListPersons() {
		return this.personDAO.randListPersons();
	}

}
