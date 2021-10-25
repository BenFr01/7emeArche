package com.eclipse.projetfilrouge.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

import com.eclipse.projetfilrouge.dao.UtilisateurRepository;

@Controller
public class UtilisateurController {

	@Autowired
	private UtilisateurRepository utilisateurRepository;
	
	@GetMapping(value = "/utilisateur")
	public String goToLogin() {
		return "utilisateur/authentification";
	}
	
	@GetMapping(value = "/utilisateur/authentifier")
	public String authentifierUtilisateur(@RequestParam String username, @RequestParam String password, WebRequest request) {
		
		var utilisateur = utilisateurRepository.findByUsernameAndPassword(username, password);
		
		if (utilisateur != null) {
			request.setAttribute("utilisateur", utilisateur, WebRequest.SCOPE_SESSION);
			return "redirect:/";
		}
		else {
			return "utilisateur/erreur";
		}
	}

	@GetMapping(value = "/deconnection")
	public String deconnection(WebRequest request) {
		request.removeAttribute("utilisateur", WebRequest.SCOPE_SESSION);
		return "redirect:/";
	}
	
}
