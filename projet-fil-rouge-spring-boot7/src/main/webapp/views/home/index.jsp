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
    
    

<title>Accueil</title>
</head>
<body>
	<header>
		<c:import url="nav.jsp"></c:import>
	</header>
	<br>
	<br>
	<h2 class="title center">Bienvenue chez 7ème Arche <c:if test="${ sessionScope.utilisateur != null }"> ${ sessionScope.utilisateur.username }</c:if></h2>
	<br>
	<hr />
	<!-- 	<div class="parallax">
		<div class="space-around">
			<div class="articles column">
				<h4 class="backgroundwhite margin-top-articles center">Smartphone</h4>
				<img  src="images/Hand-smartphone-technology-calling.jpg" alt="Smartphone">
				<h4 class="backgroundwhite center">199€</h4>
			</div>
			<div class="articles column">
				<h4 class="backgroundwhite margin-top-articles center">Mouse</h4>
				<img  src="images/Apple_desktop_mouse_II_small.jpg" alt="Souris">
				<h4 class="backgroundwhite center">29€</h4>
			</div>
			<h4 class="backgroundwhite margin-top-articles">Article 3</h4>
			<h4 class="backgroundwhite margin-top-articles">Article 4</h4>
			<h4 class="backgroundwhite margin-top-articles">Article 5</h4>
		</div>
	</div> -->

	<div class="parallax spacea flex mainbottom mobilenoshow wrap">
		<!-- <h2 class=colorb>Projets</h2> -->
		
		<c:forEach items="${ produitsPage.content }" var="produit">
			<article class="mainarticle">	
			<%-- <c:url value="WEB-INF/article/article1.jsp" var="myURL"></c:url> --%>
			<a href="showProduit/${ produit.id }">
			<h5 class="center-text">${ produit.nom }</h5> 
			<img class="img" src="images/${ produit.lien_image }.jpg" alt="${ produit.nom }">	
			<p class="center-text">Stock : ${ produit.quantite_stock }</p>
			<p class="center-text">${ produit.prix_ttc }€${'    '}
			<a <c:if test="${ produit.quantite_stock > 0 }">href="/ajouterDansPanier/${ produit.id }"</c:if>><img src="/images/basket.jpg" alt="Basket"></a></p>
			</a>
			</article>
		</c:forEach>
			
		
		
		
<%-- 		<article class="mainarticle">
			<c:url value="WEB-INF/article/article1.jsp" var="myURL"></c:url>
			<a href="article?id=${ produits[0].id }">
				<h5 class="center-text">${ produits[0].nomArticle }</h5> <img class="img"
				src="images/Sans titre.jpg" alt="Smartphone">
				<p class="center-text">Stock : ${ produits[0].quantiteEnStock }</p>
				<p class="center-text">${ produits[0].prixUnitaire }€</p>
			</a>
		</article>
		<article class="mainarticle">
			<a href="article?id=${ produits[1].id }"><h5
					class="center-text">${ produits[1].nomArticle }</h5> <img class="img"
				src="images/Sans titre2.jpg" alt="Mouse">
				<p class="center-text">Stock : ${ produits[1].quantiteEnStock }</p>
				<p class="center-text">${ produits[1].prixUnitaire }€</p> </a>
		</article>
		<article class="mainarticle marginresponsive">
			<a href="article?id=${ produits[2].id }"><h5
					class="center-text">${ produits[2].nomArticle }</h5> <img class="img"
				src="images/Sans titre3.jpg" alt="Oscilloscope">
				<p class="center-text">Stock : ${ produits[2].quantiteEnStock }</p>
				<p class="center-text">${ produits[2].prixUnitaire }€</p> </a>
		</article>
		<article class="mainarticle marginresponsive">
			<a href="article?id=${ produits[3].id }"><h5
					class="center-text">${ produits[3].nomArticle }</h5> <img class="img"
				src="images/ecran.jpg" alt="Screen">
				<p class="center-text">Stock : ${ produits[3].quantiteEnStock }</p>
				<p class="fontsize center-text">${ produits[3].prixUnitaire }€</p></a>
		</article>
		<article class="mainarticle">
			<a href="article?id=${ produits[4].id }"><h5
					class="center-text">${ produits[4].nomArticle }</h5> <img class="img"
				src="images/cpu.jpg" alt="CPU">
				<p class="center-text">Stock : ${ produits[4].quantiteEnStock }</p>
				<p class="fontsize center-text">${ produits[4].prixUnitaire }€</p></a>
		</article> --%>
	</div>



	<hr />
	<ul class="pagination center">
		<c:if test="${ produitsPage.number > 0 }"><li class="page-item"><a class="page-link" href="/?pageNumber=${ produitsPage.number - 1 }&search=${ search }">Précédent</a></li></c:if>
		<c:if test="${ produitsPage.number < produitsPage.totalPages - 1 }"><li class="page-item"><a class="page-link" href="/?pageNumber=${ produitsPage.number + 1 }&search=${ search }">Suivant</a></li></c:if>
	</ul>
</body>
</html>