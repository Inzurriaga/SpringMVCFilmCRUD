<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Search</title>
</head>
<body>
	<div>
		<h4>Find Film By Keyword</h4>
		<form action ="ListFilms.do" method = "POST">
		<label>Keyword: <input type = "text" name ="filmKeyword" size = "30" required></label>
		<input type = "submit" value="Find Film">
		</form>
	
	</div>
</body>
</html>