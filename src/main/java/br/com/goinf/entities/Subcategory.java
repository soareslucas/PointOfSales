package br.com.goinf.entities;
// Generated 13 de jan de 2019 21:10:01 by Hibernate Tools 5.2.11.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Subcategory generated by hbm2java
 */
@Entity
@Table(name = "subcategory", schema = "public")
public class Subcategory implements java.io.Serializable {

	private int id;
	private String name;
	private Set<Product> products = new HashSet<Product>(0);
	private Set<Category> categories = new HashSet<Category>(0);

	public Subcategory() {
	}

	public Subcategory(int id) {
		this.id = id;
	}

	public Subcategory(int id, String name, Set<Product> products, Set<Category> categories) {
		this.id = id;
		this.name = name;
		this.products = products;
		this.categories = categories;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "name", length = 100)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "subcategory")
	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "category_has_subcategory", schema = "public", joinColumns = {
			@JoinColumn(name = "subcategory_id", nullable = false, updatable = false) }, inverseJoinColumns = {
					@JoinColumn(name = "category_id", nullable = false, updatable = false) })
	public Set<Category> getCategories() {
		return this.categories;
	}

	public void setCategories(Set<Category> categories) {
		this.categories = categories;
	}

}