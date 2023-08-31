package com.abcjob.admin.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;


@Entity
@Table(name = "tb_docs")
public class Doc {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id_docs;
	private String name;
	private String email;
	private String phone;
	private String docName;
	private String docType;
	
	
	
	
	
	@Lob
	private byte[] data;
	
	public Doc() {}

	




	public Doc(String name, String email, String phone, String docName, String docType, byte[] data) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.docName = docName;
		this.docType = docType;
			this.data = data;
	}






	






		
	





	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public Integer getId_docs() {
		return id_docs;
	}

	public void setId_docs(Integer id_docs) {
		this.id_docs = id_docs;
	}

	public String getDocName() {
		return docName;
	}

	public void setDocName(String docName) {
		this.docName = docName;
	}

	public String getDocType() {
		return docType;
	}

	public void setDocType(String docType) {
		this.docType = docType;
	}

	public byte[] getData() {
		return data;
	}

	public void setData(byte[] data) {
		this.data = data;
	}
	
	
	
	

}
