package com.qdu.dao.impl;

import com.qdu.dao.ProductDao;
import com.qdu.pojo.Product;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDaoImpl implements ProductDao {
//Hibernate中的一级缓存由Session管理，二级缓存由SessionFactory来管理
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

    @Override
    public List getProductByCategoryId(String CategoryId) {
         
        Query query = sessionFactory.getCurrentSession().createQuery("from  com.qdu.pojo.Product g where g.productDetil=?");
        query.setParameter(0, CategoryId);
        //list()执行查询,并以集合的形式返回结果集
        List<Product> list = query.list();
        System.out.println(list);
         return list;
    }

    @Override
    public List getProductimage(String Productimage) {
       Query query = sessionFactory.getCurrentSession().createQuery("from  com.qdu.pojo.Product g where g.productimage=?");
        query.setParameter(0, Productimage);
        //list()执行查询,并以集合的形式返回结果集
        List<Product> list = query.list();
        System.out.println(list);
         return list;
    }

  
}
