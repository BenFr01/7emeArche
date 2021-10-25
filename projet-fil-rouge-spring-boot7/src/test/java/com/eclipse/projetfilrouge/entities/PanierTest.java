package com.eclipse.projetfilrouge.entities;

import java.math.BigDecimal;

import org.assertj.core.api.Assert;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.*;
public class PanierTest {

	@Test
	public void testAjoutPanier () {
		Panier panier = new Panier();
		Produit p = new Produit("produit1", "", "", BigDecimal.valueOf(1.10), BigDecimal.valueOf(1.50), 1, "");
		panier.addProduitQuantite(p, 1);
		
		assertThat(panier.getPrixTotal()).isEqualByComparingTo(BigDecimal.valueOf(1.50));
	}
	
}
