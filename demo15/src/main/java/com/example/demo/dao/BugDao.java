package com.example.demo.dao;

import com.example.demo.pojo.po.BugEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BugDao extends JpaRepository<BugEntity,Long>{

}
