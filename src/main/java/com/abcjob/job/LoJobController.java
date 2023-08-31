package com.abcjob.job;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.abcjob.admin.AdminService;
import com.abcjob.admin.entity.LoJob;
import com.abcjob.docs.docService;
import com.abcjob.search.SearchJob;
import com.abcjob.search.SearchProfile;

@Controller
public class LoJobController {

	@Autowired
	private LoJobService loJobService;
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private docService docService;
	


	@GetMapping("/addjobaja")
	@ResponseBody
	public ModelAndView returnAddJobs(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		if (adminService.getAdmin(session) == null) {

			mv.setViewName("admin/admin-login");
			// mv.addObject("var", "halim");
			return mv;

		} else {
			mv.setViewName("jobform");

			return mv;
		}

	}

	@PostMapping("/addaja")
	public String saveJobs(@RequestParam("file") MultipartFile file, @RequestParam("job_name") String job_name,
			@RequestParam("job_status") String job_status, @RequestParam("job_desc") String job_desc,
			@RequestParam("job_location") String job_location, @RequestParam("job_edu") String job_edu,
			@RequestParam("job_about") String job_about, @RequestParam("job_comp") String job_comp,
			HttpSession session) {
		LocalDate currentDate = LocalDate.now();

		loJobService.saveJobsToDB(file, job_name, job_status, job_desc, job_location, job_edu, job_about, job_comp,
				currentDate);

		return "redirect:/admin-dashboard";
	}

	@RequestMapping("/admin-delete-job")
	public String deleteUser(@RequestParam int id, HttpSession session) {
		loJobService.deleteUser(id);
		return "redirect:/admin-jobs";
	}

	@GetMapping("/joblist")
	public String jobList(Model model, HttpSession session) {
		List<LoJob> jobs = loJobService.getAllJobs();
		model.addAttribute("jobs", jobs);
		return "jobli"; // This is the name of the Thymeleaf template (jobList.html)
	}

	@GetMapping("/jobdetails")
	public ModelAndView viewProfile(@RequestParam("id") int id) {
		
		LoJob loJob = loJobService.detailsById(id);
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("jobDetails");
		mv.addObject("lojob",loJob );
		return mv;
	}
	
	
	
	
}
