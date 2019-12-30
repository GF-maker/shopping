package com.qdu.pojo;

public class Student  implements java.io.Serializable {

     private String stuId; 
     private String stuName;
     private String stuPassword;
     private String stuPassword2;  
     private String stuNumber;
     private String stuEmail;
     
    public Student() {
    }

	
    public Student(String stuId, String stuName) {
        this.stuId = stuId;
        this.stuName = stuName;
    }

    public Student(String stuId, String stuName, String stuPassword, String stuPassword2, String stuNumber, String stuEmail) {
        this.stuId = stuId;
        this.stuName = stuName;
        this.stuPassword = stuPassword;
        this.stuPassword2 = stuPassword2;
        this.stuNumber = stuNumber;
        this.stuEmail = stuEmail;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPassword() {
        return stuPassword;
    }

    public void setStuPassword(String stuPassword) {
        this.stuPassword = stuPassword;
    }

    public String getStuPassword2() {
        return stuPassword2;
    }

    public void setStuPassword2(String stuPassword2) {
        this.stuPassword2 = stuPassword2;
    }

    public String getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }

    




}


