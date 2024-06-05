package com.multi.spring.cat.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.multi.spring.cat.model.dto.CatDTO;
import com.multi.spring.page.model.dto.PageDTO;

@Repository
public class CatDAO {

	public int insertCat(CatDTO catDTO, SqlSessionTemplate sqlSessionTemplate) throws Exception {

		int result = sqlSessionTemplate.insert("catMapper.insertCat", catDTO);

		return result;

	}

	public List<CatDTO> selectList(SqlSessionTemplate sqlSessionTemplate, PageDTO pageDTO) {

		List<CatDTO> list = sqlSessionTemplate.selectList("catMapper.selectList", pageDTO);

		return list;

	}

	public int selectCount(SqlSessionTemplate sqlSessionTemplate) {
		
		int count=sqlSessionTemplate.selectOne("catMapper.selectCount");
		
		return count;
		
		
	}

}
