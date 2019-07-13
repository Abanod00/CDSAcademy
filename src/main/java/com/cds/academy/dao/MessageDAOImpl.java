package com.cds.academy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.cds.academy.model.Message;

@Repository
public class MessageDAOImpl  implements MessageDAO{
	private static final Logger logger = LoggerFactory.getLogger(MessageDAOImpl.class);

	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	@Override
	public void addMessage(Message m) {
		logger.info("Message tr saved Message Details="+m);
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(m);
		logger.info("Message saved successfully, Message Details="+m);
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> listMessage() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Message> messageList = session.createQuery("from Message").list();
		for(Message m : messageList){
			logger.info("Message List::"+m);
		}
		return messageList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Message> getMessageByPersonId(int idPerson) {
		Session session = this.sessionFactory.getCurrentSession();		
		List<Message> messageList = session.createQuery("from Message where idPerson="+idPerson).list();
		for(Message m : messageList){
			logger.info("Message List::"+m);
		}
		return messageList;
	}

	@Override
	public void removeMessage(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Message p = (Message) session.load(Message.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Message deleted successfully, Message details="+p);
	}
	@Override
	public Message getMessageById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Message p = (Message) session.load(Message.class, new Integer(id));
		logger.info("Message loaded successfully, Message details="+p);
		return p;
	}
	@Override
	public void updateMessage(Message m) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(m);
		logger.info("Message updated successfully, Message Details="+m);
	}

}
