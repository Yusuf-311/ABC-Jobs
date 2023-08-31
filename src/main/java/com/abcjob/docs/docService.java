package com.abcjob.docs;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.abcjob.admin.entity.Doc;
import com.abcjob.admin.entity.LoJob;
import com.abcjob.job.repository.LoJobRepository;

@Service
public class docService {

	@Autowired
	private docRepository docRepository;
	
	@Autowired
	private LoJobRepository jobRepository;
	
	

//	public void saveData(String name, String email, String phone) {
//
//		Doc d = new Doc();
//		d.setName(name);
//		d.setEmail(email);
//		d.setPhone(phone);
//		
//		docRepository.save(d);
//	}
//
//	public Doc saveFile(MultipartFile file) {
//		String docname = file.getOriginalFilename();
//		try {
//			
//			Doc doc = new Doc(docname, file.getContentType(), file.getBytes());
//			return docRepository.save(doc);
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return null;
//	}
	
	public void saveDataAndFile(String name, String email, String phone, MultipartFile file) {
        try {
            String docName = file.getOriginalFilename();
            String docType = file.getContentType();
            byte[] data = file.getBytes();
            
            Doc doc = new Doc(name, email, phone, docName, docType, data);
            docRepository.save(doc);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }








	public Optional<Doc> getFile(Integer fileId) {
		return docRepository.findById(fileId);
	}

	public List<Doc> getFiles() {
		return docRepository.findAll();
	}

}
