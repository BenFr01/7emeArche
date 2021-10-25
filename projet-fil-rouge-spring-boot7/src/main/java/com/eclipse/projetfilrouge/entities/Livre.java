package com.eclipse.projetfilrouge.entities;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class Livre extends Produit {
	@Column(name = "ISBN", length = 25)
	private String isbn;
	@Column(name = "FORMAT", length = 25)
	private String format;
	@Column(name = "NB_PAGES")
	private int nb_pages;
	@Column(name = "ISSN", length = 25)
	private String issn;
	@Temporal(TemporalType.DATE)
	private Date date_depot_legal;

	public Livre() {
		super();
	}

	public Livre(String nom, String description, String lien_image, BigDecimal prix_ht, BigDecimal prix_ttc, int quantite_stock,
			String type, String isbn, String format, int nb_pages, String issn,
			Date date_depot_legal) {
		super(nom, description, lien_image, prix_ht, prix_ttc, quantite_stock, type);
		this.isbn = isbn;
		this.format = format;
		this.nb_pages = nb_pages;
		this.issn = issn;
		this.date_depot_legal = date_depot_legal;
	}

}