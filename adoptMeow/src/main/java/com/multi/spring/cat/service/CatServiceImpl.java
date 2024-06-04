package com.multi.spring.cat.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.spring.cat.model.dao.CatDAO;
import com.multi.spring.cat.model.dto.CatDTO;

@Service("catService")
public class CatServiceImpl implements CatService {

	private final CatDAO catDAO;

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public CatServiceImpl(CatDAO catDAO) {
		super();
		this.catDAO = catDAO;
	}

	@Override
	public int insertCat(CatDTO catDTO) throws Exception {

		int result = catDAO.insertCat(catDTO, sqlSessionTemplate);

		if (result < 0) {
			throw new Exception("고양이 등록에 실패하셨습니다.");
		}
		
		return result;

	}

}
