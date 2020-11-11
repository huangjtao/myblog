package com.swfu.hjt.myblog.repository;

import com.swfu.hjt.myblog.entity.Articleinfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleinfoRepository extends JpaRepository<Articleinfo,Integer> {

public List<Articleinfo> findByArticlenameContaining(String keyword);
}
