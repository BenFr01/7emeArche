package com.eclipse.projetfilrouge.entities;

import javax.persistence.Column;
import javax.persistence.Entity;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class Utilisateur extends Personne {

	@Column(name="USERNAME", length = 25, unique = true)
	private String username;

	@Column(name="PASSWORD", length = 25)
	private String password;
	
	@Column(name="IS_ADMIN")
	private boolean isAdmin;

	public Utilisateur(String nom, String prenom, String username, String password, boolean isAdmin) {
		super(nom, prenom);
		this.username = username;
		this.password = password;
		this.isAdmin = isAdmin;
	}
	
}
