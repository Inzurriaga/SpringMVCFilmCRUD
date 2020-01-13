<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Films</title>
	<link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="./css/displayFilmStyle.css" />
	<link rel="stylesheet" href="./css/mainStyle.css" />
</head>
<body>
	<header>
		<h1>Film Database Controller</h1>
		<a href="/MVCFilmSite" class="btn btn-outline-primary">Home</a>
	</header>
	<section class="container">
		<table class="table">
			<tr>
				<td>Title</td>
				<td>${film.title}</td>
			</tr>
			<tr>
				<td>Description</td>
				<td>${film.description}</td>
			</tr>
			<c:if test="${film.actors.size() > 0}">
				<tr>
					<td>Actors</td>
					<td>
						<c:forEach var="actor" items="${film.actors}">
							${actor},  
						</c:forEach> 
					</td>
				</tr>
			</c:if>
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
				<td><fmt:formatNumber type="currency">${film.rentalRate}</fmt:formatNumber></td>
			</tr>
			<tr>
				<td>length</td>
				<td>${film.length}</td>
			</tr>
			<tr>
				<td>Replacement Cost</td>
				<td><fmt:formatNumber type="currency">${film.replacementCost}</fmt:formatNumber></td>
			</tr>
			<tr>
				<td>Rating</td>
				<td>${film.rating}</td>
			</tr>
		</table>
		<c:if test="${film.id > 1000}">
			<article>
				<form action="DeleteFilm.do" action="POST">
					<input type="hidden" name="id" value="${film.id}" />
					<input type="submit" value="Delete Film" class="btn btn-primary"/>
				</form>
				<form action="UpdateFilm.do" action="POST">
					<input type="hidden" name="id" value="${film.id}" />
					<input type="submit" value="Update Film" class="btn btn-primary"/>
				</form>
			</article>
		</c:if>
	</section>
	<footer>
		<p>by Neal and Gabriel</p>
	</footer>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>