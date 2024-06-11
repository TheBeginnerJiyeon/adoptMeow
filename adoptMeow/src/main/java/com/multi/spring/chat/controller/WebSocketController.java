package com.multi.spring.chat.controller;

import java.util.Date;

import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;

import com.multi.spring.chat.model.dto.MessageDTO;
import com.multi.spring.chat.model.dto.OutputMessageDTO;

@Controller
public class WebSocketController {

	// 채팅방 윈도우 창 경로
	@GetMapping("/chat/chatWithOthers")
	public void func1() {
	}

	// 챗봇 윈도우 창 경로
	@GetMapping("/chat/chatBot")
	public void func2() {
	}

	@MessageMapping("/chatRoom")
	@SendTo("/freeChat/messages1")
	public OutputMessageDTO send(MessageDTO messageDTO) {

		System.out.println("messageDTO" + messageDTO);

		OutputMessageDTO outputMessageDTO = new OutputMessageDTO();
		outputMessageDTO.setFrom(messageDTO.getFrom());
		outputMessageDTO.setText(messageDTO.getText());

		Date date = new Date();

		outputMessageDTO.setTime(date.getHours() + " : " + date.getMinutes());
		return outputMessageDTO;

	}

}
