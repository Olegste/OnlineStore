package com.onlinestore.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onlinestore.model.Product;
import com.onlinestore.service.ProductService;

@Controller
@RequestMapping("/admin")
public class AdminHome {
	@Autowired
	private ProductService productService;

	@RequestMapping("/")
	public String adminPage() {
		return "admin";
	}

	@RequestMapping("/productInventory")
	public String productInventoryPage(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		return "productInventory";
	}
	//
	// @RequestMapping("/customer")
	// public String customerManagement() {
	//
	// return "customerManagement";
	// }

}
