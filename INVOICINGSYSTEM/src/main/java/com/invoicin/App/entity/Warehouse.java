package com.invoicin.App.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Data;

@Entity
@Data
@Table(name = "Warehouse")
@JsonInclude(Include.NON_NULL)
public class Warehouse {
	@Id
	@GeneratedValue
	private Integer warehouseid; // 仓库id
	private String warehousename; // 仓库名称
	private Integer warehouseparentid;// 仓库父类id
	private String warehouseurl; // 仓库页面地址
	private Integer exct1;

}
