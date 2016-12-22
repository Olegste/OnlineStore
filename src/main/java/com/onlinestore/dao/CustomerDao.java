package com.onlinestore.dao;

import java.util.List;

import com.onlinestore.model.Customer;

public interface CustomerDao {

	void addCustomer(Customer customer);

	Customer getCustomerById(int customerId);

	List<Customer> getAllCustomers();

	Customer getCustomerByUsername(String username);

	void deleteCustomer(Customer customer);

}
