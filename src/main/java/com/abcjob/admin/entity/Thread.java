package com.abcjob.admin.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="tb_thread")
public class Thread {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column (name="thread_id")
	private Long thread_id;
	
	private String title;
	
	private String content;

	
	private int id_user;
	
	private String name;
	
	@OneToMany(mappedBy = "thread")
    private List<Comment> comments;

	
	
	public Thread() {}



	
	
	
	





	public Thread(String title, String content, int id_user, String name, List<Comment> comments) {
		super();
		this.title = title;
		this.content = content;
		this.id_user = id_user;
		this.name = name;
		this.comments = comments;
	}












	public Thread(String title, String content, int id_user, List<Comment> comments) {
		super();
		this.title = title;
		this.content = content;
		this.id_user = id_user;
		this.comments = comments;
	}












	public String getName() {
		return name;
	}












	public void setName(String name) {
		this.name = name;
	}












	public Long getThread_id() {
		return thread_id;
	}



	public void setThread_id(Long thread_id) {
		this.thread_id = thread_id;
	}



	public String getTitle() {
		return title;
	}



	public void setTitle(String title) {
		this.title = title;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}



	



	public int getId_user() {
		return id_user;
	}












	public void setId_user(int id_user) {
		this.id_user = id_user;
	}












	public List<Comment> getComments() {
		return comments;
	}



	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}
	
	
	
	
}
