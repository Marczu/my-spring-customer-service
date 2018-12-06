package com.service;

import com.dao.CustomerDao;
import com.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;


    public List<Customer> getCustomers() {
        return customerDao.getCustomers();
    }

    public void saveCustomer(Customer customer) {
        customerDao.saveCustomer(customer);
    }
}
