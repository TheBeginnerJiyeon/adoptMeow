package com.multi.spring.users.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.multi.spring.users.model.dao.UsersDAO;
import com.multi.spring.users.model.dto.UsersDTO;

@Service("userService")
public class UsersServiceImpl implements UsersService {

	private final UsersDAO usersDAO;

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public UsersServiceImpl(UsersDAO usersDAO) {
		super();
		this.usersDAO = usersDAO;
	}

	@Autowired
	BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	public UsersDTO login(UsersDTO usersDTO) throws Exception {

		UsersDTO loginDto = usersDAO.selectOne(sqlSessionTemplate, usersDTO);

		if (loginDto == null) {
			System.out.println("아이디 자체가 없음...");
			throw new Exception("아이디 자체가 없음...");
		} else if (!bCryptPasswordEncoder.matches(usersDTO.getPw(), loginDto.getPw())) {
			System.out.println("비밀번호 불일치...");
			throw new Exception("비밀번호 불일치......");
		}

		return loginDto;
	}

	@Override
	public int insertUser(UsersDTO usersDTO) throws Exception {

		String encPw = bCryptPasswordEncoder.encode(usersDTO.getPw());

		usersDTO.setPw(encPw);

		int result = usersDAO.insertUser(sqlSessionTemplate, usersDTO);

		return result;

	}

	@Override
	public int updateUser(UsersDTO usersDTO) throws Exception {

		String encPw = bCryptPasswordEncoder.encode(usersDTO.getPw());

		usersDTO.setPw(encPw);

		int result = usersDAO.updateUser(sqlSessionTemplate, usersDTO);

		return result;

	}

}
