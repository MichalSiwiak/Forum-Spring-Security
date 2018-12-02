<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html">
<title>Forum</title>
</head>
<body>
	<h1>Forum</h1>
	<table>
		<tr>
			<th>Temat</th>
			<th>Data</th>
			<th>Autor</th>
		</tr>
		<c:forEach var="temat" items="${tematy}">
			<tr>
				<td><c:url var="url" scope="page" value="/temat">
						<c:param name="id" value="${temat.id}" />
					</c:url> <a href="${url}">${temat.title}</a></td>
				<td><fmt:formatDate value="${temat.date}" dateStyle="short"
						timeStyle="short" type="both" />
				<td>${temat.users.username}</td>
			</tr>

		</c:forEach>

	</table>
	<c:url value="/nowyTemat" var="urlNowyTemat" scope="page" />
	<form action="${urlNowyTemat}">
		<input type="submit" value="Nowy temat" />
	</form>
	<br />
	<a href="wyloguj">Wyloguj</a>
</body>
</html>