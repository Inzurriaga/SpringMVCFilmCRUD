<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List of Films</title>
</head>
<body>
	<header>
		<h1>Film DB</h1>
	</header>
	<section>
		<c:forEach var="film" items="${FilmList}">
			<a href="">${film.title}</a>
			<br>
		</c:forEach>
	
	
	</section>

</body>
</html>