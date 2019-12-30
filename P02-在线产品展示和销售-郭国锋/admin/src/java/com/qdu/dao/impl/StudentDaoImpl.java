package com.qdu.dao.impl;

//创建一个StudentDao接口的实现类,用于定义实现内容
import com.qdu.dao.StudentDao;
import com.qdu.pojo.Student;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDaoImpl implements StudentDao {
    
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void insert(Student newStudent) {
        Session session = sessionFactory.openSession();
        session.beginTransaction(); //开始事务
        session.save(newStudent);
        session.getTransaction().commit(); //获取当前事务，提交事务
        System.out.println("插入成功！");
        session.close();
    }

    @Override
    public void update(Student updatedStudent) {
        Session session = sessionFactory.openSession();
        session.beginTransaction(); //开始事务
        session.update(updatedStudent);
        session.getTransaction().commit(); //获取当前事务，提交事务
        System.out.println("更新成功！");
        session.close();
    }

    @Override
    public void delete(String stuId) {
        Session session = sessionFactory.openSession();
        session.beginTransaction(); //开始事务
        Student s=(Student)session.get(Student.class, stuId) ;//先根据主键列的值获取数据对象
        session.delete(s); //delete接受的参数是数据对象,不是主键列的值
        session.getTransaction().commit(); //获取当前事务，提交事务
        System.out.println("删除成功！");
        session.close();
    }

    @Override
    public Student getStudentById(String stuId) {
        //如果使用openSession()获取会话对象
        //增删改一定要使用事务,查询可以不用
        Session session = sessionFactory.openSession();
        Student s = (Student) session.get(Student.class, stuId); //根据主键列的值获取一个学生对象
        session.close();
        return s;
    }

    @Override
    public List<Student> getStudents() {
        Session session=sessionFactory.openSession();
        Query query=session.createQuery("from Student");
        List list=query.list(); //执行查询,获得结果集
        session.close();
        return list;
    }

}
