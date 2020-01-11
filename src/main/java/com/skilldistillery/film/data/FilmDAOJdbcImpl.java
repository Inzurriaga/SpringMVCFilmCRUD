
package com.skilldistillery.film.data;

import java.sql.*;
import java.util.List;

import com.skilldistillery.film.entities.Film;


public class FilmDAOJdbcImpl implements FilmDAO {

	private final String url = "jdbc:mysql:/localhost:3306/sdvid?useSSL=false";
	private final String user = "student";
	private final String pass = "student";

	static {
		try {
			Class.forName("com.jdbc.mysql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Film> findAllFilms() {
		return null;
	}

	@Override
	public Film getFilmById() {
		return null;
	}

	@Override
	public Film addFilm(Film film) {
		String sql = "INSERT INTO film(title, description, release_year, language_id, rental_duration, rental_rate, length, replacement_cost, rating, special_features) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(sql, sql, pass);
			conn.setAutoCommit(false);
			stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			stmt.setString(1, film.getTitle());
			stmt.setString(1, film.getDescription());
			stmt.setInt(1, film.getReleasYear());
			stmt.setInt(1, film.getLanguageId());
			stmt.setInt(1, film.getRentalDuration());
			stmt.setDouble(1, film.getRentalRate());
			stmt.setInt(1, film.getLength());
			stmt.setDouble(1, film.getReplacementCost());
			stmt.setString(1, film.getRating());
			stmt.setString(1, film.getSpecialFeatures());
			int updateCount = stmt.executeUpdate();
			if(updateCount == 1) {
				rs = stmt.getGeneratedKeys();
				if(rs.next()) {
					film.setId(rs.getInt(1));
				} else {
					throw new SQLException();
				}
			} else {
				throw new SQLException();
			}
			conn.commit();
		} catch (SQLException e) {
			film = null;
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				if(conn != null) {
					conn.close();
				}
				if(stmt != null) {
					stmt.close();
				}
				if(rs != null) {
					rs.close();
				}
			} catch (SQLException e2) {
				e2.printStackTrace();
			}
		}
		return film;
	}
}
