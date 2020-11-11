package com.swfu.hjt.myblog.controller;

import com.swfu.hjt.myblog.entity.Userinfo;
import com.swfu.hjt.myblog.repository.UserinfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserinfoController {
    @Autowired
    UserinfoRepository udao;

    @RequestMapping("/login")
    public String login(String username, String password, String vercode,
                        Model m, HttpSession session){
        //获取session验证码
        String sRand = session.getAttribute("sRand").toString();
        if (!sRand.equalsIgnoreCase(vercode)){  //验证码不相等
            m.addAttribute("msg","验证码错误，请重试！！！！");
            return "login";  //跳转到登录界面
        }

        List<Userinfo> list = udao.findByUsernameEquals(username);
        if (list.size()==0){    //判断用户名是否存在
            m.addAttribute("msg","管理员用户名不存在！！！！");
            return "login";  //跳转到登录界面
        }
        Userinfo userinfo= list.get(0);
        if (userinfo.getPassword().equals(password)){
            //登陆成功
            //记录登陆的用户
            session.setAttribute("loginuser",userinfo);
            return "redirect:/index";      // 重定向跳转到留言信息页面
        }
        else {
            m.addAttribute("msg","管理员密码错误！！！！");
            return "login";  //跳转到登录界面
        }

    }

    @RequestMapping("/out")     //退出登录
    public String out(HttpSession session){
        session.invalidate();   //清空session中的所有内容
        return "login";
    }

    @RequestMapping("/leacots")     //用户评论页面
    public String index(){
        return "/";
    }

    @RequestMapping("/reg")
    public String reg(Userinfo u) {
        udao.save(u);
        return "login";
    }
}
