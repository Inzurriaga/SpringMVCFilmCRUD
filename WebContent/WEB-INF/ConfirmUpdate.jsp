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
	<c:if test="${empty Delete}">
		<h3>Film Not Deleted</h3>
	</c:if>
	<c:if test="${not empty Delete}">
		<h3>Film Deleted</h3>
	</c:if>

	<c:if test="${empty Update}">
		<h3>Film not Updated</h3>
	</c:if>
	<c:if test="${not empty Update}">
		<h3>Film Updated</h3>
	</c:if>
</body>
</html>