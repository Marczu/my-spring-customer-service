package com.dao;

import com.entity.Customer;

import java.util.List;

public interface CustomerDao {

    public List<Customer> getCustomers();

    void saveCustomer(Customer customer);

    Customer getCustomerById(int theId);

    void deleteCustomer(int theId);
}
