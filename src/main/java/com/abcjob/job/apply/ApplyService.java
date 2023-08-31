package com.abcjob.job.apply;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abcjob.admin.entity.Doc;
import com.abcjob.admin.entity.LoJob;
import com.abcjob.docs.docRepository;
import com.abcjob.job.repository.LoJobRepository;

@Service
public class ApplyService {

    @Autowired
    private ApplyRepository applyRepository;
    
    @Autowired
    private docRepository docRepository;

    @Autowired
    private LoJobRepository jobRepository;


    public List<Apply> getAllAppliesWithRelatedData() {
        return applyRepository.findAllWithRelatedData();
    }
    
    public void transferDataToApply() {
        List<Doc> docs = docRepository.findAll();
        List<LoJob> loJobs = jobRepository.findAll();

        for (Doc doc : docs) {
            // Pick a single LoJob or adjust logic based on your requirement
            LoJob loJob = loJobs.get(0); // For example, picking the first LoJob

            Apply apply = new Apply();
            apply.setDoc(doc);
            apply.setLojob(loJob);
            applyRepository.save(apply);
        }

}
}