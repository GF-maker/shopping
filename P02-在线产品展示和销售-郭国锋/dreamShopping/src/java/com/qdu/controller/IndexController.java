
package com.qdu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    
    @RequestMapping("/")
    public String index(){
        return "index";
    }
      @RequestMapping("/dingdan")
    public String dingdan(){
        return "dingdan";
    }
}
