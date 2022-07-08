package com.dfbz.controller;

import com.alibaba.fastjson.JSONObject;
import com.dfbz.mapper.TeacherMapper;
import com.dfbz.po.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
public class TeacherController {

    @Autowired
    TeacherMapper mapper;

    @ResponseBody
    @RequestMapping("/getTeachers")
    public Map getAllTeacher(int pageIndex, int pageSize, String tname, String tprofessional) {
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", mapper.getAllTeacher(pageIndex, pageSize, tname, tprofessional));
        map.put("total", mapper.getCount(tname, tprofessional));
        return map;
    }

    @RequestMapping("/addTeacher")
    @ResponseBody
    public String addTeacher(@RequestBody Teacher teacher) {
        int i = mapper.insertTeacher(teacher);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }

    }

    @RequestMapping("/modifyTeacher")
    @ResponseBody
    public String modify(@RequestBody Teacher teacher) {
        int i = mapper.updateTeacher(teacher);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }
    }

    @RequestMapping("/removeTeacher/{tid}")
    @ResponseBody
    public String removeTeacher(@PathVariable Integer tid) {
        int i = mapper.delTeacher(tid);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }

    }

}
