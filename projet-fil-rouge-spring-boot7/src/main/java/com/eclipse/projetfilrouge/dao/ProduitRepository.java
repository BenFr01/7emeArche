package com.eclipse.projetfilrouge.dao;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.eclipse.projetfilrouge.entities.Produit;

//PagingAndSorting : We have chosen to extend JpaRepository, as it extends PagingAndSortingRepository too.
public interface ProduitRepository extends JpaRepository<Produit, Long> {

	Page<Produit> findByNomContainingIgnoreCase(String nom, Pageable pageable);
	
}
