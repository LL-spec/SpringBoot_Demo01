package com.dfbz.controller;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dfbz.mapper.UserMapper;
import com.dfbz.po.User;
import com.sun.javafx.collections.MappingChange;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.WebParam;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {


    @Autowired(required = false)
    UserMapper userMapper;


    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session) {

        User user = userMapper.selectUserByUserNameAndPass(username, password);

        session.setAttribute("user", user);
        String s = "";

        if (user != null) {
            s = "show";
        } else {
            s = "index";
        }
        return s;
    }

    @ResponseBody
    @RequestMapping("/getUsers")
    public Map getUsers(int pageIndex, int pageSize) {
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", userMapper.getAllUsers(pageIndex, pageSize));
        map.put("total", userMapper.getUsersCount());
        return map;
    }


    @ResponseBody
    @RequestMapping("/updateUsers")
    public String modify(@RequestBody User user) {
        System.out.println(user);
        JSONObject jsonObject = new JSONObject();
        int i = userMapper.updateUser(user);
        System.out.println(i);
        if (i > 0) {
            jsonObject.put("msg", "success");

            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }
    }

    @ResponseBody
    @RequestMapping("/addUser")
    public String addUser(@RequestBody User user) {
        JSONObject jsonObject = new JSONObject();

        int i = userMapper.insertUser(user);
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        //重新初始化session
        session.invalidate();
        return "index";
    }

    @RequestMapping("/removeUser/{uid}")
    @ResponseBody
    public String remove(@PathVariable Integer uid) {
        int i = userMapper.delUser(uid);
        JSONObject jsonObject=new JSONObject();

        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();

        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }

    }

    @RequestMapping("/selectSelf/{uid}")
    @ResponseBody
    public String selectSelf(@PathVariable Integer uid) {
        User user = userMapper.selectById(uid);
        String s = JSONArray.toJSONString(user);
        return s;
    }

}
