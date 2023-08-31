package com.abcjob.thread;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.abcjob.admin.entity.User;
import com.abcjob.admin.repository.UserRepository;
import com.abcjob.docs.docService;
import com.abcjob.login.LoginService;
import com.abcjob.admin.entity.Doc;
import com.abcjob.admin.entity.Thread;

@Controller
public class threadController {

	@Autowired
	private ThreadRepository repository;

	@Autowired
	private UserRepository userRepository;

	@Autowired
	private docService docService;

	@Autowired
	private threadService service;

	@Autowired
	private LoginService loginService;

	@GetMapping("/dashboard")
	public String showJSP(Model model, HttpSession session) {
		if (loginService.getCurrentUser(session) == null) {
			return "redirect:/login";
		} else {
			List<Thread> thread = service.getFiles();
			model.addAttribute("thread", thread);

			return "dashboard";
		}
		
	}

	@PostMapping("/create")
	public ModelAndView createThread(@RequestParam("title") String title, @RequestParam("content") String content,
			@RequestParam("id_user") int idUser, @RequestParam("name") String name) {

		Thread thread = new Thread();
		thread.setTitle(title);
		thread.setContent(content);
		thread.setId_user(idUser);
		thread.setName(name);

		repository.save(thread);

		ModelAndView modelAndView = new ModelAndView("redirect:/dashboard");
		modelAndView.addObject("message", "Thread created successfully!");
		return modelAndView;
	}

}
