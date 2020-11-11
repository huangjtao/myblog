package com.swfu.hjt.myblog.repository;

import com.swfu.hjt.myblog.entity.Admininfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AdmininfoRepository extends JpaRepository<Admininfo,Integer> {

    public List<Admininfo> findByNameEquals(String username);
}
