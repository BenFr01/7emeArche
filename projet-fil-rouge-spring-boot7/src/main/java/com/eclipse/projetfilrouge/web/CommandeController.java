package com.eclipse.projetfilrouge.web;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.context.request.WebRequest;

import com.eclipse.projetfilrouge.dao.CommandeRepository;
import com.eclipse.projetfilrouge.dao.ProduitRepository;
import com.eclipse.projetfilrouge.entities.Commande;
import com.eclipse.projetfilrouge.entities.LignePanier;
import com.eclipse.projetfilrouge.entities.Panier;
import com.eclipse.projetfilrouge.entities.Utilisateur;

@Controller
public class CommandeController {

	@Autowired
	private ProduitRepository produitRepository;

	@Autowired
	private CommandeRepository commandeRepository;
	
	@GetMapping(value = "/commandeList")
	public String commandeList(Model model, WebRequest request) {
		
		var commandeList = commandeRepository.findAll();
		
		
		request.setAttribute("commandeList", commandeList, WebRequest.SCOPE_SESSION);
		
		return "commande/commandeList";
		
	}

	@GetMapping(value = "/commande")
	public String commande(Model model, WebRequest request) {
		
		Panier panier = (Panier) request.getAttribute("panier", WebRequest.SCOPE_SESSION);
		Utilisateur client = (Utilisateur)request.getAttribute("utilisateur", WebRequest.SCOPE_SESSION);
		
		
		if (panier != null) {
			
			var commande = new Commande();
			
			commande.setDate(new Date(System.currentTimeMillis()));
			commande.setPrixTotal(panier.getPrixTotal());
			commande.setClient(client);
			commande.setArticles(new ArrayList<>());
			
			panier.getProduits().forEach(lignePanier -> {
				var produit = lignePanier.getKey();
				var quantite = lignePanier.getValue();
				
				var lignePanierCommande = new LignePanier();
				lignePanierCommande.setProduit(produit);
				lignePanierCommande.setQuantite(quantite);
				lignePanierCommande.setCommande(commande);
				
				commande.getArticles().add(lignePanierCommande);
				
				produit.setQuantite_stock(produit.getQuantite_stock() - quantite);
				
				produitRepository.save(produit);
			});
			
			commandeRepository.save(commande);
		}
		
		request.removeAttribute("panier", WebRequest.SCOPE_SESSION);
		
		return "redirect:/";
	}
}
