package com.abcjob.docs;

import org.springframework.data.jpa.repository.JpaRepository;

import com.abcjob.admin.entity.Doc;

public interface docRepository extends JpaRepository<Doc, Integer> {

}
