package com.invoicin.App.entity;

import java.math.BigDecimal;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import lombok.Data;

@Entity
@Data
@Table(name = "Product")
@JsonInclude(Include.NON_NULL)
public class Product {
	@Id
	@GeneratedValue
	private Integer productId; // 商品id
	private String productName; // 商品name
	private BigDecimal prodectSell;// 商品售价
	private String prodectdRemark;// 商品备注
	private Integer typeDataId; // 商品分类
	private Integer recipeId; // 原料表中配方id
	private Integer prodectState; // 是否下架
	private int isdelete; // 是否删除
	private Integer exct1;
}
