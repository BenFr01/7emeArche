<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav class="navbar navbar-expand-lg navbar-dark back-dark">
  <a class="navbar-brand" href="../">7&egrave;me Arche</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse margin-nav" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="../">Accueil <span class="sr-only"></span></a>
      </li>
      
      <!-- <c:if test="${ sessionScope.utilisateur != null && sessionScope.utilisateur.isAdmin() }">
        <li class="nav-item">
        <a class="nav-link" href="gestionvendeur">Responsable</a>
      	</li>
      </c:if> -->
      
      <!-- <c:if test="${ sessionScope.utilisateur != null && !sessionScope.utilisateur.isAdmin() }">
      	<li class="nav-item">
		<a class="nav-link" href="#">Panier</a>
      	</li>
      </c:if> -->

	  <c:if test="${ sessionScope.utilisateur != null }">
        <li class="nav-item">
       		<a class="nav-link" href="/commandeList">Commandes</a>
        </li>
      </c:if>
      
	  <c:if test="${ sessionScope.utilisateur == null }">
      	<li class="nav-item">
        	<a class="nav-link" href="/utilisateur">Se connecter</a>
      	</li>
      </c:if>
      
	  <c:if test="${ sessionScope.utilisateur == null }">
	  	<li class="nav-item">
        <a class="nav-link" href="/utilisateur/ajout">S'enregistrer</a>
      	</li>
      </c:if>
      
      <c:if test="${ sessionScope.utilisateur != null }">
	  	<li class="nav-item">
        <a class="nav-link" href="edit">Modifier compte</a>
      	</li>
      </c:if>
      
      <c:if test="${ sessionScope.utilisateur != null }">
	  	<li class="nav-item">
        <a class="nav-link" href="delete">Supprimer compte</a>
      	</li>
      </c:if>
      
      <c:if test="${ sessionScope.utilisateur != null }">
	  	<li class="flex-end nav-item">
		<a class="nav-link" href="deconnection">Se d&eacute;connecter</a>
      	</li>
	  </c:if>
	  
      <form class="d-flex justify-content-end" action="/" method="GET">
        <input class="form-control me-2" name="search" type="search" placeholder="Tapez votre recherche" aria-label="Search" value="${search}">
        <button class="btn btn-secondary" type="submit">Rechercher</button>
      </form>
      
      
      <li class="flex-end justify-content-end right-text">
        <a class="nav-link" href="/afficherPanier"><img src="../images/basket2.jpg" alt="Basket"><span class="sr-only"></span></a>
      </li>
      
      
    </ul>
  </div>
</nav>