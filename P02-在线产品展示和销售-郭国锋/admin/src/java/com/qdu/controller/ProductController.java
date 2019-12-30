
package com.qdu.controller;

import com.qdu.pojo.Product;
import com.qdu.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/products")
public class ProductController {
    
    @Autowired
    private ProductService productService;
    
    @RequestMapping("/showAllProducts")
    public String showAllProducts(Model model){
        model.addAttribute("productList",productService.getProductList());
        return "productList";
    }
    
    @RequestMapping("/toAddProduct")
    public String toAddProduct(){
        return "addProduct"; // 跳转到addProduct页面
    }
    
    @RequestMapping("/addProduct")
    public String addProduct(Product newProduct,Model model){
        productService.add(newProduct);
        model.addAttribute("productList",productService.getProductList());
        return "productList"; 
    }
    
    //删除商品重定向
    
    @RequestMapping("/deleteProduct")
//    @ResponseBody
    public String deleteProduct(String pid){
        productService.delete(pid);  
         return "redirect:/products/showAllProducts";
    }
    
    @RequestMapping("/viewProduct")
    public String viewProduct(String pid,Model model){
        Product p=productService.getProductById(pid);     
        model.addAttribute("product", p);
        return "productInfo"; 
    }
    
    @RequestMapping("/toEditProduct")
    public String toEditProduct(String pid,Model model){
        Product p=productService.getProductById(pid);
        model.addAttribute("p", p);
        return "editProduct"; //跳转到editProduct页面编辑产品
    }
    
    @RequestMapping("/editProduct")
    public String editProduct(Product updatedProduct,Model model){
        productService.update(updatedProduct);
        model.addAttribute("productList",productService.getProductList());
        return "productList";
    }
    
}
