package com.onlinestore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.onlinestore.model.BillingAddress;
import com.onlinestore.model.Customer;
import com.onlinestore.model.ShippingAddress;
import com.onlinestore.service.CustomerService;

/*This controller has a GET and a POST method, both mapped to /.
e showForm method returns the form template.
It includes a registerCustomer in its method signature so the template can associate form attributes with a PersonForm.
The registerCustomerPost method accepts two arguments:
A person object marked up with @Valid to gather the attributes filled out in the form you’re about to build.
A bindingResult object so you can test for and retrieve validation errors.
You can retrieve all the attributes from the form bound to the PersonForm object. 
In the code, you test for errors, and if so, send the user back to the original form template.
In that situation, all the error attributes are displayed.
If all of the person’s attribute are valid, then it redirects the browser to the final results template. */

@Controller

public class RegisterController {

	@Autowired
	CustomerService customerService;

	@RequestMapping("/register")
	public String registerCustomer(Model model) {
		Customer customer = new Customer();
		BillingAddress billingAddress = new BillingAddress();
		ShippingAddress shippingAddress = new ShippingAddress();
		customer.setBillingAddress(billingAddress);
		customer.setShippingAddress(shippingAddress);

		model.addAttribute("customer", customer);

		return "registerCustomer";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerCustomerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result,
			Model model) {

		if (result.hasErrors()) {
			return "registerCustomer";
		}

		List<Customer> customerList = customerService.getAllCustomers();

		for (int i = 0; i < customerList.size(); i++) {
			if (customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())) {
				model.addAttribute("emailMsg", "Email already exists");

				return "registerCustomer";
			}

			if (customer.getUsername().equals(customerList.get(i).getUsername())) {
				model.addAttribute("usernameMsg", "Username already exists");

				return "registerCustomer";
			}
		}

		customer.setEnabled(true);
		customerService.addCustomer(customer);

		return "registerCustomerSuccess";

	}
}
