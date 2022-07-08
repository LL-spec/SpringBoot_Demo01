package com.dfbz.controller;

import com.dfbz.dao.CourseDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class UserPageController {


    @RequestMapping("/toindex")
    public String toIndex() {

        return "index";
    }


    @RequestMapping("/toprimary")
    public String toPrimary(Model model, String ctype) {
        model.addAttribute("ctype", ctype);
        return "primary";
    }

    @RequestMapping("/tomindle")
    public String toMindle(Model model, String ctype) {
        model.addAttribute("ctype", ctype);
        return "mindle";
    }

    @RequestMapping("/tohight")
    public String tohight(Model model, String ctype) {
        model.addAttribute("ctype", ctype);
        return "hight";
    }


    @RequestMapping("/toshop")
    public String toShop(Integer cid, Model model) {
        model.addAttribute("cid", cid);
//        System.out.println("CID"+cid);
        return "detail";
    }

    @RequestMapping("/myOrder")
    public String myOrder() {
        return "order";
    }

    @RequestMapping("/myCourse")
    public String myCourse() {
        return "course";
    }

    @RequestMapping("/toSuper")
    public String toSuper() {
        return "super";
    }

    @RequestMapping("/toTeacher")
    public String toTeacher() {
        return "teacher";
    }

    @RequestMapping("/toprimaryall")
    public String toprimaryall(String cname, String ctype, Model model) {
        model.addAttribute("ctype", ctype);
        model.addAttribute("cname", cname);
        if (ctype == "小学") {
            return "primaryall";
        } else if (ctype == "中学") {
            return "mindleall";
        } else {
            return "hightall";
        }
    }
}
