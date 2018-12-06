package com.controller;

import com.dao.CustomerDao;
import com.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private CustomerDao customerDao;

    @RequestMapping("/list")
    public String listCustomers(Model model){

        List<Customer> theCustomers = customerDao.getCustomers();

        model.addAttribute("customers", theCustomers);

        return "list-customers";
    }
}
