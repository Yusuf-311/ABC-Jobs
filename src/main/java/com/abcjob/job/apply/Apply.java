package com.abcjob.job.apply;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.abcjob.admin.entity.Doc;
import com.abcjob.admin.entity.Job;
import com.abcjob.admin.entity.LoJob;
import com.abcjob.admin.entity.User;

@Entity
@Table(name = "tb_apply")
public class Apply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "lojob_id")
    private LoJob lojob;

    @ManyToOne
    @JoinColumn(name = "doc_id")
    private Doc doc;

	public Apply(LoJob lojob, Doc doc) {
		super();
		this.lojob = lojob;
		this.doc = doc;
	}
	
	public Apply() {
		
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public LoJob getLojob() {
		return lojob;
	}

	public void setLojob(LoJob lojob) {
		this.lojob = lojob;
	}

	public Doc getDoc() {
		return doc;
	}

	public void setDoc(Doc doc) {
		this.doc = doc;
	}


    
    

    
}



