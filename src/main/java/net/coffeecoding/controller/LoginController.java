package net.coffeecoding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {

	@GetMapping("/showLoginPage")
	public String showMyLoginPage() {
		
		return "login-form";
		
	}
	
	// add request mapping for /access-denied
	
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		
		return "access-denied";
		
	}

	@GetMapping("/error")
	public String showErrorPage() {
		return "error-page";
	}
	
}









