<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" http-equiv="Content-Type" content="text/html">
    <title>Forum - dodaj nowy temat</title>
</head>
<body>

<form:form modelAttribute="topic" method="POST">
    <form:hidden path="id"/>
    <p>Wprowadź tytuł tematu:</p>
    <form:input path="title" type="text" name="tytul" id="tytul" maxlength="255"/>
    <p>Wprowadź treść tematu:</p>
    <form:textarea path="content" name="tresc" id="tresc" rows="9" cols="40"/>
    <br/> <input type="submit" value="Dodaj"/>
</form:form>

</body>
</html>