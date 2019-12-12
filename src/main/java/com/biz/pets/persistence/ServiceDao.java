package com.biz.pets.persistence;

import java.util.List;

import com.biz.pets.domain.ServiceDTO;

public interface ServiceDao {
	
	public List<ServiceDTO> selectAll();
	
}
