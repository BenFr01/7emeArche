package com.eclipse.projetfilrouge.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eclipse.projetfilrouge.entities.Utilisateur;

public interface UtilisateurRepository extends JpaRepository<Utilisateur, Long> {

	Utilisateur findByUsernameAndPassword(String username, String password);
	
}
