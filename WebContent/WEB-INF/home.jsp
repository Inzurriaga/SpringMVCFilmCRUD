<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Site</title>
</head>
<body>
	<h3>MVC Film Site</h3>
	<br>
	<h4>Get Film by ID</h4>
	<form action="GetFilm.do" method="GET">
		<input type="text" name="howmany"  size="2" /> <input
			type="submit" value="Get Film" />
	</form>
	<c:forEach var="number" items="${listOfNumbers}">
      ${number}
    </c:forEach>
	<br />

</body>
</html>