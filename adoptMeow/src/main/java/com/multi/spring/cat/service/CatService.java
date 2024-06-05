package com.multi.spring.cat.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.multi.spring.cat.model.dto.CatDTO;
import com.multi.spring.page.model.dto.PageDTO;

public interface CatService {

	int insertCat(CatDTO catDTO) throws Exception;

	List<CatDTO> selectList(PageDTO pageDTO) throws Exception;

	int selectCount() throws Exception;

}
