package com.multi.spring.users.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.multi.spring.users.model.dto.UsersDTO;
import com.multi.spring.users.service.UsersService;

@Controller
@RequestMapping("/users")
public class UsersController {

	private final UsersService usersService;

	public UsersController(UsersService usersService) {
		super();
		this.usersService = usersService;
	}

	@RequestMapping("/main")
	public String main() {

		String page = "redirect:/";

		return page;

	}

	@RequestMapping("/insert_form")
	public void insertForm() {

	}

	@RequestMapping("/login")
	public String login(UsersDTO usersDTO,  Model model,  RedirectAttributes redirectAttributes) {

		UsersDTO loginDto = null;
		try {
			loginDto = usersService.login(usersDTO);

			if (loginDto == null) {
				throw new Exception("로그인 실패!! 아이디가 없음..");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		redirectAttributes.addAttribute("loginId", loginDto.getId());

		model.addAttribute("loginUser",loginDto); 

		String page = "redirect:/";

		return page;

	}

	@RequestMapping("/logout")
	public String logout(SessionStatus status) {

		status.setComplete();

		String page = "redirect:/";

		return page;

	}

	@RequestMapping("/insert")
	public void insertUser(UsersDTO usersDTO) {

		int result;
		try {
			result = usersService.insertUser(usersDTO);

			if (result < 0) {
				throw new Exception("회원가입 실패!!");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
