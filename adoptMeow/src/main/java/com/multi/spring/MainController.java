package com.multi.spring;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.multi.spring.users.model.dto.UsersDTO;

@Controller
public class MainController {

	@RequestMapping("/")
	public String main() {

		return "main";
	}
	
	
	
	
	
	
	
	
	
	
}
