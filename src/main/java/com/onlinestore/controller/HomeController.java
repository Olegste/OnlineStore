package com.onlinestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "redirect:/home";
	}

	@RequestMapping("/home")
	public String homeJsp() {
		return "home";
	}

	@RequestMapping("/login")
	public String loginPage(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		if (error != null) {
			model.addAttribute("error", "Invalid username or password");
		}
		if (logout != null) {
			model.addAttribute("msg", "You have been logout succesfully");
		}
		return "login";
	}

	@RequestMapping("/about")
	public String aboutPage() {
		return "about";
	}

}
