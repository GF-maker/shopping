
package com.qdu.controller;

import com.qdu.pojo.Product;
import com.qdu.service.ProductService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

@Controller
@RequestMapping("/products")
public class ProductController {
      @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    private ProductService productService;
    //首页请求
    @RequestMapping("/index")
    public String index(){      
        return "index"; 
    }
    //注册请求
     @RequestMapping("/regist")
    public String regist(){       
        return "regist"; 
    }
    //购物车请求
     @RequestMapping("/cart")
    public String cart(){     
        return "cart"; 
    }
    //登录请求
     @RequestMapping("/login")
    public String login(){       
        return "login"; 
    }
    //订单请求
      @RequestMapping("/dingdan")
    public String dingdan(){       
        return "dingdan"; 
    }
    
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
    
    @RequestMapping("/deleteProduct")
    @ResponseBody
    public void deleteProduct(String pid){
        productService.delete(pid);       
    }
    //产品详情页请求
    @RequestMapping("/viewProduct")
    public String viewProduct(String pid,Model model){
        Product p=productService.getProductById(pid);     
        model.addAttribute("product", p);
        return "detail"; 
    }
    
    
    //搜索
        @RequestMapping("/sousuo")
    public String sousuo(String productimage,Model model){
      List p=(List) productService.getProductimage(productimage);
        model.addAttribute("productfenleilist", p);
        return "good_list";
    }
    
    
    
   //购物车请求
   @RequestMapping("/cartProduct")
    public String cartProduct(HttpServletRequest req,Model model){
          String pid = req.getParameter("pid");
        String pname = req.getParameter("pname");
        //byte,short,int,long,float,double,boolean,char Byte,Short,Integer,Long,Float,Double,Boolean,Character 封装器类提供了一些方法用于将字符串转换成对应的数据类型 单价和数量后续会被用于计算，所以需要转换类型      
        int pprice = Integer.parseInt(req.getParameter("pprice")); //String->int
        String pdetil = req.getParameter("pdetil");
        String punit = req.getParameter("punit");
        int qty = Integer.parseInt(req.getParameter("qty")); //String->int       
        String pimage = req.getParameter("pimage");
        String pdiscrib = req.getParameter("pdiscrib");
//将产品的5项信息封装成一个Product对象，方便操作
        Product goods = new Product(pid, pname, pprice, pdetil, punit, qty, pimage, pdiscrib);

        System.out.println(pid);
        System.out.println(pname);
    

        HttpSession se = req.getSession();
        List<Product> cartList = new ArrayList();
        cartList.add(goods);
      
        se.setAttribute("pprice", pprice);
        se.setAttribute("qty", qty);
        se.setAttribute("list", cartList);

    
        
        
        
       
        return "cart"; 
    }
    
    
    
    @RequestMapping("/toEditProduct")
    public String toEditProduct(String pid,Model model){
        Product p=productService.getProductById(pid);
        model.addAttribute("p", p);
        return "editProduct"; //跳转到editProduct页面编辑产品
    }
    //产品分类页请求
        @RequestMapping("/showProducts")
    public String showProducts(String CategoryId,Model model){      
         List p=(List) productService.getProductByCategoryId(CategoryId);
        model.addAttribute("productfenleilist", p);
        return "good_list";
    }
    
    
    
  
    
    
    @RequestMapping("/editProduct")
    public String editProduct(Product updatedProduct,Model model){
        productService.update(updatedProduct);
        model.addAttribute("productList",productService.getProductList());
        return "productList";
    }
    
    
   
    
}
