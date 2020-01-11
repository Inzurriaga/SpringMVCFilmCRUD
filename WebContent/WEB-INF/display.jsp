<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Films</title>
</head>
<body>
	<header>
		<h1>Film DB</h1>
		<a href="/MVCFilmSite">Home</a>
	</header>
	<section>
		<table>
			<tr>
				<td>Title</td>
				<td>${film.title}</td>
			</tr>
			<tr>
				<td>Description</td>
				<td>${film.description}</td>
			</tr>
			<tr>
				<td>Release Year</td>
				<td>${film.releaseYear}</td>
			</tr>
			<tr>
				<td>Language</td>
				<td>${film.filmLanguage}</td>
			</tr>
			<tr>
				<td>Rental Duration</td>
				<td>${film.rentalDuration}</td>
			</tr>
			<tr>
				<td>Rental Rate</td>
				<td>${film.rentalRate}</td>
			</tr>
			<tr>
				<td>length</td>
				<td>${film.length}</td>
			</tr>
			<tr>
				<td>Replacement Cost</td>
				<td></td>
			</tr>
			<tr>
				<td>Rating</td>
				<td>${film.rating}</td>
			</tr>
			<tr>
				<td>Special Features</td>
				<td>${film.specialFeatures}</td>
			</tr>
		</table>
		<c:if test="${film.id > 1000}">
			<article>
				<a href="DeleteFilm.do/?id=${film.id}">Delete</a>
				<a href="UpdateFilm.do/?id=${film.id}">Update</a>
			</article>
		</c:if>
	</section>
</body>
</html>