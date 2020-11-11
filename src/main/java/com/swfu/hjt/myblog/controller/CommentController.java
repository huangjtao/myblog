package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.Comment;
import com.swfu.hjt.myblog.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/comment")
public class CommentController {
    @Autowired
    CommentRepository cdao;

    @RequestMapping("/add")    //跳转到添加页面
    public String add(){

        return "admin/commentadd";
    }
    @RequestMapping("/save")    //添加保存到数据库
    public String save(Comment c){
        cdao.save(c);
        return "redirect:list";

    }

    @RequestMapping("/edit")
    public String edit(int cid, Model m){
        Comment one = cdao.getOne(cid);
        m.addAttribute("one",one);
        return "admin/commentupdate";
    }
    @RequestMapping("/update")
    public String update(Comment c){
        cdao.save(c);
        return "redirect:list";
    }

    @RequestMapping("/detail")
    public String detail(int cid,Model m){
        Comment one = cdao.getOne(cid);
        m.addAttribute("one",one);

        return "admin/commentdetail";
    }

    @RequestMapping("/delete")
    public String delete(int cid){
        cdao.deleteById(cid);    //根据id删除
        return "redirect:list";   //删除成功跳转页面
    }

    @RequestMapping("/list")    //localhost:9999/article/list
    public String list(Model m, Integer p) {
        int pageSize = 5;  //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        //p=p-1;   //jpa第一页是0，分页从第一页开始
        //Sort sort = Sort.by(Sort.Direction.DESC, "pid");    //排序条件    倒序
        Page<Comment> all = cdao.findAll(PageRequest.of(p - 1, pageSize));
        List<Comment> content = all.getContent();
        int totalPages = all.getTotalPages();
        m.addAttribute("content", content);
        m.addAttribute("totalPages", totalPages);
        m.addAttribute("currentPage", p);

        return "admin/commentlist";  //跳转到jsp页面
    }
}
