package com.eclipse.projetfilrouge.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

import com.eclipse.projetfilrouge.dao.UtilisateurRepository;
import com.eclipse.projetfilrouge.entities.Personne;
import com.eclipse.projetfilrouge.entities.Utilisateur;

@Controller
public class UtilisateurController {

	@Autowired
	private UtilisateurRepository utilisateurRepository;

	@GetMapping(value = "/utilisateur")
	public String goToLogin() {
		return "utilisateur/authentification";
	}

	@GetMapping(value = "/utilisateur/authentifier")
	public String authentifierUtilisateur(@RequestParam String username, @RequestParam String password,
			WebRequest request) {

		var utilisateur = utilisateurRepository.findByUsernameAndPassword(username, password);

		if (utilisateur != null) {
			request.setAttribute("utilisateur", utilisateur, WebRequest.SCOPE_SESSION);
			return "redirect:/";
		} else {
			return "utilisateur/erreur";
		}
	}

	@GetMapping(value = "/deconnection")
	public String deconnection(WebRequest request) {
		request.removeAttribute("utilisateur", WebRequest.SCOPE_SESSION);
		return "redirect:/";
	}

	@GetMapping(value = "/utilisateur/ajout")
	public String ajout(Model model) {
		model.addAttribute("utilisateur", new Utilisateur());
		return "utilisateur/ajout";
	}

		@PostMapping(value = "/utilisateur/ajout")
		public String addUtilisateur(@ModelAttribute("utilisateur") Utilisateur utilisateur, Model model) {
			utilisateurRepository.save(utilisateur);
			return "redirect:/";
		}
}
