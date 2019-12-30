package com.qdu.service.impl;

import com.qdu.dao.ProductDao;
import com.qdu.pojo.Product;
import com.qdu.service.ProductService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDao productDao;
    
    @Override
    public List getProductList() {
        return productDao.getProducts();
    }

    @Override
    public Product getProductById(String pid) {
        return productDao.getProductById(pid);
    }

    @Override
    public void add(Product product) {
        productDao.insert(product);
    }

    @Override
    public void update(Product product) {
        productDao.update(product);
    }

    @Override
    public void delete(String productId) {
        productDao.delete(productId);
    }
}
