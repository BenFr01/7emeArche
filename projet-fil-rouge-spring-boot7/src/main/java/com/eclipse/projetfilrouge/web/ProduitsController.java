package com.eclipse.projetfilrouge.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import com.eclipse.projetfilrouge.dao.ProduitRepository;
import com.eclipse.projetfilrouge.entities.Produit;


/**
 * Cette classe permet de générer la page d'accueil ainsi que la fonction recherche des articles ; Les articles présentés sont au maximum de 4 par pages.  
 * 
 * 
 * @author Petit Corporation.
 * 
 * @since 1.0
 *
 */


@Controller
public class ProduitsController {
	
	@Autowired
	private ProduitRepository produitRepository;
	
	
	/** 
	 * Cette méthode génère la page d'accueil avec un maximum de 4 produits par page ; Elle permet aussi d'effectuer une recherche sur les titres des produits.
	 * 
	 * @param model Le model.
	 * @param pageNumber Le nombre de pages par défault à 0.
	 * @param search La string recherchée (recherche sur le titre de l'article).
	 * @return page index du site.
	 * 
	 * */
	
	@GetMapping("")
	public String produits(Model model,
			@RequestParam(defaultValue = "0") int pageNumber,
			@RequestParam(required = false) String search) {
		
		//PageRequest object is an implementation of the Pageable interface
		var pageable = PageRequest.of(pageNumber, 4);
		
		Page<Produit> page;
		
		//If there is no search :
		if (ObjectUtils.isEmpty(search)) {
			//The findAll(Pageable pageable) method by default returns a Page<Produit> object. A Page<Produit> instance, in addition to having the list of Products, also knows about the total number of available pages.
			page = produitRepository.findAll(pageable);
		}
		else {
			//Search function : 
			page = produitRepository.findByNomContainingIgnoreCase(search, pageable);
		}
		
		model.addAttribute("produitsPage", page);
		model.addAttribute("search", search);
		
		return "home/index";
	}
	
	/** 
	 * Cette méthode génère la page de description d'un article.
	 * 
	 * @param id L'id du produit dont on veut la description.
	 * @param model Le model.
	 * @return La page de description de l'article selectionné.
	 * 
	 * */
	
	 @GetMapping("showProduit/{id}")
	 public String showProduit(@PathVariable Long id, Model model) {
		model.addAttribute("produit", produitRepository.findById(id).orElse(null));
		return "produit/showProduit";
	 }
}
 