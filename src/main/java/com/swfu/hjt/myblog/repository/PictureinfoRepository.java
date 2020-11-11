package com.swfu.hjt.myblog.repository;

import com.swfu.hjt.myblog.entity.Pictureinfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository  //数据库操作层
public interface PictureinfoRepository extends JpaRepository<Pictureinfo,Integer> {
}
