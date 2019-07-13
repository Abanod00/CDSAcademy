package com.cds.academy;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cds.academy.model.Person;
import com.cds.academy.service.MessageService;
import com.cds.academy.service.PersonService;

@Controller
public class RegisterLoginController {

	private static final Logger logger = LoggerFactory.getLogger(RegisterLoginController.class);
	
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
	

	@RequestMapping(value="/")
	public String index() {
		return "/";
	} 
	
	
	@RequestMapping(value = "/registerPerson", method = RequestMethod.POST)
	public String registerPerson(@ModelAttribute("person") Person p, Model model) {
		logger.info("person: " + p);
	
		if(!p.getPassword().equals(p.getRepeatpassword())) {
			return "redirect:/";
		}
		
		this.personService.addPerson(p);
		return "redirect:/";
	}

	@RequestMapping(value = "/loginPerson", method = RequestMethod.POST)
	public ModelAndView loginPerson( @RequestParam("email")String email, @RequestParam("password")String password) {
			ModelAndView model = new ModelAndView();
			
			logger.info("email: " + email);
			logger.info("password: " + password);
			
			Person p =  this.personService.loginPerson(email, password);

			if(p == null) {
				model.setViewName("redirect:/");
				return model;
			}
			
			model.addObject("personLogin",p);
			model.addObject("listRandomPersons", this.personService.randListPersons());
			model.addObject("listMessages", this.messageService.listMessage());
			model.addObject("messageLogin", "Login success.");
			model.setViewName("messages");
			return model;
	}
	
}