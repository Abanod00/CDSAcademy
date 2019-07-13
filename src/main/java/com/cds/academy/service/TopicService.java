package com.cds.academy.service;

import java.util.List;

import com.cds.academy.model.Topic;

public interface TopicService {

	public void addTopic(Topic p);

	public void deleteTopic(int id);

	public void likeTopic(int id);

	public void dislikeTopic(int id);

	public int numTopicLike(int id);

	public int numTopicDislike(int id);

	public List<Topic> allTopics();
}
