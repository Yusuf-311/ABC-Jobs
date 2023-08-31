package com.abcjob.job;

import java.io.IOException;
import java.time.LocalDate;
import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.abcjob.admin.entity.LoJob;
import com.abcjob.job.repository.LoJobRepository;

@Service
public class LoJobService {
	
	
	  @Autowired
	    private LoJobRepository loJobRepository;

	   public void saveJobsToDB(MultipartFile file,String job_name, String job_status, String job_desc, String job_location, String job_edu,
				String job_about,String job_comp,LocalDate date) {
		   LoJob j = new LoJob();
		   String fileName = StringUtils.cleanPath(file.getOriginalFilename());
		   if(fileName.contains("..")) {
			   System.out.println("not a a valid file");
		   }
		   
		   try {
			j.setImage(Base64.getEncoder().encodeToString(file.getBytes()));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		   
		   j.setJob_name(job_name);
		   j.setJob_about(job_about);
		   j.setJob_comp(job_comp);
		   j.setJob_desc(job_desc);
		   j.setJob_edu(job_edu);
		   j.setJob_location(job_location);
		   j.setJob_status(job_status);
		   j.setDate(LocalDate.now());
		  
		   
		   loJobRepository.save(j);
		   
	   }
		   

	public void deleteUser(int id) {
		loJobRepository.deleteById(id);
		
	}

	public List<LoJob> getAllJobs() {
		return loJobRepository.findAll();
		
	}
	
	public LoJob detailsById(int id) {
		LoJob lojob = loJobRepository.findById(id).get();
		return lojob;
		
	}

    }
