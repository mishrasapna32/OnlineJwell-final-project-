package com.jwellStore.dao;

import java.util.List;

import com.jwellStore.model.Customer;

public interface CustomerDao {
	

	    void addCustomer(Customer customer);

	    Customer getCustomerById(int customerId);

	    List<Customer> getAllCustomers();

	    Customer getCustomerByUsername(String username);
	

}
