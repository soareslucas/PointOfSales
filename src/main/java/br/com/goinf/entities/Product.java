package br.com.goinf.entities;
// Generated 13 de jan de 2019 21:10:01 by Hibernate Tools 5.2.11.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name = "product", schema = "public")
public class Product implements java.io.Serializable {

	private int id;
	private Brand brand;
	private Category category;
	private Itemtype itemtype;
	private Subcategory subcategory;
	private Unit unit;
	private String description;
	private String model;
	private Integer code;
	private Boolean active;
	private Integer minimum;
	private Double cost;
	private Double wholesale;
	private Double retail;

	public Product() {
	}

	public Product(int id) {
		this.id = id;
	}

	public Product(int id, Brand brand, Category category, Itemtype itemtype, Subcategory subcategory, Unit unit,
			String description, String model, Integer code, Boolean active, Integer minimum, Double cost,
			Double wholesale, Double retail) {
		this.id = id;
		this.brand = brand;
		this.category = category;
		this.itemtype = itemtype;
		this.subcategory = subcategory;
		this.unit = unit;
		this.description = description;
		this.model = model;
		this.code = code;
		this.active = active;
		this.minimum = minimum;
		this.cost = cost;
		this.wholesale = wholesale;
		this.retail = retail;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "brand_id")
	public Brand getBrand() {
		return this.brand;
	}

	public void setBrand(Brand brand) {
		this.brand = brand;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	public Category getCategory() {
		return this.category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "itemtype_id")
	public Itemtype getItemtype() {
		return this.itemtype;
	}

	public void setItemtype(Itemtype itemtype) {
		this.itemtype = itemtype;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "subcategory_id")
	public Subcategory getSubcategory() {
		return this.subcategory;
	}

	public void setSubcategory(Subcategory subcategory) {
		this.subcategory = subcategory;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "unit_id")
	public Unit getUnit() {
		return this.unit;
	}

	public void setUnit(Unit unit) {
		this.unit = unit;
	}

	@Column(name = "description", length = 100)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "model", length = 100)
	public String getModel() {
		return this.model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	@Column(name = "code")
	public Integer getCode() {
		return this.code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	@Column(name = "active")
	public Boolean getActive() {
		return this.active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	@Column(name = "minimum")
	public Integer getMinimum() {
		return this.minimum;
	}

	public void setMinimum(Integer minimum) {
		this.minimum = minimum;
	}

	@Column(name = "cost", precision = 17, scale = 17)
	public Double getCost() {
		return this.cost;
	}

	public void setCost(Double cost) {
		this.cost = cost;
	}

	@Column(name = "wholesale", precision = 17, scale = 17)
	public Double getWholesale() {
		return this.wholesale;
	}

	public void setWholesale(Double wholesale) {
		this.wholesale = wholesale;
	}

	@Column(name = "retail", precision = 17, scale = 17)
	public Double getRetail() {
		return this.retail;
	}

	public void setRetail(Double retail) {
		this.retail = retail;
	}

}