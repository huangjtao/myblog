package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.Admininfo;
import com.swfu.hjt.myblog.repository.AdmininfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/adminlogin")
public class AdminLoginController {

    @Autowired
    AdmininfoRepository dao;

    @RequestMapping("/login")   //登录提交
    public String login(String username, String password, String vercode,
                        Model m, HttpSession session){
        //获取session验证码
        String sRand = session.getAttribute("sRand").toString();
        if (!sRand.equalsIgnoreCase(vercode)){  //验证码不相等
            m.addAttribute("msg","验证码错误，请重试！！！！");
            return "admin/login";  //跳转到登录界面
        }

        List<Admininfo> list = dao.findByNameEquals(username);
        if (list.size()==0){    //判断用户名是否存在
            m.addAttribute("msg","管理员用户名不存在！！！！");
            return "admin/login";  //跳转到登录界面
        }
        Admininfo admininfo = list.get(0);
        if (admininfo.getPassword().equals(password)){
            //登陆成功
            //记录登陆的用户
            session.setAttribute("loginadmin",admininfo);
            return "redirect:index";      // 重定向跳转到后台管理页面
        }
        else {
            m.addAttribute("msg","管理员密码错误！！！！");
            return "admin/login";  //跳转到登录界面
        }

    }

    @RequestMapping("/out")     //退出登录
    public String out(HttpSession session){
        session.invalidate();   //清空session中的所有内容
        return "admin/login";
    }

    @RequestMapping("/index")     //后台首页
    public String index(){
        return "admin/adminindex";
    }
}
