package com.dfbz.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dfbz.dao.CourseDao;
import com.dfbz.po.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CourseController {

    @Autowired
    CourseDao courseDao;

    @RequestMapping("/getCsuper")
    @ResponseBody
    public String getCsuper() {
        List<Course> list = courseDao.getList();
        String s = JSONArray.toJSONString(list);
        return s;
    }

    @ResponseBody
    @RequestMapping("/tcourse")
    public String tcourse(String ctype, String cname) {

        List<Course> list = courseDao.getTui(ctype, cname);
        String s = JSONArray.toJSONString(list);
        return s;
    }

    @ResponseBody
    @RequestMapping("/coursedetail")
    public  String  courseDetail(Integer cid){


        Course coures = courseDao.getCourseById(cid);


        String s = JSONObject.toJSONString(coures);

        return s;
    }

    @ResponseBody
    @RequestMapping("/getAllSuper")
    public Map getAllSuper(int pageIndex, int pageSize,String cname,String ctype) {
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", courseDao.getSuper(pageIndex, pageSize, cname, ctype));
        map.put("total", courseDao.getCount(cname, ctype));

        return map;
    }

    @ResponseBody
    @RequestMapping("/getAll")
    public Map getAll(int pageIndex, int pageSize,String cname,String ctype) {
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", courseDao.getAll(pageIndex, pageSize, ctype, cname));
        map.put("total", courseDao.getTotal(cname, ctype));

        return map;

    }

    @ResponseBody
    @RequestMapping("/getPush")
    public String getPush() {
        List<Course> push = courseDao.getPush();
        String s = JSONArray.toJSONString(push);
        return s;
    }

}
