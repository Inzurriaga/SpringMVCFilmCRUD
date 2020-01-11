package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public List<Film> findAllFilms();
	public Film getFilmById();
	public Film addFilm(Film film);
}
