package com.abcjob.admin.entity;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table(name = "tb_lojob")
public class LoJob {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id_lojob;
	
	private String job_name;
	private String job_status;
	private String job_desc;	
	private String job_location;
	private String job_edu;
	private String job_about;
	private String job_comp;
	private LocalDate date;
	
	@Lob
	@Column(columnDefinition = "MEDIUMBLOB")
	private String Image;
	
	
	
	
	
	
	public LoJob(int id_lojob, String job_name, String job_status, String job_desc, String job_location, String job_edu,
			String job_about, String image, String job_comp, LocalDate date) {
		super();
		this.id_lojob = id_lojob;
		this.job_name = job_name;
		this.job_status = job_status;
		this.job_desc = job_desc;
		this.job_location = job_location;
		this.job_edu = job_edu;
		this.job_about = job_about;
		this.Image = image;
		this.job_comp = job_comp;
		this.date = date;
	}

	
	
	public LocalDate getDate() {
		return date;
	}



	public void setDate(LocalDate date) {
		this.date = date;
	}



	public String getJob_comp() {
		return job_comp;
	}



	public void setJob_comp(String job_comp) {
		this.job_comp = job_comp;
	}



	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		Image = image;
	}

	

	public LoJob() {
		
	}

	public int getId_lojob() {
		return id_lojob;
	}
	
	

	
	

	public void setId_lojob(int id_lojob) {
		this.id_lojob = id_lojob;
	}

	public String getJob_name() {
		return job_name;
	}

	public void setJob_name(String job_name) {
		this.job_name = job_name;
	}

	public String getJob_status() {
		return job_status;
	}

	public void setJob_status(String job_status) {
		this.job_status = job_status;
	}

	public String getJob_desc() {
		return job_desc;
	}

	public void setJob_desc(String job_desc) {
		this.job_desc = job_desc;
	}

	public String getJob_location() {
		return job_location;
	}

	public void setJob_location(String job_location) {
		this.job_location = job_location;
	}

	public String getJob_edu() {
		return job_edu;
	}

	public void setJob_edu(String job_edu) {
		this.job_edu = job_edu;
	}

	public String getJob_about() {
		return job_about;
	}

	public void setJob_about(String job_about) {
		this.job_about = job_about;
	}
	
	
}