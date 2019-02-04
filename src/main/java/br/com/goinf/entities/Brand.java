package br.com.goinf.entities;
// Generated 13 de jan de 2019 21:10:01 by Hibernate Tools 5.2.11.Final

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Brand generated by hbm2java
 */
@Entity
@Table(name = "brand", schema = "public")
public class Brand implements java.io.Serializable {

	private int id;
	private String name;
	private Set<Product> products = new HashSet<Product>(0);

	public Brand() {
	}

	public Brand(int id) {
		this.id = id;
	}

	public Brand(int id, String name, Set<Product> products) {
		this.id = id;
		this.name = name;
		this.products = products;
	}

	@Id
	@GeneratedValue
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

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "brand")
	public Set<Product> getProducts() {
		return this.products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}
