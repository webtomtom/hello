package com.invoicin.App.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.invoicin.App.dao.EmployeeDao;
import com.invoicin.App.entity.Employee;
import com.invoicin.App.entity.Role;

@CrossOrigin
@RestController
@RequestMapping("/Employee")

public class EmployeeController {
	@Autowired
	private EmployeeDao dao;

	Map<String, Object> map = new HashMap<String, Object>();
	//localhost:8090/Employee/login?login=1995&pwd=666
	@RequestMapping("/login")
	public Object login(String login, String pwd, String code) {// login 卡号 pwd 密码
		List<Role> lists = new ArrayList<Role>();
		Integer EmployeeCard = Integer.parseInt(login);
		Employee employee = dao.querylogin(EmployeeCard, pwd);
		String EmployeeName=employee.getEmployeeName();
		Set<Role> roles = employee.getRole();
		for (Role role : roles) {
			lists.add(role);
		}
		if (employee != null) {
			map.put("roleid", lists);
			map.put("name", EmployeeName);
			map.put("Status", "ok");
			map.put("Text", "登录成功<br /><br />欢迎回来");
		} else {
			map.put("Status", "Erro");
			map.put("Erro", "账号名或密码或验证码有误");
		}
		return map;
	}
}
