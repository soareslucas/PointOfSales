package br.com.goinf.entities;
// Generated 13 de jan de 2019 21:10:01 by Hibernate Tools 5.2.11.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Person generated by hbm2java
 */
@Entity
@Table(name = "person", schema = "public")
public class Person implements java.io.Serializable {

	private int id;
	private Boolean persontype;
	private String legalname;
	private String socialname;
	private Boolean gender;
	private Date birthdate;
	private Integer regionalregistration;
	private String regionalissuer;
	private Integer nationalregistration;
	private Integer phone;
	private Integer cellphone;
	private Integer email;
	private Set<Supplier> suppliers = new HashSet<Supplier>(0);

	public Person() {
	}

	public Person(int id) {
		this.id = id;
	}

	public Person(int id, Boolean persontype, String legalname, String socialname, Boolean gender, Date birthdate,
			Integer regionalregistration, String regionalissuer, Integer nationalregistration, Integer phone,
			Integer cellphone, Integer email, Set<Supplier> suppliers) {
		this.id = id;
		this.persontype = persontype;
		this.legalname = legalname;
		this.socialname = socialname;
		this.gender = gender;
		this.birthdate = birthdate;
		this.regionalregistration = regionalregistration;
		this.regionalissuer = regionalissuer;
		this.nationalregistration = nationalregistration;
		this.phone = phone;
		this.cellphone = cellphone;
		this.email = email;
		this.suppliers = suppliers;
	}

	@Id

	@Column(name = "id", unique = true, nullable = false)
	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Column(name = "persontype")
	public Boolean getPersontype() {
		return this.persontype;
	}

	public void setPersontype(Boolean persontype) {
		this.persontype = persontype;
	}

	@Column(name = "legalname", length = 100)
	public String getLegalname() {
		return this.legalname;
	}

	public void setLegalname(String legalname) {
		this.legalname = legalname;
	}

	@Column(name = "socialname", length = 100)
	public String getSocialname() {
		return this.socialname;
	}

	public void setSocialname(String socialname) {
		this.socialname = socialname;
	}

	@Column(name = "gender")
	public Boolean getGender() {
		return this.gender;
	}

	public void setGender(Boolean gender) {
		this.gender = gender;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "birthdate", length = 13)
	public Date getBirthdate() {
		return this.birthdate;
	}

	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}

	@Column(name = "regionalregistration")
	public Integer getRegionalregistration() {
		return this.regionalregistration;
	}

	public void setRegionalregistration(Integer regionalregistration) {
		this.regionalregistration = regionalregistration;
	}

	@Column(name = "regionalissuer", length = 100)
	public String getRegionalissuer() {
		return this.regionalissuer;
	}

	public void setRegionalissuer(String regionalissuer) {
		this.regionalissuer = regionalissuer;
	}

	@Column(name = "nationalregistration")
	public Integer getNationalregistration() {
		return this.nationalregistration;
	}

	public void setNationalregistration(Integer nationalregistration) {
		this.nationalregistration = nationalregistration;
	}

	@Column(name = "phone")
	public Integer getPhone() {
		return this.phone;
	}

	public void setPhone(Integer phone) {
		this.phone = phone;
	}

	@Column(name = "cellphone")
	public Integer getCellphone() {
		return this.cellphone;
	}

	public void setCellphone(Integer cellphone) {
		this.cellphone = cellphone;
	}

	@Column(name = "email")
	public Integer getEmail() {
		return this.email;
	}

	public void setEmail(Integer email) {
		this.email = email;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "person")
	public Set<Supplier> getSuppliers() {
		return this.suppliers;
	}

	public void setSuppliers(Set<Supplier> suppliers) {
		this.suppliers = suppliers;
	}

}