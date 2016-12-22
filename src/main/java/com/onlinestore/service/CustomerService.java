package com.onlinestore.service;

import java.util.List;

import com.onlinestore.model.Customer;

public interface CustomerService {

	void addCustomer(Customer customer);

	Customer getCustomerById(int customerId);

	List<Customer> getAllCustomers();

	Customer getCustomerByUsername(String username);

	void deleteCustomer(Customer customer);

}
