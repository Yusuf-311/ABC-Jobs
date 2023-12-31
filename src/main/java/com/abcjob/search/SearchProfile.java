package com.abcjob.search;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


@Entity
@Table(name = "tb_user_profile")
public class SearchProfile {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_profile;
	
	@Column(name = "first_name")
	private String firstName;
	
	private String last_name;
	private String country;
	private String city;
	
	@ManyToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "id_job")
	private SearchJob job;

	public SearchProfile() {
	
	}

	public SearchProfile(String first_name, String last_name, String country, String city, SearchJob job) {
		super();
		this.firstName = first_name;
		this.last_name = last_name;
		this.country = country;
		this.city = city;
		this.job = job;
	}

	public int getId_profile() {
		return id_profile;
	}

	public void setId_profile(int id_profile) {
		this.id_profile = id_profile;
	}

	public String getFirst_name() {
		return firstName;
	}

	public void setFirst_name(String first_name) {
		this.firstName = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public SearchJob getJob() {
		return job;
	}

	public void setJob(SearchJob job) {
		this.job = job;
	}
	
}
