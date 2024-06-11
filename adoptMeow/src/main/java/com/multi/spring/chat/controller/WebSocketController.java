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

	@MessageMapping("/chatBotRoom")
	@SendTo("/freeChat/messages2")
	public OutputMessageDTO send2(MessageDTO messageDTO) {

		System.out.println("messageDTO" + messageDTO);

		OutputMessageDTO outputMessageDTO = new OutputMessageDTO();
		String list = "";
		switch (messageDTO.getText()) {
		case "1":
			list = "chatBot: 10)고양이 바로 가기 11)보호소 바로 가기 12)상담사 연결";
			break;
		case "2":
			list = "chatBot: 잠시만 기다려 주십시오...";
			break;
		case "10":
			list = "chatBot: 고양이 메뉴 링크";
			break;
		case "11":
			list = "chatBot: 보호소 링크";
			break;
		case "12":
			list = "chatBot: 상담사를 기다리고 있습니다";
			break;

		default:
			break;
		}

		outputMessageDTO.setText(list);

		return outputMessageDTO;

	}

}
