
package com.qdu.dao;

import com.qdu.pojo.Student;
import java.util.List;

//Hibernate基于ORM的思想操作数据库,也就是用面向对象的思想操作数据库
//ORM-Object Relation Mapping对象关系映射,就是一个类映射一个表,通过操作类对象操作表
//该接口定义对学生对象的所有操作
public interface StudentDao {
    
    void insert(Student newStudent); //可以添加新学生
    void update(Student updatedStudent); //可以更新学生信息,提供更新后的信息
    void delete(String stuId); //提供学号,删除一个学生
    Student getStudentById(String stuId); //提供学号,查找一个学生
    List<Student> getStudents(); //获取所有学生的列表
    
}
