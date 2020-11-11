package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.Pictureinfo;
import com.swfu.hjt.myblog.repository.PictureinfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;


@Controller   //请求控制层
@RequestMapping("/picture")    //父路径
public class PictureinfoController {
    @Autowired   //注入对象 完成操作
    PictureinfoRepository pdao;

    @RequestMapping("/add")    //跳转到添加页面
    public String add(){

        return "admin/pictureadd";
    }
    @RequestMapping("/save")    //添加保存到数据库
    public String save(Pictureinfo p){
        pdao.save(p);
        return "redirect:list";

    }

    @RequestMapping("/edit")
    public String edit(int pid,Model m){
        Pictureinfo one = pdao.getOne(pid);
        m.addAttribute("one", one);
        return "admin/pictureupdate";
    }
    @RequestMapping("/update")
    public String update(Pictureinfo p){
       // p.setPtime(new Date());  //设置为系统当前时间
        pdao.save(p);
        return "redirect:list";
    }

    @RequestMapping("/detail")
    public String detail(int pid,Model m){
        Pictureinfo one = pdao.getOne(pid);
        m.addAttribute("one",one);

        return "admin/picturedetail";
    }

    @RequestMapping("/delete")
    public String delete(int pid){
        pdao.deleteById(pid);    //根据id删除
        return "redirect:list";   //删除成功跳转页面
    }

    @RequestMapping("/list")    //localhost:9999/picture/list
    public String list(Model m, Integer p) {
        int pageSize = 5;  //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        //p=p-1;   //jpa第一页是0，分页从第一页开始
        Sort sort = Sort.by(Sort.Direction.DESC, "pid");    //排序条件    倒序
        Page<Pictureinfo> all = pdao.findAll(PageRequest.of(p - 1, pageSize, sort));
        List<Pictureinfo> content = all.getContent();
        int totalPages = all.getTotalPages();
        m.addAttribute("content", content);
        m.addAttribute("totalPages", totalPages);
        m.addAttribute("currentPage", p);

        return "admin/picturelist";  //跳转到jsp页面
    }
}
