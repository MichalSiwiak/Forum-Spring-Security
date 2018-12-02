<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" http-equiv="Content-Type" content="text/html">
<title>Forum</title>
</head>
<body>
	<h1>Temat ${temat.title}</h1>
	<table border="1">
		<tr>
			<th>Login</th>
			<th width="500">Treść</th>
			<th>Data</th>
		</tr>
		<tr>
			<td>${temat.users.username}</td>
			<td>${temat.content}</td>
			<td>${temat.date}</td>
		</tr>
		<c:forEach var="wpis" items="${temat.entries}">
			<tr>
				<td>${wpis.users.username}</td>
				<td>${wpis.content}</td>
				<td>${wpis.date}</td>

			</tr>


		</c:forEach>


	</table>
	<form:form method="POST">
		<%--<form:input path="topic" type="hidden" value="${temat.id}" />--%>
		<p>Wprowadź treść odpowiedzi:</p>
		<textarea name="tresc" cols="40" rows="8">${param.tresc}</textarea>
		<br /> <input type="submit" value="OK">
	</form:form>


</body>
</html>