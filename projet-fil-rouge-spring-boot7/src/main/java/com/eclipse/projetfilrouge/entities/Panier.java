package com.eclipse.projetfilrouge.entities;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import lombok.NoArgsConstructor;


/**
 * Cette classe permet de générer le panier et d'en afficher les articles ; Le prix total des articles va être calculé. 
 * 
 * 
 * @author Petit Corporation.
 * 
 * @since 1.0
 *
 */


@NoArgsConstructor
public class Panier {
	
	//A map is a key-value mapping, which means that every key is mapped to exactly one value and that we can use the key to retrieve the corresponding value from a map.
	//To maintain the order of elements, the linked hashmap modifies the Map.Entry class of HashMap by adding pointers to the next and previous entries
	private Map<Produit, Integer> lignes = new LinkedHashMap<>();
	
	/** Prix total du panier */
	private BigDecimal prixTotal = BigDecimal.ZERO;
	
	/** 
	 * Cette méthode ajoute des produits dans le panier avec une quantité par défault de 1.
	 * 
	 * @param p Le produit à ajouter.
	 * @param quantite La quantité du produit à ajouter, par défault 1.
	 * 
	 * */

	public void addProduitQuantite(Produit p, int quantite) {
		
		//To check if a key is present in the map, we can use the containsKey() method
		if (lignes.containsKey(p)) {
			
			//get : retrieve a value from the map by its key
			var quantiteActuelle = lignes.get(p);
			var nouvelleQuantite = quantiteActuelle + quantite;
			
			if (nouvelleQuantite > 0) {
				//put : add products to our HashMap
				lignes.put(p, nouvelleQuantite);
			}
			else {
				//remove : remove a key-value mapping from the HashMap
				lignes.remove(p);
			}
			
			
			// Maj du prix
			// prixTotal += p.getPrix_ttc() * quantite;
			
		    //BigDecimal prixProduit  = BigDecimal.ZERO;
		    
			var prixTtc = p.getPrix_ttc();
			
			BigDecimal prixProduit = prixTtc.multiply(BigDecimal.valueOf(quantite));
			prixTotal = prixTotal.add(prixProduit);
		}
		// Ajouter le produit au panier seulement si la quantité est positive
		else if (quantite > 0) {
			
			//put : add products to our HashMap
			lignes.put(p, quantite);
			
			// Maj du prix
			//prixTotal += p.getPrix_ttc() * quantite;
			
			var prixTtc = p.getPrix_ttc();
			
			BigDecimal prixProduit = prixTtc.multiply(BigDecimal.valueOf(quantite));
			prixTotal = prixTotal.add(prixProduit);
		}
	}
	
	/**
     * Retourne la liste panier (ArrayList).
     * 
     * @return La liste panier.
     * 
     */
	
	//Map Entry : this linked list defines the order of iteration, which by default is the order of insertion of elements (insertion-order).
	public List<Map.Entry<Produit, Integer>> getProduits() {
		return new ArrayList<>(lignes.entrySet());
	}
	
	/**
	 * Retourne le prix total sous format BigDecimal (2 chiffres après la virgule).
	 * 
	 * @return Le prix total;
	 */

	public BigDecimal getPrixTotal() {
		return prixTotal;
	}
	
}
