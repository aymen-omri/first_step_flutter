package com.example.gestion_rh.service;



import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.gestion_rh.model.Department;
import com.example.gestion_rh.model.Employee;
import com.example.gestion_rh.repository.DepartmentRepository;
import com.example.gestion_rh.repository.EmployeeRepository;



@Service
public class DepartmentService {

    @Autowired
    private DepartmentRepository departmentRepository;

    public Optional<Department> getDepartment(final Long id) {
        return departmentRepository.findById(id);
    }

    public List<Department> getDepartments() {
        return (List<Department>) departmentRepository.findAll();
    }

    public void deleteDepartment(final Long id) {
    	departmentRepository.deleteById(id);
    }

    public Department saveDepartents(Department department) {
    	Department savedDepartment = departmentRepository.save(department);
        return savedDepartment;
    }

}