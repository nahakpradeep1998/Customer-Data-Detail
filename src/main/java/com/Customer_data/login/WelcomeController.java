package com.Customer_data.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Controller
@SessionAttributes("name")
public class WelcomeController {
	

	

	
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String goToWelcomPage(ModelMap model) {
		model.put("name", getLoggedinUsername());
		return "welcome";
	}
	private String getLoggedinUsername() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}

}

	/*
	 * @RequestMapping(value="/login", method = RequestMethod.POST) public String
	 * goToWelcomePage(@RequestParam String name,@RequestParam String password,
	 * ModelMap model) { model.put("name", name); model.put("password", password);
	 * if(authenticationService.authentication(name, password)) { return "welcome";
	 * } model.put("errorMessage","Invalid Credential! Please Try Again"); return
	 * "login"; }
	 */

