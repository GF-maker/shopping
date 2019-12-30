
package com.qdu.controller;

import com.qdu.pojo.Student;
import com.qdu.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/students")
public class StudentController {
    
    //请求->DispatcherServlet->Controller->Service->Dao->数据库
    @Autowired
    private StudentService studentService;
    
    @RequestMapping("/toRegister")
    public String toRegister(){
        return "register";
    }
    
    @RequestMapping("/login")
    public String login(String stuId,String stuPassword,Model model){
        Student s=studentService.validateStudent(stuId, stuPassword);
        if(null==s)
            return "fail";
        else{
            model.addAttribute("student",s);
            return "index";
        }
    }
    //如果请求参数名和Pojo类的属性名对应,则自动封装一个Student对象传入
    @RequestMapping("/register")
    public String register(Student newStudent){
        //中文提交的姓名和性别会出现乱码问题，需要在web.xml文件中
        //配置字符编码过滤器
      System.out.println(".........性别:"+newStudent.getStuName());
        studentService.addStudent(newStudent);
        //通过redirect进行重定向，后面跟着请求路径
        //然后根据处理/index请求的方法跳转到对应页面
        return "login";
    }
}
