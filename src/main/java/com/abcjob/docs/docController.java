package com.abcjob.docs;

import java.time.LocalDate;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.abcjob.admin.AdminService;
import com.abcjob.admin.entity.Admin;
import com.abcjob.admin.entity.Doc;

@Controller
public class docController {

	
	@Autowired
	private docService docService;
	
	@Autowired
	private AdminService adminService;
	
	
	
	
	@GetMapping("/viewdoc")
	public String get(Model model, HttpSession session) {
		List<Doc> docs = docService.getFiles();
		model.addAttribute("docs", docs);
		return "admin/admin-apply";
	}
	
	
	@GetMapping("/adddoc")
	public ModelAndView FormDoc() {
		ModelAndView mv = new ModelAndView();
		Doc doc = new Doc();
		mv.addObject("doc", doc);
		mv.setViewName("doc");
		
		return mv;
	}
	
	
//	@PostMapping("/addaja")
//	public String saveJobs(@RequestParam("file") MultipartFile file, @RequestParam("job_name") String job_name,
//			@RequestParam("job_status") String job_status, @RequestParam("job_desc") String job_desc,
//			@RequestParam("job_location") String job_location, @RequestParam("job_edu") String job_edu,
//			@RequestParam("job_about") String job_about, @RequestParam("job_comp") String job_comp,
//			HttpSession session) {
//		LocalDate currentDate = LocalDate.now();
//
//		loJobService.saveJobsToDB(file, job_name, job_status, job_desc, job_location, job_edu, job_about, job_comp,
//				currentDate);
//
//		return "redirect:/admin-dashboard";
//	}
	
	@PostMapping("/postdoc")
	public String upload(@RequestParam("name") String name,
	                     @RequestParam("email") String email,
	                     @RequestParam("phone") String phone,
	  	                     
	                     @RequestParam("files") MultipartFile[] files) {

	    for (MultipartFile file : files) {
	        docService.saveDataAndFile(name, email, phone, file);
	    }
	    
	    return "redirect:/joblist"; // Redirect to the desired page after upload
	}

	
	
	@GetMapping("/downloadFile/{fileId}")
	public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable Integer fileId){
		Doc doc = docService.getFile(fileId).get();
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(doc.getDocType()))
				.header(HttpHeaders.CONTENT_DISPOSITION,"attachment:filename=\""+doc.getDocName()+"\"")
				.body(new ByteArrayResource(doc.getData()));
	}
}
