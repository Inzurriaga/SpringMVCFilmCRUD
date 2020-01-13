<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<header>
		<h1>Film DB</h1>
		<a href="/MVCFilmSite">Home</a>
	</header>
	<section>
		<form action="UpdateFilmInDB.do" method="Post">
			<fieldset>
				<legend>Create Film</legend>
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

	<a href="/MVCFilmSite">Home</a>

</body>
</html>