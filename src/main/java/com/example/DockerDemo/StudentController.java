package com.example.DockerDemo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/")
public class StudentController {

    @Autowired
    private StudentRepository studentRepository;

    @GetMapping("/students")
    public List<Student> getStudents(){
        return studentRepository.findAll();
    }

    @RequestMapping("/addStudent")
    public void addStudent(){
        // add new student
        Student s = new Student();
        s.setName("Raj");
        s.setAge(23);

        studentRepository.save(s);
    }
}





//List.of(
//                new Student(1,"Shubham",23),
//                new Student(2,"Sim",34),
//                new Student(3,"Modak",423)
//        );