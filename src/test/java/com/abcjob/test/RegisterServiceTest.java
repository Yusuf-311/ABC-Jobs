package com.abcjob.test;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import com.abcjob.admin.entity.LoJob;
import com.abcjob.job.LoJobService;
import com.abcjob.job.repository.LoJobRepository;
import com.abcjob.login.LoginService;
import com.abcjob.register.RegisterProfile;
import com.abcjob.register.RegisterService;
import com.abcjob.register.RegisterUser;

@ExtendWith(MockitoExtension.class)
public class RegisterServiceTest {
	
	@Mock
	RegisterService registerService;
	
	@Mock
	LoginService loginService;
	
	@Mock
	LoJobService jobService;
	
	@Mock
	LoJobRepository jobRepository;
	
	
	
	
	
	@Test
	public void registerTest() {
		RegisterUser user = new RegisterUser();
		RegisterProfile profile = new RegisterProfile();
		
		user.setEmail("registertest05@email.com");
		user.setPassword("password");
		user.setEnabled(true);
		
		profile.setFirst_name("Test");
		profile.setLast_name("User");
		profile.setCountry("Country");
		profile.setCity("city");
		
		user.setProfile(profile);
		
		assertTrue(registerService.saveRegister(user));
		assertNotNull(loginService.loadUserByEmail(user.getEmail()));

	}
	
	
}
