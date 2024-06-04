package com.multi.spring.users.controller;

import javax.servlet.http.HttpSession;

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
	
	@RequestMapping("/modify_form")
	public void modifyForm() {
		
	}

	@RequestMapping("/login")
	public String login(UsersDTO usersDTO,  HttpSession httpSession) {

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


		httpSession.setAttribute("loginUser", loginDto);
		httpSession.setAttribute("loginUser2", usersDTO);
		
		/* redirectAttributes.addAttribute("loginUser",loginDto); */
		
		String page = "redirect:/";

		return page;

	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.invalidate();

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
	
	@RequestMapping("/update")
	public void updateUser(UsersDTO usersDTO) {
		
		int result;
		try {
			result = usersService.updateUser(usersDTO);
			
			if (result < 0) {
				throw new Exception("회원수정 실패!!");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
