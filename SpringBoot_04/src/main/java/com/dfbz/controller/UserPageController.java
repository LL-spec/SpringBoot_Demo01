package com.dfbz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserPageController {


    @RequestMapping("/toindex")
    public String toIndex() {

        return "index";

    }

    @RequestMapping("/toCoursePage")
    public String toCourse() {
        return "course";
    }

    @RequestMapping("/toTeacherPage")
    public String toTeacher() {
        return "teacher";
    }

    @RequestMapping("/toUserPage")
    public String toUser() {
        return "show";
    }

    @RequestMapping("/toManagerPage")
    public String toManager() {
        return "manager";
    }

    @RequestMapping("/toSelfPage")
    public String toSelf() {
        return "user";
    }

    @RequestMapping("/toOrderPage")
    public String toOrder() {
        return "order";
    }

}

