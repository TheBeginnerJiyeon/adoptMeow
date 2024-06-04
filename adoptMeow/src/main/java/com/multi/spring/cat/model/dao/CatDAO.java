package com.multi.spring.cat.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.multi.spring.cat.model.dto.CatDTO;

@Repository
public class CatDAO {

	public int insertCat(CatDTO catDTO, SqlSessionTemplate sqlSessionTemplate) throws Exception {

		int result = sqlSessionTemplate.insert("insertCat", catDTO);

		return result;

	}

}
