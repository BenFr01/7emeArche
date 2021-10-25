package com.eclipse.projetfilrouge.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eclipse.projetfilrouge.entities.Commande;

public interface CommandeRepository extends JpaRepository<Commande, Long> {

}
