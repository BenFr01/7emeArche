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
<link href="https://fonts.googleapis.com/css?family=Roboto|VT323"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="../../css/file.css">
<title>Détails article</title>
</head>
<body>
	<header>
		<c:import url="../home/nav.jsp"></c:import>
	</header>
	<br>
	<br>
	<h2 class="center title">Détails article :</h2>
	<br>
	<hr>
	<div class="flex">
		<div class="parallax6 spacea flex mainbottom mobilenoshow wrap">
			<!-- <h2 class=colorb>Projets</h2> -->
			<article class="mainarticle">
				<%-- <c:url value="WEB-INF/article/article1.jsp" var="myURL"></c:url> --%>
					<h5 class="center-text">${ produit.nom }</h5> <img class="img"
					src="../images/${ produit.lien_image }.jpg" alt="${ produit.nom }">
					<p class="center-text">Stock : ${ produit.quantite_stock }</p>
					<p class="center-text">${ produit.prix_ttc }€${'    '}
					<a <c:if test="${ produit.quantite_stock > 0 }">href="/ajouterDansPanier/${ produit.id }"</c:if>><img src="/images/basket.jpg" alt="Basket"></a></p>
			</article>
		</div>
		<div class="width paddingshow">
			<h4>Auteur :</h4>
			<p>Auteur</p>
			<h4>Editeur :</h4>
			<p>Editeur</p>
			<h4>Description :</h4>
			<p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
			<h4>ISBN :</h4>
			<p>${ produit.isbn }</p>
			<h4>Format :</h4>
			<p>${ produit.format }</p>
			<h4>Nombre de pages : </h4>
			<p>${ produit.nb_pages }</p>
			<h4>Type :</h4>
			<p>${ produit.type }</p>
			<h4>ISSN :</h4>
			<p>${ produit.issn }</p>
			<h4>Date de dépot légal :</h4>
			<p>${ produit.date_depot_legal }</p>
		</div>
	</div>
</body>
</html>