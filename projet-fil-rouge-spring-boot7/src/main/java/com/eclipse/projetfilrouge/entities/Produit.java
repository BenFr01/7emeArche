package com.eclipse.projetfilrouge.entities;


import java.math.BigDecimal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Produit {
	  @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	  @Column(name="NOM",length = 25)
	private String nom;
	  @Column(name="DESCRIPTION",length = 400)
	private String description;
	  @Column(name="LIEN_IMAGE",length = 70)
	private String lien_image;
	  @Column(name="PRIX_HT")
	private BigDecimal prix_ht;
	  @Column(name="PRIX_TTC")
	private BigDecimal prix_ttc;
	  @Column(name="QUANTITE_STOCK")
	private int quantite_stock;
	  @Column(name="TYPE",length = 25)
	private String type;
	public Produit() {
		super();
	}
	public Produit(String nom, String description, String lien_image, BigDecimal prix_ht, BigDecimal prix_ttc, int quantite_stock,
			String type) {
		super();
		this.nom = nom;
		this.description = description;
		this.lien_image = lien_image;
		this.prix_ht = prix_ht;
		this.prix_ttc = prix_ttc;
		this.quantite_stock = quantite_stock;
		this.type = type;
	}
	  
}
