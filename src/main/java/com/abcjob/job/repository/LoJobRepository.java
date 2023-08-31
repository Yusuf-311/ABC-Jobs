package com.abcjob.job.repository;

import com.abcjob.admin.entity.LoJob;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoJobRepository extends JpaRepository<LoJob, Integer> {
    // You can add custom query methods here if needed
}
