package com.eclipse.projetfilrouge.entities;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class LignePanier {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name="QUANTITE")
	private int quantite;
	
	@ManyToOne
	@JoinColumn(name="PRODUIT_ID")
	private Produit produit;

	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="COMMANDE_ID")
	private Commande commande;
}
