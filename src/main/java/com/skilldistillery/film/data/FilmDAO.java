package com.skilldistillery.film.data;

import java.util.List;

import com.skilldistillery.film.entities.Actor;
import com.skilldistillery.film.entities.Film;

public interface FilmDAO {
	public Film findFilmById(int filmId);
	public List<Film> findFilmByKeyword(String filmKeyword);
	public Actor findActorById(int actorId);
	public List<Actor> findActorsByFilmId(int filmId);
	public Film addFilm(Film film);
	public boolean deleteFilm(Film film);
	public boolean updateFilm(Film film);
}
