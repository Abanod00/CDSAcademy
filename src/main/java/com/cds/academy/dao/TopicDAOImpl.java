package com.cds.academy.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.cds.academy.model.Person;
import com.cds.academy.model.Topic;

public class TopicDAOImpl implements TopicDAO {

	private static final Logger logger = LoggerFactory.getLogger(TopicDAOImpl.class);

	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	@Override
	public void addTopic(Topic p) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(p);
		logger.info("Topic saved successfully, Topic Details=" + p);

	}

	@Override
	public void deleteTopic(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Person p = (Person) session.load(Person.class, new Integer(id));
		if (null != p) {
			session.delete(p);
		}
		logger.info("Topic deleted successfully, Topic details=" + p);
	}

	@Override
	public void likeTopic(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Topic p = (Topic) session.load(Topic.class, new Integer(id));
		p.setLikes(p.getLikes() + 1);
		session.update(p);
	}

	@Override
	public void dislikeTopic(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Topic p = (Topic) session.load(Topic.class, new Integer(id));
		p.setDislikes(p.getDislikes() + 1);
		session.update(p);
	}

	@Override
	public int numTopicLike(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Topic p = (Topic) session.load(Topic.class, new Integer(id));
		return p.getLikes();
	}

	@Override
	public int numTopicDislike(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Topic p = (Topic) session.load(Topic.class, new Integer(id));
		return p.getDislikes();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Topic> allTopics() {

		Session session = this.sessionFactory.getCurrentSession();
		List<Topic> topicList = session.createQuery("from Topic").list();
		for (Topic p : topicList) {
			logger.info("Person List::" + p);
		}
		return topicList;
	}

}
