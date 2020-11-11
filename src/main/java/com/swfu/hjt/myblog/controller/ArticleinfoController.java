package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.Articleinfo;
import com.swfu.hjt.myblog.repository.ArticleinfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;


@Controller
@RequestMapping("/article")
public class ArticleinfoController {
    @Autowired
    ArticleinfoRepository adao;

    @RequestMapping("/add")    //跳转到添加页面
    public String add(){

        return "admin/articleadd";
    }
    @RequestMapping("/save")    //添加保存到数据库
    public String save(Articleinfo a){
        adao.save(a);
        return "redirect:list";

    }

    @RequestMapping("/edit")
    public String edit(int aid, Model m){
        Articleinfo one = adao.getOne(aid);
        m.addAttribute("one",one);
        return "admin/articleupdate";
    }
    @RequestMapping("/update")
    public String update(Articleinfo a){
        adao.save(a);
        return "redirect:list";
    }

    @RequestMapping("/detail")
    public String detail(int aid,Model m){
        Articleinfo one = adao.getOne(aid);
        m.addAttribute("one",one);

        return "admin/articledetail";
    }

    @RequestMapping("/delete")
    public String delete(int aid){
        adao.deleteById(aid);    //根据id删除
        return "redirect:list";   //删除成功跳转页面
    }

    @RequestMapping("/list")    //localhost:9999/article/list
    public String list(Model m, Integer p) {
        int pageSize = 5;  //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        //p=p-1;   //jpa第一页是0，分页从第一页开始
        //Sort sort = Sort.by(Sort.Direction.DESC, "pid");    //排序条件    倒序
        Page<Articleinfo> all = adao.findAll(PageRequest.of(p - 1, pageSize));
        long count = adao.count();
        List<Articleinfo> content = all.getContent();
        int totalPages = all.getTotalPages();
        m.addAttribute("count",count);
        m.addAttribute("content", content);
        m.addAttribute("totalPages", totalPages);
        m.addAttribute("currentPage", p);

        return "admin/articlelist";  //跳转到jsp页面
    }

}
