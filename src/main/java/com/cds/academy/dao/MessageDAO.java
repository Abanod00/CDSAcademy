package com.cds.academy.dao;

import java.util.List;

import com.cds.academy.model.Message;

public interface MessageDAO {

	public void addMessage(Message m);
	public List<Message> listMessage();
	public List<Message> getMessageByPersonId(int id);
	public void removeMessage(int id);
	public Message getMessageById(int id);
	public void updateMessage(Message m);
}
