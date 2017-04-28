package me.yoon.harry;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import me.yoon.harry.exceptions.AlreadyLoginedException;
import me.yoon.harry.vo.User;
import me.yoon.harry.vo.UserForm;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		
		return "home/home";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "home/register", method = RequestMethod.GET)
	public String register(User signedInUser) {
		if (signedInUser.getNo() != 0) {
			throw new AlreadyLoginedException();
		}
		
		return "home/register";
	}
	
	@RequestMapping(value = "home/register", method = RequestMethod.POST)
	public String registerUser(@ModelAttribute("userForm")UserForm userForm) {
		
		
		return "home/registerdone";
	}
	
	@RequestMapping(value = "home/forgotaccount", method = RequestMethod.GET)
	public String forgotaccount(User signedInUser) {
		if (signedInUser.getNo() != 0) {
			throw new AlreadyLoginedException();
		}	
		return "home/forgotaccount";
	}

}
