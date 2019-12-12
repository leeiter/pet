package com.biz.pets.persistence;

import java.util.List;

import com.biz.pets.domain.ReviewDTO;

public interface ReviewDao {
	
	public List<ReviewDTO> selectAll();
	

}
