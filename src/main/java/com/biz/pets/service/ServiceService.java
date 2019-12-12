package com.biz.pets.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.biz.pets.domain.ServiceDTO;
import com.biz.pets.persistence.ServiceDao;

import lombok.extern.slf4j.Slf4j;

@Service
public class ServiceService {
	

	@Autowired
	SqlSession sqlSession;
		
	ServiceDao sDao;

	@Autowired
	public void getMapper() {
		sDao = sqlSession.getMapper(ServiceDao.class);
	}

	public List<ServiceDTO> getAllList() {
		return sDao.selectAll();
	}

	
}
