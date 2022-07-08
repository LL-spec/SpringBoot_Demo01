package com.dfbz.controller;

import com.alibaba.fastjson.JSONObject;
import com.dfbz.dao.UserDao;
import com.dfbz.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import javax.xml.ws.RequestWrapper;

@Controller
public class UserController {

    @Autowired
    UserDao userDao;

    @RequestMapping(value = "/register")
    @ResponseBody
    public String register(@RequestBody User user) {
        boolean register = userDao.register(user);
        JSONObject jsonObject = new JSONObject();
        if (register) {
            jsonObject.put("msg", "ok");
        } else {
            jsonObject.put("msg", "failed");
        }
        return jsonObject.toJSONString();
    }

    @RequestMapping("/login")
    public String login(String uname, String upass, HttpSession session) {
        User login = userDao.login(uname, upass);
        session.setAttribute("user", login);

        if (login != null) {
            return "index";
        } else {
            return "error";
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "index";
    }


}
