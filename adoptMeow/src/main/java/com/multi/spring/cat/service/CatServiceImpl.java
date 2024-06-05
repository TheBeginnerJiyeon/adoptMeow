package com.multi.spring.cat.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.spring.cat.model.dao.CatDAO;
import com.multi.spring.cat.model.dto.CatDTO;
import com.multi.spring.page.model.dto.PageDTO;

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

	@Override
	public List<CatDTO> selectList(PageDTO pageDTO) throws Exception {

		List<CatDTO> list = catDAO.selectList(sqlSessionTemplate, pageDTO);

		return list;

	}

	@Override
	public int selectCount() throws Exception {
		
		int count = catDAO.selectCount(sqlSessionTemplate);
		
		return count;
		
		
	}

}
