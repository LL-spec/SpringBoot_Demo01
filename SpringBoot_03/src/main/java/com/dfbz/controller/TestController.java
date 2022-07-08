package com.dfbz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/person")
    @ResponseBody
    public String getperson() {
        return "{success:ok,pname:'aaa'}";
    }
}
