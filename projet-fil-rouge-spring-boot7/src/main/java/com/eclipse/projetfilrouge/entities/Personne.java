package com.eclipse.projetfilrouge.entities;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@MappedSuperclass
@Data
@RequiredArgsConstructor
@NoArgsConstructor
public abstract class Personne {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	protected Long id;
	
	
	/**
	* Nom de la personne.
	* 
	* 
	*/
	@NonNull
	@Column(name="NOM",length = 50)
	protected String nom;

	@NonNull
	@Column(name="PRENOM",length = 50)
	protected String prenom;
	
}
