package com.cds.academy.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cds.academy.dao.TopicDAO;
import com.cds.academy.model.Topic;

@Service
public class TopicServiceImpl implements TopicService {

	private TopicDAO topicDAO;

	public void setTopicDAO(TopicDAO topicDAO) {
		this.topicDAO = topicDAO;
	}

	@Override
	@Transactional
	public void addTopic(Topic p) {
		this.topicDAO.addTopic(p);
	}

	@Override
	@Transactional
	public void deleteTopic(int id) {
		this.topicDAO.deleteTopic(id);

	}

	@Override
	@Transactional
	public void likeTopic(int id) {
		this.topicDAO.likeTopic(id);

	}

	@Override
	@Transactional
	public void dislikeTopic(int id) {
		this.topicDAO.dislikeTopic(id);

	}

	@Override
	@Transactional
	public int numTopicLike(int id) {
		return this.topicDAO.numTopicLike(id);

	}

	@Override
	@Transactional
	public int numTopicDislike(int id) {
		return this.topicDAO.numTopicDislike(id);

	}

	@Override
	@Transactional
	public List<Topic> allTopics() {
		return this.topicDAO.allTopics();

	}

}
