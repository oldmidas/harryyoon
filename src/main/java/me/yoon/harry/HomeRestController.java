package me.yoon.harry;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import me.yoon.harry.exceptions.AlreadyLoginedException;
import me.yoon.harry.vo.User;

@RestController
public class HomeRestController {
	@RequestMapping(value = "home/forgotaccount", method = RequestMethod.POST)
	public String forgotaccount(User signedInUser) {
		if (signedInUser.getNo() != 0) {
			throw new AlreadyLoginedException();
		}
		
		return "";
	}
}
