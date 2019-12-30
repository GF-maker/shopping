
package com.qdu.service;

import com.qdu.pojo.Product;
import java.util.List;

public interface ProductService {
    
    List getProductList();
    Product getProductById(String pid);
    void add(Product product);
    void update(Product product);
    void delete(String productId);
}
