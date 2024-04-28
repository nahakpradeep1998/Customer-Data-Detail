package com.Customer_data.Service;

import java.util.ArrayList;

import java.util.List;
import java.util.function.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Customer_data.Entity.Customer;
import com.Customer_data.Repo.CustomerRepository;


@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepository;
	
	


	public List<Customer> getAllCustomerList() {
		ArrayList<Customer> customerlist = new ArrayList<>();
		customerRepository.findAll().forEach(todo -> customerlist.add(todo));

		return customerlist;
	}

	public Customer getCustomerById(Long id) {
		return customerRepository.findById(id).get();
	}

	
	
	/*
	 * public boolean updateCustomerList(Long id) { Customer customer =
	 * getCustomerById(id); customer.setEmail("Completed");
	 * 
	 * return saveOrUpdateCustomerList(customer); }
	 */
	  
	  public boolean saveOrUpdateCustomerList(Customer customer) { Customer
	  updatedObj = customerRepository.save(customer);
	 
	  if (getCustomerById(updatedObj.getId()) != null) { return true; }
	  
	  return false; }
	 
	public boolean deleteCustomerList(Long id) {
		customerRepository.deleteById(id);

		if (customerRepository.findById(id).isEmpty()) {
			return true;
		}

		return false;
	}

}
