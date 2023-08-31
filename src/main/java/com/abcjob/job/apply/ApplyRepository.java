package com.abcjob.job.apply;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ApplyRepository extends JpaRepository<Apply, Long> {
    // Define any custom queries if needed
	 @Query("SELECT a FROM Apply a JOIN FETCH a.lojob JOIN FETCH a.doc")
	    List<Apply> findAllWithRelatedData();
}

