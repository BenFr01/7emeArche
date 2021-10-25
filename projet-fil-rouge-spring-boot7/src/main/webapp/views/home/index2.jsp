<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page d'accueil</title>
</head>
<body>
	<p>Hello World</p>
	<h1>Liste des livres</h1>
	<c:forEach items="${ livres }" var="livres">
		<div>
			<c:out value="${ livres.nom } ${ livres.nb_pages }" />
		</div>
	</c:forEach>
</body>
</html>