package com.biz.pets.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.pets.domain.ReviewDTO;
import com.biz.pets.persistence.ReviewDao;

import lombok.extern.slf4j.Slf4j;

@Service
public class ReviewService {
	
	@Autowired
	SqlSession sqlSession;
		
	ReviewDao rDao;

	@Autowired
	public void getMapper() {
		rDao = sqlSession.getMapper(ReviewDao.class);
	}

	public List<ReviewDTO> getAllList() {
		return rDao.selectAll();
	}


	
	
}
