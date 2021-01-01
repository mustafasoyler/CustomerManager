package net.codejava.customers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class CustomerService {

    @Autowired
    private CustomerRepository repository;

    public List<Customer> listAll(){
        return (List<Customer>) repository.findAll();
    }
    public void save(Customer customer){
        repository.save(customer);
    }
    public Customer get(long id){
        Optional<Customer> result =repository.findById(id);
        return result.get();
    }
    public void delete(long id){
        repository.deleteById(id);
    }

}
