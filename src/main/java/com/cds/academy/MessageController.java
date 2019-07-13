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

import com.cds.academy.model.Message;
import com.cds.academy.service.MessageService;
import com.cds.academy.service.PersonService;

@Controller
public class MessageController {

	private static final Logger logger = LoggerFactory.getLogger(MessageController.class);
	
	private MessageService messageService;
	private PersonService personService;
	
	@Autowired(required = true)
	@Qualifier(value = "messageService")
	public void setMessageService(MessageService ms) {
		this.messageService = ms;
	}
	
	@Autowired(required=true)
	@Qualifier(value="personService")
	public void setPersonService(PersonService ps){
		this.personService = ps;
	}
	

	@RequestMapping(value = "/allMessages", method = RequestMethod.GET)
	public String allMessages(Model model) {
		model.addAttribute("messages", new Message());
		model.addAttribute("listMessages", this.messageService.listMessage());
		model.addAttribute("listRandomPersons", this.personService.randListPersons());
		return "messages";
	}
	
	@RequestMapping(value = "/allMessages/{id}", method = RequestMethod.GET)
	public String allMessagesWithID(@PathVariable("id") int id, Model model) {
		
		model.addAttribute("messages", new Message());
		model.addAttribute("personLogin", this.personService.getPersonById(id));
		model.addAttribute("listMessages",this.messageService.listMessage());
		model.addAttribute("listRandomPersons", this.personService.randListPersons());
		return "messages";
	}

	@RequestMapping(value = "/addMessage", method = RequestMethod.POST)
	public String addMessage(@ModelAttribute("message") Message m) {
		logger.info("msg: " + m);
		this.messageService.addMessage(m);
		return "redirect:/allMessages/"+m.getIdPerson();
	}

	@RequestMapping("/removeMessage/{idPerson}/{id}")
    public String removeMessage(@PathVariable("idPerson") int idPerson, @PathVariable("id") int id){
        this.messageService.removeMessage(id);
        
        return "redirect:/myMessages/"+idPerson;
    }
	
	@RequestMapping(value = "/myMessages/{id}", method = RequestMethod.GET)
	public String myMessages(@PathVariable("id") int id, Model model) {
		model.addAttribute("messages", new Message());
		model.addAttribute("personLogin", this.personService.getPersonById(id));
		model.addAttribute("listMessages", this.messageService.getMessageByPersonId(id));
		return "myMessages";
	}
	
	
}
