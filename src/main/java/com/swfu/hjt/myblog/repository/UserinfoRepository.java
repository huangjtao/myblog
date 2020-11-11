package com.swfu.hjt.myblog.repository;

import com.swfu.hjt.myblog.entity.Admininfo;
import com.swfu.hjt.myblog.entity.Userinfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserinfoRepository extends JpaRepository<Userinfo,Integer> {

    //根据管理员用户名查询数据
    public List<Userinfo> findByUsernameEquals(String username);
}
