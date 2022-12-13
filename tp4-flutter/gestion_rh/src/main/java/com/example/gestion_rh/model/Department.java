package com.example.gestion_rh.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "department")
public class Department {
	

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name="label")
    
    private String label;

    @Column(name="mission")
    
    private String mission;
    
    

	@Override
	public String toString() {
		return "Department [id=" + id + ", label=" + label + ", mission=" + mission + "]";
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getMission() {
		return mission;
	}

	public void setMission(String mission) {
		this.mission = mission;
	}

	

	public Department(String label, String mission) {
		super();
		this.label = label;
		this.mission = mission;
		
	}
	
	public Department() {}
    
    
}
