package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.Whisper;
import com.swfu.hjt.myblog.repository.WhisperRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/whisper")
public class WhisperController {

    @Autowired
    WhisperRepository wdao;

    @RequestMapping("/add")    //跳转到添加页面
    public String add(){

        return "admin/whisperadd";
    }
    @RequestMapping("/save")    //添加保存到数据库
    public String save(Whisper w){
        wdao.save(w);
        return "redirect:list";

    }
    @RequestMapping("/edit")
    public String edit(int wid, Model m){
        Whisper one = wdao.getOne(wid);
        m.addAttribute("one",one);
        return "admin/whisperupdate";
    }
    @RequestMapping("/update")
    public String update(Whisper w){
        wdao.save(w);
        return "redirect:list";
    }

    @RequestMapping("/detail")
    public String detail(int wid,Model m){
        Whisper one = wdao.getOne(wid);
        m.addAttribute("one",one);

        return "admin/whisperdetail";
    }

    @RequestMapping("/delete")
    public String delete(int wid){
        wdao.deleteById(wid);    //根据id删除
        return "redirect:list";   //删除成功跳转页面
    }

    @RequestMapping("/list")    //localhost:9999/article/list
    public String list(Model m, Integer p) {
        int pageSize = 5;  //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        //p=p-1;   //jpa第一页是0，分页从第一页开始
        //Sort sort = Sort.by(Sort.Direction.DESC, "pid");    //排序条件    倒序
        Page<Whisper> all = wdao.findAll(PageRequest.of(p - 1, pageSize));
        List<Whisper> content = all.getContent();
        int totalPages = all.getTotalPages();
        m.addAttribute("content", content);
        m.addAttribute("totalPages", totalPages);
        m.addAttribute("currentPage", p);

        return "admin/whisperlist";  //跳转到jsp页面
    }

}
