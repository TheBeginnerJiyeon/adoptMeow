package com.multi.spring.users.service;

import com.multi.spring.users.model.dto.UsersDTO;

public interface UsersService {

	public UsersDTO login(UsersDTO usersDTO) throws Exception;

	public int insertUser(UsersDTO usersDTO) throws Exception;
	
	

}
