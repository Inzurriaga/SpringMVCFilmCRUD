package com.skilldistillery.film.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.film.data.FilmDAO;
import com.skilldistillery.film.entities.Film;

@Controller
public class FilmController {

	@Autowired
	private FilmDAO dao;
	
	//navigational entry points
	@RequestMapping("home.do")
	public String home() {
		return "WEB-INF/home.jsp";
	}
	@RequestMapping("GetFilmByID.do")
	public String findFilmByID() {
		return "WEB-INF/FindFilmByID.jsp";
	}
	@RequestMapping("createFilm.do")
	public String createFilm() {
		return "WEB-INF/CreateFilm.jsp";
	}
	@RequestMapping("FindFilmByKW.do")
	public String findFilmByKW() {
		return "WEB-INF/FilmByKW.jsp";
	}
	//TODO: delete film
	
	@RequestMapping(path = "FindFilmByID.do", params = "id", method = RequestMethod.GET)
	public ModelAndView getFilmByID(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();
		Film film = dao.findFilmById(id);
		mv.addObject("film", film);
		mv.setViewName("form.jsp");
		return mv;
		
	}
	@RequestMapping(path = "NewFilm.do", method = RequestMethod.POST)
	public ModelAndView newFilm(Film film) {
		Film returnFilm = dao.addFilm(film);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("NewFilm",returnFilm);
		mv.setViewName("WEB-INF/display.jsp");
		
		return mv;
	}
	
	
	
	public FilmController(FilmDAO dao) {
		this.dao = dao;
	}
}
