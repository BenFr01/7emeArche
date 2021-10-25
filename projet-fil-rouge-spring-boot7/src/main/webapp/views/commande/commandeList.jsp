<%-- <%@ include file="../jstlLib.jsp" %> --%>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
					<!DOCTYPE html>
					<html>

					<head>
						<meta charset="UTF-8">
						<link rel="stylesheet"
							href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
						<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
						<script
							src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
						<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
						<script src="https://kit.fontawesome.com/a6c393237d.js"></script>
						<link href="https://fonts.googleapis.com/css?family=Roboto|VT323" rel="stylesheet">
						<link rel="stylesheet" type="text/css" href="css/file.css">

						<title>Commande</title>
					</head>

					<body>
						<header>
							<c:import url="../home/nav.jsp"></c:import>
						</header>
						<br>
						<br>
						<h2 class="center title">Historique des commandes :</h2>
						<hr />
						<div class="parallax8 mainbottom mobilenoshow">
							
							<c:forEach items="${commandeList}" var="commande">
								<article class="commande">
								<h4 class="center title">Le <fmt:formatDate type = "both" value="${ commande.getDate() }"/> : Commande n° ${ commande.getId() } - Total : ${ commande.getPrixTotal() } &euro;</h4>
								<br>
								<h4 class="center title">Client : ${ commande.client.username }</h4>
								<br>
								<h5 class="center title">Articles commandés : </h5>
								<c:forEach items="${ commande.getArticles() }" var="ligne"><a href="showProduit/${ ligne.produit.id }">
										<h5 class="center-text">${ligne.produit.nom} : ${ ligne.quantite }</h5>
									</a>
									<br>
								
								</c:forEach>
								</article>
							</c:forEach>

						</div>

						<hr />
					</body>

					</html>