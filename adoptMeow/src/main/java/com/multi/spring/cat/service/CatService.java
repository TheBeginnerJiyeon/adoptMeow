package com.multi.spring.cat.service;

import org.mybatis.spring.SqlSessionTemplate;

import com.multi.spring.cat.model.dto.CatDTO;

public interface CatService {

	int insertCat(CatDTO catDTO) throws Exception;

}
