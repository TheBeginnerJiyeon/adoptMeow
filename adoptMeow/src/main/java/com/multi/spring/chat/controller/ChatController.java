package com.multi.spring.chat.controller;

import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.multi.spring.cat.model.dto.CatDTO;
import com.multi.spring.cat.service.CatService;
import com.multi.spring.page.model.dto.PageDTO;
import com.multi.spring.users.model.dto.UsersDTO;

@Controller
@RequestMapping("/chat") // ** 는 모든 하위 폴더 전부
public class ChatController {

	@RequestMapping("/main")
	public String Main() {

		return "redirect:/";
	}

	@RequestMapping("/chatMain")
	public void catMain() {

	}

	// 채팅방 윈도우 창 경로
	@GetMapping("/chatWithOthers")
	public void func1() {
	}

	// 챗봇 윈도우 창 경로
	@GetMapping("/chatBot")
	public void func2() {
	}

}
