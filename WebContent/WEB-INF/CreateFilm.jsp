<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Create Film</title>
	<link href="https://fonts.googleapis.com/css?family=Baloo+Bhai&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<link rel="stylesheet" href="./css/createFilmStyle.css" />
</head>
<body>
	<header>
		<h1>Film DB</h1>
		<a href="/MVCFilmSite" class="btn btn-outline-primary">Home</a>
	</header>
	<section class="container">
		<form action="NewFilm.do" method="Post">
			<fieldset>
				<legend>Create Film</legend>
				<div class="form-group">
					<label for="title"><span>*</span>Title</label>
					<input type="text" name="title" id="title" class="form-control" required />
				</div>
				<div class="form-group">
					<label for="description">Description</label>
					<input type="text" name="description" id="description" class="form-control" />
				</div>
				<div class="form-group">
					<label for="releaseYear">Release Year</label>
					<input type="number" name="releaseYear" id="releaseYear" class="form-control" />
				</div>
				<div class="form-group">
					<label for="language"><span>*</span>Language</label>
					<select id="language" name="languageId" class="btn btn-secondary dropdown-toggle">
						<option value="1">English</option>
						<option value="2">Italian</option>
						<option value="3">Japanese</option>
						<option value="4">Mandarin</option>
						<option value="5">French</option>
						<option value="6">German</option>
					</select> 
				</div>
				<div class="form-group">
					<label for="rentalDuration"><span>*</span>Rental Duration</label>
					<input type="number" name="rentalDuration" id="rentalDuration" class="form-control" required />
				</div>
				<div class="form-group">
					<label for="rentalRate"><span>*</span>Rental Rate</label>
					<input type="number" name="rentalRate" id="rentalRate" class="form-control" required />
				</div>
				<div class="form-group">
					<label for="filmLength">Length of Film</label>
					<input type="text" name="number" id="filmLength" class="form-control" /> 
				</div>
				<div class="form-group">
					<label for="replacementCost"><span>*</span> Replacement Cost</label>
					<input type="number" name="replacementCost" id="replacementCost" class="form-control" required />
				</div>
				<div class="form-group">
					<label for="rating">Rating</label>
					<select name="rating" id="rating" class="btn btn-secondary dropdown-toggle">
						<option value="G">G</option>
						<option value="PG">PG</option>
						<option value="PG13">PG13</option>
						<option value="R">R</option>
						<option value="NC17">NC17</option>
					</select>
				</div>
				<input type="submit" value="Add Film" class="btn btn-primary"/>
				<p><span>* Required fields</span></p>
			</fieldset>
		</form>
	</section>
	<footer>
		<p>by Neal and Gabriel</p>
	</footer>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>