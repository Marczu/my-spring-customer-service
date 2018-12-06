package com.dao;

import com.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDao {

    @Autowired
    private SessionFactory sessionFactory;


    public List<Customer> getCustomers() {

        //get current hibernate session
        Session currentSession = sessionFactory.getCurrentSession();

        //create query
        Query<Customer> theQuery = currentSession.createQuery("from Customer order by lastName", Customer.class);

        List<Customer> customers = theQuery.getResultList();

        return customers;
    }

    public void saveCustomer(Customer customer) {
        Session currentSession = sessionFactory.getCurrentSession();

        currentSession.saveOrUpdate(customer);
    }

    public Customer getCustomerById(int theId) {
        Session currentSession = sessionFactory.getCurrentSession();

        Customer customer = currentSession.get(Customer.class, theId );
        return customer;
    }

}
