
package com.qdu.service;

import com.qdu.pojo.Student;
import java.util.List;

public interface StudentService {
    
    Student validateStudent(String stuId,String stuPassword);
    
    
    void addStudent(Student newStudent);
    void updateStudent(Student updatedStudent);
    void deleteStudent(String stuId);
    List<Student> getStudentList();
    
}
