package com.cds.academy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cds.academy.model.Topic;
import com.cds.academy.service.PersonService;
import com.cds.academy.service.TopicService;

@Controller
public class TopicController {

	private static final Logger logger = LoggerFactory.getLogger(MessageController.class);

	private TopicService topicService;
	private PersonService personService;

	@Autowired(required = true)
	@Qualifier(value = "topicService")
	public void setTopicService(TopicService ts) {
		this.topicService = ts;
	}

	@Autowired(required = true)
	@Qualifier(value = "personService")
	public void setPersonService(PersonService ps) {
		this.personService = ps;
	}

	@RequestMapping(value = "/allTopics", method = RequestMethod.GET)
	public String allMessagesWithID(@RequestParam ("idLog") int idLog, Model model) {
		model.addAttribute("personLogin", this.personService.getPersonById(idLog));
		model.addAttribute("listTopic", this.topicService.allTopics());

		return "allTopics";
	}

	@RequestMapping(value = "/addTopic", method = RequestMethod.POST)
	public String addMessage(@RequestParam ("idLog") int idLog,@ModelAttribute("topic") Topic t) {
		logger.info("topic: " + t);
		this.topicService.addTopic(t);
		return "redirect:/allTopics?idLog="+idLog;
	}

	@RequestMapping(value = "/likeTopic/{id}", method = RequestMethod.GET)
	public String likeTopic(@RequestParam("idLog") int idLog, @PathVariable("id") int id) {
		this.topicService.likeTopic(id);
		return "redirect:/allTopics?idLog="+idLog;
	}

	@RequestMapping(value = "/dislikeTopic/{id}", method = RequestMethod.GET)
	public String dislikeTopic(@RequestParam("idLog") int idLog,  @PathVariable("id") int id) {
		this.topicService.dislikeTopic(id);
		return "redirect:/allTopics?idLog="+idLog;
	}

}
