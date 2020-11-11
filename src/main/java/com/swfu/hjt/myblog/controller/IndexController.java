package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.*;
import com.swfu.hjt.myblog.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller   //处理前台所有请求
public class IndexController {
    @Autowired
    ArticleinfoRepository adao;
    @Autowired
    WhisperRepository wdao;
    @Autowired
    CommentRepository cdao;
    @Autowired
    PictureinfoRepository pdao;
    @Autowired
    AdmininfoRepository admindao;

    //系统默认进入页面
    @RequestMapping("/")
    public String shouye() {
        return "redirect:index";
    }

    @RequestMapping("/index")
    public String index(Model m, Integer p) {
        int pageSize = 5;  //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        //p=p-1;   //jpa第一页是0，分页从第一页开始
        //Sort sort = Sort.by(Sort.Direction.DESC, "pid");    //排序条件    倒序
        Page<Articleinfo> articlelist = adao.findAll(PageRequest.of(p - 1, pageSize));
        List<Articleinfo> acontent = articlelist.getContent();
        int atotalPages = articlelist.getTotalPages();
        m.addAttribute("acontent", acontent);
        m.addAttribute("atotalPages", atotalPages);
        m.addAttribute("acurrentPage", p);

        return "index";
    }

    @RequestMapping("/details")
    public String details(int aid,Model m,Integer p){
        int pageSize = 5;    //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        Articleinfo artone = adao.getOne(aid);
        m.addAttribute("artone",artone);
        Page<Comment> comlist = cdao.findAll(PageRequest.of(p - 1, pageSize));
        List<Comment> comcontent = comlist.getContent();
        long count = cdao.count();
        m.addAttribute("count",count);
        m.addAttribute("comcontent",comcontent);
        return "details";
    }

    @RequestMapping("/whisper")
    public String whisper(Model m,Integer p){
        int pageSize = 5;    //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        Page<Whisper> whisperlist = wdao.findAll(PageRequest.of(p-1,pageSize));
        Page<Comment> comlist = cdao.findAll(PageRequest.of(p - 1, pageSize));
        List<Comment> comcontent = comlist.getContent();
        m.addAttribute("comcontent",comcontent);
        List<Whisper> wcontent = whisperlist.getContent();
        int wtotalPages = whisperlist.getTotalPages();
        m.addAttribute("wcontent", wcontent);
        m.addAttribute("whisperlist",whisperlist);
        m.addAttribute("wtotalPages",wtotalPages);
        m.addAttribute("wcurrentPage", p);

        return "whisper";
    }

    @RequestMapping("/leacots")
    public String leacots(Model m,Integer p){
        int pageSize = 5;    //每页显示5条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        Page<Comment> commentList = cdao.findAll(PageRequest.of(p-1,pageSize));
        long count = cdao.count();
        List<Comment> lcontent = commentList.getContent();
        int ltotalPages = commentList.getTotalPages();
        m.addAttribute("lcontent",lcontent);
        m.addAttribute("count",count);
        m.addAttribute("commentList",commentList);
        m.addAttribute("ltotalPages",ltotalPages);
        m.addAttribute("lcurrentPage", p);
        return "leacots";
    }

    @RequestMapping("/leacotsadd")
    public String leacotsadd(Comment c){
        cdao.save(c);
        return "redirect:leacots";
    }

    @RequestMapping("/album")
    public String album(Model m,Integer p){
        int pageSize = 6;    //每页显示6条数据
        p = p == null ? 1 : p;   //判断是否传递了页码
        Page<Pictureinfo> pictureinfoList = pdao.findAll(PageRequest.of(p-1,pageSize));
        List<Pictureinfo> pcontent = pictureinfoList.getContent();
        int ptotalPages = pictureinfoList.getTotalPages();
        m.addAttribute("pcontent",pcontent);
        m.addAttribute("pictureinfoList",pictureinfoList);
        m.addAttribute("ptotalPages",ptotalPages);
        m.addAttribute("pcurrentPage", p);
        return "album";
    }

    @RequestMapping("/search")  //搜索
    public String search(String keyword, Model m) {
        List<Articleinfo> keywordall = adao.findByArticlenameContaining(keyword);
        m.addAttribute("keywordall", keywordall);  //绑定参数
        return "search";   //跳转search.jsp页面
    }

    @RequestMapping("/about")
    public String about(String name,Model m){
        List<Admininfo> adminname = admindao.findByNameEquals("hjt");
        m.addAttribute("adminname",adminname);
        return "about";
    }
}
