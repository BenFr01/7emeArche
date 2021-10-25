package com.eclipse.projetfilrouge;

import java.math.BigDecimal;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.eclipse.projetfilrouge.dao.LivreRepository;
import com.eclipse.projetfilrouge.dao.UtilisateurRepository;
import com.eclipse.projetfilrouge.entities.Livre;
import com.eclipse.projetfilrouge.entities.Utilisateur;


// We're using Spring's @SpringBootApplication annotation on our main class to enable auto-configuration. When we run this Spring Boot application, it will automatically scan the components in the current package and its sub-packages. Thus it will register them in Spring's Application Context, and allow us to inject beans using @Autowired.
// This class also implements Spring's CommandLineRunner interface. 
// CommandLineRunner is a simple Spring Boot interface with a run method. 
// Spring Boot will automatically call the run method of all beans implementing this interface after the application context has been loaded.
@SpringBootApplication
public class ProjetFilRougeSpringBootApplication implements CommandLineRunner {
	
	//After enabling annotation injection, we can use autowiring on properties, setters, and constructors.
	//This eliminates the need for getters and setters.
	//No need of "new"
	@Autowired
	private LivreRepository livreRepository;

	@Autowired
	private UtilisateurRepository utilisateurRepository;

	public static void main(String[] args) {
		SpringApplication.run(ProjetFilRougeSpringBootApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		// new Livre(nom, description, lien_image, prix_ht, prix_ttc, quantite_stock, type, isbn, titre_livre, format, nb_pages, issn, date_depot_legal)
		livreRepository.save(new Livre("Tout sur le cinéma","description_produit1","cine11",BigDecimal.valueOf(3.99),BigDecimal.valueOf(4.99),0,"poche","isbn457","format1",99,"issn4512",new Date()));
		livreRepository.save(new Livre("La grammaire du cinéma","description_produit2","cine22",BigDecimal.valueOf(45.99),BigDecimal.valueOf(46.99),8,"broche","isbn48757","format2",994,"issn455712",new Date()));
		livreRepository.save(new Livre("Leçons de cinéma","description_produit3","cine33",BigDecimal.valueOf(36.99),BigDecimal.valueOf(37.99),5,"poche","isbn4784457","format3",919,"issn99712",new Date()));
		livreRepository.save(new Livre("300 anecdotes de tournage","description_produit4","cine77",BigDecimal.valueOf(77.99),BigDecimal.valueOf(78.99),11,"poche","isbn4987","format4",399,"issn123",new Date()));
		livreRepository.save(new Livre("Faire un film","description_produit4","cine88",BigDecimal.valueOf(77.99),BigDecimal.valueOf(35.99),4,"poche","isbn4987","format4",399,"issn123",new Date()));
		livreRepository.save(new Livre("Tout sur le cinéma","description_produit1","cine11",BigDecimal.valueOf(3.99),BigDecimal.valueOf(4.99),9,"poche","isbn457","format1",99,"issn4512",new Date()));
		// livreRepository.save(new Livre("647478","Titre du livre2","Format du livre2",9943,"ml8325issn",new Date()));
		// livreRepository.save(new Livre("945946","Titre du livre3","Format du livre3","Http://www.image3.com",210,"gt84567issn",new Date()));
		// livreRepository.save(new Livre("68497","Titre du livre4","Format du livre4","Http://www.image4.com",2100,"gt84877issn",new Date()));
		
		livreRepository.findAll().forEach(System.out::println);
		
		utilisateurRepository.save(new Utilisateur("Admin", "Admin", "admin", "adminpassword", true));
		utilisateurRepository.save(new Utilisateur("User", "User", "John Doe", "password", false));
		
		
	}

}
