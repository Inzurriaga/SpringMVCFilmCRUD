<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${empty Delete}">
		<h3>Film Deleted</h3>
	</c:if>
	<c:if test="${not empty Delete}">
		<h3>Film not Deleted</h3>
	</c:if>

	<c:if test="${empty Update}">
		<h3>Film Updated</h3>
	</c:if>
	<c:if test="${not empty Update}">
		<h3>Film not Updated</h3>
	</c:if>
</body>
</html>