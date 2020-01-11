<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
</head>
<body>
	<div class ="">
		<h3>Create Film</h3>
		<form action="NewFilm.do" method="Post">
			<br> 
			<label>*Title: <input type="text" name="title" required/></label>
			<br>
			<label>Description: <input type="text" name="description" /></label>
			
			<br>
			<label>Release Year: <input type="text" name="releaseYear" /></label>
			<br>
			<!-- *Language ID is defaulted -->
			<label>*Language ID: <input type="text" name="languageId" required/></label>
			<br>
			<label>*Rental Duration: <input type="text" name="rentalDuration" required/></label>
			<br>
			<label>*Rental Rate: <input type="text" name="rentalRate" required/></label>
			<br>
			<label>Length of Film: <input type="text" name="length" value ="120"/></label>
			<br>
			<label>*Replacement Cost: <input type="text" name="replacementCost" required/></label>
			<br>
			<label>Rating: <input type="text" name="rating" /></label>
			<br>
			<label>Special Features: <input type="text" name="specialFeatures" /></label>
			<br><br>
			<input type = "submit" value="Add Film">

		</form>
	</div>
</body>
</html>