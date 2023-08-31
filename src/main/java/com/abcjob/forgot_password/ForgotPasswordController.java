package com.abcjob.forgot_password;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ForgotPasswordController {
	
	@Autowired
	ForgotPasswordService forgotPasswordService;
	
	@RequestMapping("/forgot-password")
	public ModelAndView forgotPassword() {
		ModelAndView mv = new ModelAndView("forgot-password");
		return mv;
	}
	
	@RequestMapping("/forgot-password-confirmation")
	public ModelAndView forgotPasswordConfirmation() {
		ModelAndView mv = new ModelAndView("forgot-password-confirmation");
		return mv;
	}
	
}
