package com.swfu.hjt.myblog;

import com.swfu.hjt.myblog.entity.Userinfo;
import com.swfu.hjt.myblog.repository.ArticleinfoRepository;
import com.swfu.hjt.myblog.repository.UserinfoRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class MyblogApplicationTests {

    @Autowired
    ArticleinfoRepository adao;
    @Autowired
    UserinfoRepository udao;

    @Test
    void contextLoads() {
//        long count = adao.count();
//        System.out.println("count = " + count);
        List<Userinfo> list = udao.findByUsernameEquals("admin");
        Userinfo userinfo= list.get(0);
        System.out.println("userinfo = " + userinfo);
    }

}
