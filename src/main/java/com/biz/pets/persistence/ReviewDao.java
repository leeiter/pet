package com.biz.pets.persistence;

import java.util.List;

import com.biz.pets.domain.ReviewDTO;

public interface ReviewDao {
	
	public List<ReviewDTO> selectAll();

	public int insert(ReviewDTO reviewDTO);

	public ReviewDTO findById(long re_seq);

	public int update(ReviewDTO reviewDTO);

	public int delete(long re_seq);
	

}
