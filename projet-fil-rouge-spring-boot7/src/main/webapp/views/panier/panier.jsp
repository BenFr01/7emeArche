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
<link rel="stylesheet" type="text/css" href="css/file.css">   

<title>Panier :</title>
</head>
<body>
	<header>
		<c:import url="../home/nav.jsp"></c:import>
	</header>
	<br>
	<br>
	<h1 class="center title">Voici votre panier :</h1>
	<hr />
	<div class="parallax3 spacea flex mainbottom mobilenoshow wrap">
	<c:forEach items="${ panier.getProduits() }" var="ligne">
	<a href="showProduit/${ ligne.key.id }">
	<article class="panierarticle">
		<h5 class="center-text">${ligne.key.nom} : ${ ligne.value }</h5>
		<img class="img" src="images/${ ligne.key.lien_image }.jpg" alt="${ produit.nom }">
		<a <c:if test="${ ligne.value < ligne.key.quantite_stock }">href="/ajouterDansPanier/${ ligne.key.id }"</c:if>><p class="center">Prix unitaire : ${ ligne.key.prix_ttc }&euro;</p>
		
		<div class="center">
		<i class="fas fa-plus fa-2x"></i></a>
		${'    '}
		<a href="/ajouterDansPanier/${ ligne.key.id }?quantite=-1"><i class="fas fa-minus fa-2x"></a></i>
	</a></div>

	</article>
	</c:forEach>

	</div>
	
	<hr />
	

	<div class="center">
		<h3>Total panier : ${panier.getPrixTotal()} &euro;</h3>
	</div>
	<br>
	<div class="center">
		<a class="dark" href="/commande"><i class="fas fa-check-circle fa-2x">${'    '}Commander</i></a>
	</div>
</body>
</html>