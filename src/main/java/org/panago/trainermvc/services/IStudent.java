package org.panago.trainermvc.services;

import java.util.List;
import org.panago.trainermvc.entities.Student;


public interface IStudent {
    public List<Student> findAllStudents();
    public Student findById(int id);
    public boolean save(Student student);
    public boolean delete(int id);
    public boolean update(Student student);
    
}
