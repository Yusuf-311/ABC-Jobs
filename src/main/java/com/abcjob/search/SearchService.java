package com.abcjob.search;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.abcjob.admin.entity.LoJob;

@Service
@Transactional
public class SearchService {
	
	
	
	@Autowired
	ProfileRepositorySearch profileRepo;
	
	public List<SearchProfile> search(String keyword){
		 return profileRepo.search(keyword);
	}
	
	 
	public SearchProfile loadUserById(int id) {
		SearchProfile profile = profileRepo.findById(id).get();
		return profile;
	}
	
	public List<SearchProfile> getAllJobs() {
		return profileRepo.findAll();
		
	}
	 
}
