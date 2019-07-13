package com.cds.academy.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cds.academy.dao.MessageDAO;
import com.cds.academy.model.Message;

@Service
public class MessageServiceImpl implements MessageService {

	private MessageDAO messageDAO;
	
	public void setMessageDAO(MessageDAO messageDAO) {
		this.messageDAO = messageDAO;
	}

	@Override
	@Transactional
	public void addMessage(Message m) {
		this.messageDAO.addMessage(m);

	}

	@Override
	@Transactional
	public List<Message> listMessage() {
		return this.messageDAO.listMessage();
	}

	@Override
	@Transactional
	public List<Message> getMessageByPersonId(int id) {
		return this.messageDAO.getMessageByPersonId(id);
	}

	@Override
	@Transactional
	public void removeMessage(int id) {
		this.messageDAO.removeMessage(id);
	}

	@Override
	@Transactional
	public Message getMessageById(int id) {
		return this.messageDAO.getMessageById(id);
	}

	@Override
	@Transactional
	public void updateMessage(Message m) {
		this.messageDAO.updateMessage(m);
	}

}
