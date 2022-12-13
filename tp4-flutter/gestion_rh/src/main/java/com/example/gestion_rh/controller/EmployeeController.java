package com.example.gestion_rh.controller;


import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.gestion_rh.model.Department;
import com.example.gestion_rh.model.Employee;
import com.example.gestion_rh.service.DepartmentService;
import com.example.gestion_rh.service.EmployeeService;


@RestController
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private DepartmentService departmentService;
    
    /**
    * Read - Get all employees
    * @return - An Iterable object of Employee full filled
    */
    @GetMapping("/employees")
    public Iterable<Employee> getEmployees() {
        return employeeService.getEmployees();
    }
    
    @GetMapping("/employees/{id}")
    public  ResponseEntity<Optional<Employee>> getEmployee (@PathVariable Long id) {
    	Optional<Employee> res =employeeService.getEmployee(id);
    	
    	if(res== null)
    		return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(null);
    	else
 
    		return ResponseEntity.status(HttpStatus.CREATED).body(res);
    }
    
    @DeleteMapping("/employees/{id}")
    public  ResponseEntity<String> deleteEmployee (@PathVariable Long id) {
    	try {    	employeeService.deleteEmployee(id);
    		return ResponseEntity.status(HttpStatus.ACCEPTED).body("ok");
    	}
    	catch(Exception e)
    	{
    		
        		return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(e.getMessage());
        

    	}
 
    		
    }
    
    @PostMapping("/employees/department/{id_department}")
    public  ResponseEntity<Employee> addDepartment(@RequestBody Employee e, @PathVariable long id_department ) {
        
    	
    	Optional<Department> d = departmentService.getDepartment(id_department);
    	
    	if (d.isPresent())
    	{   e.setDepartment(d.get());
    		Employee res= employeeService.saveEmployee(e);
    		System.out.println(e);
    		if(res==null || e== null)
            {
            	return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(null);   
                
            }
            else
            	return ResponseEntity.status(HttpStatus.CREATED).body(res);
    	}
    	else
    		return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(null);
        
    }

    

}