package com.eclipse.projetfilrouge.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.eclipse.projetfilrouge.entities.Livre;

public interface LivreRepository extends JpaRepository<Livre, Long> {

}
