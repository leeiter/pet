package com.biz.pets.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.pets.domain.ReviewDTO;
import com.biz.pets.service.ReviewService;
import com.biz.pets.service.ServiceService;

@RequestMapping(value="/community")
@Controller
public class CommunityController {
	
	@Autowired
	ReviewService rService;
	
	@Autowired
	ServiceService sService;
	
	@RequestMapping(value="/view",method=RequestMethod.GET)
	public String view() {
		return "community/view";
	}
	
	@RequestMapping(value="/view_ser",method=RequestMethod.GET)
	public String view_ser() {
		return "community/view_ser";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String insert() {
		return "community/insert";
	}

}
