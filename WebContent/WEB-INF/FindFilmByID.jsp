<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Film By ID</title>
</head>
<body>
	<div class="">
		<h4>Find Film By ID</h4>
		<form action="FindFilmByID.do" method="POST">
			<label>Insert ID: <input type="text" name="id" size="6" maxlength="5" required></label>
			<input type = "submit" value="Find Film">
		</form>
	</div>

</body>
</html>