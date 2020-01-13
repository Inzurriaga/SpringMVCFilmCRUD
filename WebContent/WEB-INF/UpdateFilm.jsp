<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Film</title>
<link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="./css/createFilmStyle.css" />
	<link rel="stylesheet" href="./css/mainStyle.css" />
</head>
<body>

	<header>
		<h1>Film Database Controller</h1>
		<a href="/MVCFilmSite">Home</a>
	</header>
	<section>
		<form action="UpdateFilmInDB.do" method="Post">
			<fieldset>
				<legend>Update Film</legend>
				<br> <label><span>*</span> Title: <input type="text"
					name="title" value="${Film.title}" required /></label><br /> 
					<label>Description: <input
					type="text" name="description" value="${Film.description}"/></label><br /> <label>Release
					Year: <input type="number" name="releaseYear" value="${Film.releaseYear}"/>
				</label> <br> <label><span>*</span> Language: <select
					name="languageId">
						<option value="1">English</option>
						<option value="2">Italian</option>
						<option value="3">Japanese</option>
						<option value="4">Mandarin</option>
						<option value="5">French</option>
						<option value="6">German</option>
				</select> </label><br /> <label><span>*</span> Rental Duration: <input
					type="number" name="rentalDuration" value="${Film.rentalDuration}" required /></label><br /> <label><span>*</span>
					Rental Rate: <input type="number" name="rentalRate" value="${Film.rentalRate}" required /></label><br />
				<label>Length of Film: <input type="text" name="number"
					value="120" /></label><br /> <label><span>*</span> Replacement
					Cost: <input type="number" name="replacementCost" value="${Film.replacementCost}" required /></label><br />
				<label>Rating: <select name="rating">
						<option value="G">G</option>
						<option value="PG">PG</option>
						<option value="PG13">PG13</option>
						<option value="R">R</option>
						<option value="NC17">NC17</option>
				</select>
				</label>
					<input type="hidden" name="id" value="${Film.id}" />
					<input type="hidden" name="categoryId" value="${Film.categoryId}" />
					<input type="submit"
					value="Update Film" />
			</fieldset>
		</form>
	</section>

	<footer>
		<p>by Neal and Gabriel</p>
	</footer>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

</body>
</html>