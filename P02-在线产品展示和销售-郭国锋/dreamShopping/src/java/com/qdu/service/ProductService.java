
package com.qdu.service;

import com.qdu.pojo.Product;
import java.util.List;

public interface ProductService {
    
    List getProductList();
   List getProductByCategoryId(String CategoryId);
   
   Product getProductById(String pid);
List getProductimage(String Productimage);
    
 
 void add(Product product);
    void update(Product product);
    void delete(String productId);
    
     
}
