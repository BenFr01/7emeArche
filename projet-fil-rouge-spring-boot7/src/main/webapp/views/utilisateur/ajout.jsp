<%-- <%@ include file="../jstlLib.jsp" %> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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

<title>Ajout utilisateur</title>
</head>
<body>
	<header>
		<c:import url="../home/nav.jsp"></c:import>
	</header>
	<br>
	<br>
	<h2 class="center title">Page d'enregistrement utilisateur</h2>
	<br>
	<div class="parallax4">
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<form:form method="POST" modelAttribute="utilisateur" action="/utilisateur/ajout">
			<div class="center">
				<form:label class="bg-white text-dark" path="nom">Nom : </form:label>
				<form:input class="margin-auth" path="nom" />
			</div>
			<br>
			<div class="center">
				<form:label class="bg-white text-dark" path="prenom">Prénom : </form:label>
				<form:input class="margin-auth" path="prenom" />
			</div>
			<br>
			<div class="center">
				<form:label class="bg-white text-dark" path="username">Username : </form:label>
				<form:input class="margin-auth" path="username" />
			</div>
			<br>
			<div class="center">
				<form:label class="bg-white text-dark" path="password">Mot de passe : </form:label>
				<form:input class="margin-auth" path="password" />
			</div>
			<br>
			<br>
			<div class="center">
				<input class="btn btn-secondary btn-lg" type="submit" value="Ajouter">
			</div>
		</form:form>




		<%--		<form method="POST" action="/utilisateur/ajout" modelAttribute='utilisateur'>
			<div class="center">
				<label class="bg-white text-dark" for="nom">Nom :</label> <input class="margin-auth" type="text" id="nom" name="nom">
			</div>
			<br>
			<div class="center">
				<label class="bg-white text-dark" for="prenom">Prenom :</label> <input class="margin-auth" type="text" id="prenom" name="prenom">
			</div>
			<br>
			<div class="center">
				<label class="bg-white text-dark" for="username">Nom d'utilisateur :</label> <input class="margin-auth" type="text" id="username" name="username">
			</div>
			<br>
			<div class="center">
				<label class="bg-white text-dark" for="password">Mot de passe :</label> <input class="margin-auth" type="password" id="password" name="password">
			</div>
			<br>
			<div class="center">
				<label class="bg-white text-dark" for="isAdmin">Est admin ? :</label> <input class="margin-auth" type="checkbox" id="isAdmin" name="isAdmin">
			</div>
			<br>
			<br>
			<div class="center">
			<button class="btn btn-secondary btn-lg" type="submit">S'enregistrer</button>
			</div>
		</form> --%>
		
		
		
	</div>	
</body>
</html>