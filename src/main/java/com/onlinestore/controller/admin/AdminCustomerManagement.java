package com.onlinestore.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.onlinestore.model.Customer;
import com.onlinestore.service.CustomerService;

@Controller
@RequestMapping("/admin")
public class AdminCustomerManagement {
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/customerManagement")
	public String getCustomers(Model model) {
		List<Customer> customers = customerService.getAllCustomers();
		model.addAttribute("customers", customers);
		return "customerManagement";
	}

	// get id from jsp file and use this id in method
	// PathVariable use id from jsp file
	@RequestMapping("/customerManagement/deleteCustomer/{id}")
	public String deleteCustomer(@PathVariable int id) {

		Customer customer = customerService.getCustomerById(id);

		customerService.deleteCustomer(customer);

		return "redirect:/admin/customerManagement";
	}

	@RequestMapping("/customerManagement/viewCustomerInfo/{customerId}")
	public String viewCustomerInfo(@PathVariable int customerId, Model model) {
		Customer customer = customerService.getCustomerById(customerId);
		model.addAttribute("customer", customer);
		return "viewCustomerInfo";
	}
}
