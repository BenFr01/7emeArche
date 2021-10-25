package com.eclipse.projetfilrouge.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

import com.eclipse.projetfilrouge.dao.ProduitRepository;
import com.eclipse.projetfilrouge.entities.Panier;

@Controller
public class PanierController {
	
	@Autowired
	private ProduitRepository produitRepository;
	
	@GetMapping(value = "/afficherPanier")
	public String showPanier(Model model, WebRequest request) {
		Panier panier = (Panier) request.getAttribute("panier", WebRequest.SCOPE_SESSION);
		System.out.println(panier);
		model.addAttribute("panier", panier);
		return "panier/panier";
	}

	@GetMapping(value = "/ajouterDansPanier/{id}")
	public String addArticle(@PathVariable long id, @RequestParam(defaultValue = "1") int quantite, Model model, WebRequest request) {
		Panier panier = (Panier) request.getAttribute("panier", WebRequest.SCOPE_SESSION);
		if (panier == null) {
			panier = new Panier();
		}
		var produit = produitRepository.findById(id).orElse(null);
		panier.addProduitQuantite(produit, quantite);
		request.setAttribute("panier", panier, WebRequest.SCOPE_SESSION);
		return "redirect:/afficherPanier";
	}
}
