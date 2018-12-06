package com.invoicin.App.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Data;
//原材料表
@Entity
@Data
@Table(name = "Meterial")
@JsonInclude(Include.NON_NULL)
public class Meterial {
	@Id
	@GeneratedValue
	private Integer meterialId; // 原材料id
	@Column(length = 255)
	private String materialName; // 原材料name
	private Integer materialNumber; // 原材料数量
	private Float materialoPenpRice; // 原材料进价
	private Integer expirationDate; // 原材料保质期
	private Integer materialState; // 原材料状态
	private Integer typeDataId; // 原料类型
	private Integer wareHouseId; // 所属仓库id
	private Integer isDelete;    // 是否删除
	private Integer exct1; // 预留字段
}
