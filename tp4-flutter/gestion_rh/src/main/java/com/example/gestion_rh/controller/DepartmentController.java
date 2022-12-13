package com.example.gestion_rh.controller;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.http.ResponseEntity.BodyBuilder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.example.gestion_rh.model.Department;
import com.example.gestion_rh.service.DepartmentService;



@RestController
@CrossOrigin(origins="*")
@ResponseBody
public class DepartmentController {

    @Autowired
    private DepartmentService departmentService;

    /**
    * Read - Get all employees
    * @return - An Iterable object of Employee full filled
    */
    @GetMapping("/departments")
    @ResponseBody
    public ResponseEntity<List<Department>> getDepartments() {
    	List<Department> res = departmentService.getDepartments();
    	if(res.size()==0)
    		return ResponseEntity.status(HttpStatus.NO_CONTENT).body(null);
    	else
    	return ResponseEntity.status(HttpStatus.OK).body(res);
        
    }
    
    @GetMapping("/departments/{id}")
    public  ResponseEntity<Optional<Department>> getDepartment (@PathVariable Long id) {
    	Optional<Department> res = departmentService.getDepartment(id);
    	
    	if(res== null)
    		return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(null);
    	else
 
    		return ResponseEntity.status(HttpStatus.CREATED).body(res);
    }
    
    @DeleteMapping("/departments/{id}")
    public  ResponseEntity<String> deleteDepartment (@PathVariable Long id) {
    	try {    	departmentService.deleteDepartment(id);
    		return ResponseEntity.status(HttpStatus.ACCEPTED).body("ok");
    	}
    	catch(Exception e)
    	{
    		
        		return ResponseEntity.status(HttpStatus.EXPECTATION_FAILED).body(e.getMessage());
        

    	}
 
    		
    }
    
    @PostMapping("/departments")
    public  ResponseEntity<Department> addDepartment(@RequestBody Department d) {
        Department res= departmentService.saveDepartents(d);
        if(res==null || d== null)
        {
        	return ResponseEntity.status(HttpStatus.NOT_ACCEPTABLE).body(null);   
            
        }
        else
        	return ResponseEntity.status(HttpStatus.CREATED).body(res);
        
    }


}