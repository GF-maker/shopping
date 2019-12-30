
package com.qdu.dao;

import com.qdu.pojo.Product;
import java.util.List;

public interface ProductDao {
    
    void insert(Product product);
    void update(Product product);
    void delete(String id);
    
    Product getProductById(String id);
    List getProducts();
 
    List getProductimage(String Productimage);
  
  List getProductByCategoryId(String CategoryId);
    
}
