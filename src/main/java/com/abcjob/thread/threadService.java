package com.abcjob.thread;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjob.admin.entity.Doc;
import com.abcjob.admin.entity.Thread;

@Service
public class threadService {
	
	@Autowired
	private ThreadRepository repository;

	public List<Thread> getFiles() {
		return repository.findAll();
	}
}
