package com.dfbz.controller;

import com.alibaba.fastjson.JSONArray;
import com.dfbz.dao.TeacherDao;
import com.dfbz.po.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class TeacherController {

    @Autowired
    TeacherDao teacherDao;

    @ResponseBody
    @RequestMapping("/findTeacher")
    public String findTeacher() {

        List<Teacher> teacher = teacherDao.getTeacher();
        String s = JSONArray.toJSONString(teacher);
        return s;
    }

    @RequestMapping("/findAllTeacher")
    @ResponseBody
    public Map findAllTeacher(int pageIndex, int pageSize, String tname, String tprofessional) {
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", teacherDao.getAllTeacher(pageIndex, pageSize, tname, tprofessional));
        map.put("total", teacherDao.getCount(tname, tprofessional));

        return map;
    }

}
