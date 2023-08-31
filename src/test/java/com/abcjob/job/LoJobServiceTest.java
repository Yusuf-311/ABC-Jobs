package com.abcjob.job;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import org.junit.Before;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.jupiter.MockitoExtension;

import com.abcjob.admin.entity.LoJob;
import com.abcjob.job.repository.LoJobRepository;



public class LoJobServiceTest {

    @Mock
    private LoJobRepository loJobRepository;
    
    @InjectMocks
    private LoJobService jobService;

    @Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testSaveJobsToDB() {
        LoJob j = new LoJob();
        j.setJob_name("Machine Learning Developer");
        j.setJob_about("this is about");
        j.setJob_comp("Cijolang Company");
        j.setJob_desc("You Need to know python");
        j.setJob_edu("High School");
        j.setJob_location("Indonesia");
        j.setJob_status("Part-Time");
      loJobRepository.save(j);
        }
}
