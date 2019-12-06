package com.biz.pets.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PetController {
	
	@RequestMapping(value="/pets",method=RequestMethod.GET)
	public String list(Model model) {
		return "home";
	}

	
	
}