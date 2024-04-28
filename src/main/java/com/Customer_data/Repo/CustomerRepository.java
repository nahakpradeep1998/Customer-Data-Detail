package com.Customer_data.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Customer_data.Entity.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
	

	

}
