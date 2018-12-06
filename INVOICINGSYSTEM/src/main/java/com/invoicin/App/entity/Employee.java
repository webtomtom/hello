package com.invoicin.App.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.springframework.data.annotation.CreatedDate;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Data;

@Entity
@Data
@Table(name = "Employee", uniqueConstraints = { @UniqueConstraint(columnNames = "EmployeeCard") })
@JsonInclude(Include.NON_NULL)
public class Employee {
	@Id
	@GeneratedValue
	private Integer EmployeeId; // 员工id

	private Integer EmployeeCard; // 员工卡号 员工登录通过卡号和密码
	@Column(length = 255)
	private String EmployeeName; // 员工姓名
	private Integer EmployeeSex; // 员工性别
	@Column(length = 255)
	private String EmployeePassWork; // 员工密码

	private Integer EmployeeState; // 员工状态
	@CreatedDate // jpa自动创建时间
	@Column(name = "EmployeeJoinTime")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	private Date EmployeeJoinTime; // 员工创建时间
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	private Date EmployeeOutTime; // 员工离职时间

	private Integer EmployeePassErrorCount; // 员工密码错误次数
	private Integer profitandloss; // 员工损益

	private int isdelete; // 是否删除

	private Integer exct1; // 预留字段

	@JsonIgnore
	@OneToMany(fetch = FetchType.EAGER)
	@Cascade(value = { CascadeType.SAVE_UPDATE })
	@JoinTable(name = "EmployeewithRole", joinColumns = { @JoinColumn(name = "Employeeid") }, inverseJoinColumns = {
			@JoinColumn(name = "Roleid") })
	@NotFound(action = NotFoundAction.IGNORE)
	private Set<Role> Role = new HashSet<Role>();

}