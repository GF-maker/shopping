package com.qdu.dao.impl;

import com.qdu.dao.ProductDao;
import com.qdu.pojo.Product;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDaoImpl implements ProductDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(Product product) {
        sessionFactory.getCurrentSession().save(product);
    }

    @Override
    public void update(Product product) {
        sessionFactory.getCurrentSession().update(product);
    }

    @Override
    public void delete(String productId) {
        sessionFactory.getCurrentSession().delete(getProductById(productId));
    }

    @Override
    public Product getProductById(String productId) {
        return (Product)sessionFactory.getCurrentSession().get(Product.class, productId);
    }

    @Override
    public List getProducts() {
        return sessionFactory.getCurrentSession().createQuery("from Product").list();
    }
}
