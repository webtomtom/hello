package com.invoicin.App.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.invoicin.App.entity.Employee;

public interface EmployeeDao extends JpaRepository<Employee, Integer> {
	@Query(value = "SELECT * FROM employee WHERE employee_card=?1 AND employee_pass_work=?2 ", nativeQuery = true)
	Employee querylogin(Integer employeeCard, String pwd);
}
