package com.invoicin.App.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Data;

@Entity
@Data
@Table(name = "Role")
@JsonInclude(Include.NON_NULL)
public class Role {
	@Id
	@GeneratedValue
	private Integer RoleId; // 角色id
	@Column(length = 255)
	private String RoleName; // 角色name

	@CreatedDate             //jpa自动创建时间
	@Column(name = "RoleCreateTime")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
    private Date RoleCreateTime; // 角色创建时间

	@LastModifiedDate             //jpa自动修改时间
	@Column(name = "RoleUpdateTime")
	@JsonFormat(locale = "zh", timezone = "GMT+8", pattern = "yyyy-MM-dd HH:mm:ss")
	private Date RoleUpdateTime; // 角色修改时间

	private String RoleexPlain; // 角色备注
	
	private Integer exct1; // 预留字段
}
