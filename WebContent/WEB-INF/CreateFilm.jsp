<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Film</title>
</head>
<body>
	<header>
		<h1>Film DB</h1>
		<a href="/MVCFilmSite">Home</a>
	</header>
	<section>
		<form action="NewFilm.do" method="Post">
			<fieldset>
				<legend>Create Film</legend>
				<br> 
				<label><span>*</span> Title: <input type="text" name="title" required /></label><br/>
				<label>Description: <input type="text" name="description" /></label><br/> 
				<label>Release Year: <input type="number" name="releaseYear" />
				</label> <br>
				<label><span>*</span> Language:
					<select name="languageId">
						<option value="1">English</option>
						<option value="2">Italian</option>
						<option value="3">Japanese</option>
						<option value="4">Mandarin</option>
						<option value="5">French</option>
						<option value="6">German</option>
					</select> 
				</label><br/> 
				<label><span>*</span> Rental Duration: <input type="number" name="rentalDuration" required /></label><br/>
				<label><span>*</span> Rental Rate: <input type="number" name="rentalRate" required /></label><br/>
				<label>Length of Film: <input type="text" name="number" value="120" /></label><br/> 
				<label><span>*</span> Replacement Cost: <input type="number" name="replacementCost" required /></label><br/>
				<label>Rating: 
					<select name="rating">
						<option value="G">G</option>
						<option value="PG">PG</option>
						<option value="PG13">PG13</option>
						<option value="R">R</option>
						<option value="NC17">NC17</option>
					</select>
				</label><br/> 
				<input type="submit" value="Add Film" />
			</fieldset>
		</form>
	</section>
</body>
</html>