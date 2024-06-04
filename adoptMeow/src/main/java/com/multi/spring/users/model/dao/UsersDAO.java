package com.multi.spring.users.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.multi.spring.users.model.dto.UsersDTO;

@Repository
public class UsersDAO {

	public UsersDTO selectOne(SqlSessionTemplate sqlSessionTemplate, UsersDTO usersDTO) {

		UsersDTO loginUser = sqlSessionTemplate.selectOne("selectUser", usersDTO);

		return loginUser;

	}

	public int insertUser(SqlSessionTemplate sqlSessionTemplate, UsersDTO usersDTO) {

		int result = sqlSessionTemplate.insert("insertUser", usersDTO);

		return result;

	}

}
