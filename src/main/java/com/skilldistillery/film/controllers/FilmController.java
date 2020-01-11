package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class FilmController {

	@Autowired
//	private FilmDAO dao;
	
	
	public String home() {
		return "WEB-INF/home.jsp";
	}
}
