package com.example.gestion_rh;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.example.gestion_rh.model.Department;
import com.example.gestion_rh.model.Employee;
import com.example.gestion_rh.model.Gender;
import com.example.gestion_rh.service.DepartmentService;
import com.example.gestion_rh.service.EmployeeService;

@SpringBootApplication
public class GestionRhApplication implements CommandLineRunner {

	@Autowired
	
	private EmployeeService emplployeeService;
	@Autowired
	private DepartmentService departmentService;
	
	public static void main(String[] args) {
		SpringApplication.run(GestionRhApplication.class, args);
	
	}
	@Override
	public void run(String... args) throws Exception {
	
		Employee e1 = new Employee("Ahmed", "Ben Ahmed", "ahmed@gmail.com", "ahmed", Gender.MALE);
		Employee e2 = new Employee("Rami", "Ben Rami", "rami@gmail.com", "rami", Gender.MALE);
		Employee e3 = new Employee("Sondes", "Ben sassi", "sondes@gmail.com", "sondes", Gender.FEMALE);
		
		Department d = new Department("rh", "Gestion des ressources humaines");
		d =departmentService.saveDepartents(d);
		e1.setDepartment(d);
		e2.setDepartment(d);
		e3.setDepartment(d);
	   this.emplployeeService.saveEmployee(e1);
	   this.emplployeeService.saveEmployee(e2);
	   this.emplployeeService.saveEmployee(e3);
	   
	   
	   Iterable<Employee> employees = emplployeeService.getEmployees();
	   employees.forEach(employee -> System.out.println(employee));
	}
}
