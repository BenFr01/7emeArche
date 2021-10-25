<%-- <%@ include file="../jstlLib.jsp" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a6c393237d.js"></script>
<link href="https://fonts.googleapis.com/css?family=Roboto|VT323"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/css/file.css">   

<title>Erreur</title>
</head>
<body>
	<header>
		<c:import url="../home/nav.jsp"></c:import>
	</header>
	<br>
	<br>
	<h2 class="center title">Page d'authentification</h2>
	<br>
	<div class="parallax3">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<form method="GET" action="/utilisateur/authentifier">
			<div class="center">
				<label class="bg-white text-dark" for="username">Nom d'utilisateur :</label> <input class="margin-auth" type="text" id="username" name="username">
			</div>
			<br>
			<div class="center">
				<label class="bg-white text-dark" for="password">Mot de passe :</label> <input class="margin-auth" type="password" id="password" name="password">
			</div>
			<br>
			<br>
			<div class="center">
			<button class="btn btn-secondary btn-lg" type="submit">S'authentifier</button>
			</div>
		</form>
	</div>	
</body>
</html>