package net.codejava.customer.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalEntityManagerFactoryBean;


import javax.persistence.EntityManagerFactory;

@Configuration
@EnableJpaRepositories(basePackages = {"net.codejava.customers"})
public class JpaConfig {

    @Bean
        public LocalEntityManagerFactoryBean entityManagerFactory(){
        LocalEntityManagerFactoryBean factoryBean=new LocalEntityManagerFactoryBean();
        factoryBean.setPersistenceUnitName("SalesDB");
        return factoryBean;
    }

    @Bean
    public JpaTransactionManager transactionManager(EntityManagerFactory entityManagerFactory){
        JpaTransactionManager jpaTransactionManager=new JpaTransactionManager();
        jpaTransactionManager.setEntityManagerFactory(entityManagerFactory);
        return  jpaTransactionManager;
    }

}
