package com.onlinestore.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.onlinestore.model.Product;
import com.onlinestore.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/productList/all")
	public String getProducts(Model model) {
		List<Product> products = productService.getProductList();
		// use products in view to use productList
		model.addAttribute("products", products);
		return "productList";
	}

	@RequestMapping("/viewProduct/{productId}")
	// @PathVariable, ����������� �� ��, ��� ������ �������� ���������� ��
	// �������� ������ ��� ���������� �� ����������� ������ ��������� � ���, ���
	// ��� ���������� � @RequestMapping. ������� ����������� @PathVariable(value
	// = "id"). ��� ��������� ��������� ������� ������������ ���������
	// ���������� � ����� �������� ������, ��������, @RequestMapping(value =
	// "users/{userId}/pages/{pageId}").
	public String viewProduct(@PathVariable(value = "productId") int productId, Model model) throws IOException {
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);

		return "viewProduct";
	}

	@RequestMapping("/productList")
	public String getProductByCategory(@RequestParam("searchCondition") String searchCondition, Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);
		model.addAttribute("searchCondition", searchCondition);

		return "productList";
	}

}
