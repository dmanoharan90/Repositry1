/**
 * 
 */
package com.ranga.dao.impl;

import com.ranga.dao.EmployeeDAO;
import com.ranga.entity.Employee;
import com.ranga.util.HibernateUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Ranga Reddy
 * @version 1.0
 */

@Repository
public class EmployeeDAOImpl implements EmployeeDAO {
    
	public EmployeeDAOImpl() {
    	System.out.println("EmployeeDAOImpl");
    }
	
	@Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public long createEmployee(Employee employee) {        
        return (Long) hibernateUtil.create(employee);
    }
    
    @Override
    public Employee updateEmployee(Employee employee) {        
        return hibernateUtil.update(employee);
    }
    
    @Override
    public void deleteEmployee(long id) {
        Employee employee = new Employee();
        employee.setId(id);
        hibernateUtil.delete(employee);
    }
    
    @Override
    public List<Employee> getAllEmployees() {        
        return hibernateUtil.fetchAll(Employee.class);
    }
    
    @Override
    public Employee getEmployee(long id) {
        return hibernateUtil.fetchById(id, Employee.class);
    }

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> getAllEmployees(String employeeName) { 
		String query = "SELECT e.* FROM Employees e WHERE e.name like '%"+ employeeName +"%'";
		List<Object[]> employeeObjects = hibernateUtil.fetchAll(query);
		List<Employee> employees = new ArrayList<Employee>();
		for(Object[] employeeObject: employeeObjects) {
			Employee employee = new Employee();
			long id = ((BigInteger) employeeObject[0]).longValue();	
			String name = (String) employeeObject[2];
			String dept = (String) employeeObject[3];
			String clgname=(String) employeeObject[4];
			String projectname =(String) employeeObject[5];
			String email=(String) employeeObject[6];
			employee.setId(id);
			employee.setName(name);
			employee.setDept(dept);
			employee.setClgname(clgname);
			employee.setProjectname(projectname);
			employee.setEmail(email);
			employees.add(employee);
		}
		System.out.println(employees);
		return employees;
	}
}