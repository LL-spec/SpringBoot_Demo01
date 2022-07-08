package com.dfbz.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dfbz.mapper.CourseMapper;
import com.dfbz.po.Course;
import com.dfbz.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;


import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
public class CourseController {

    @Autowired
    CourseMapper courseMapper;
//    @Autowired
//    CourseService service;


    @RequestMapping("/getCourse")
    @ResponseBody
    public Map findAllCourse(int pageIndex, int pageSize,String cname,String ctype) {
//
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", courseMapper.showAllCourse(pageIndex, pageSize, cname, ctype));
        map.put("total", courseMapper.getCount(cname, ctype));
        return map;
    }

    //添加课程
    @RequestMapping(value = "/addCourse")
    @ResponseBody
    public String addCourse(@RequestParam(value = "file",required = false) MultipartFile file,
                            Course course) {

        JSONObject jsonObject = new JSONObject();
        int i;
        try {
            File imagePath;  //图片存放地址
//            String path =  ClassUtils.getDefaultClassLoader().getResource("/static/image/").getPath();  //获取项目相对路径
//            String path =  getClass().getClassLoader().getResource("/static/image/").getPath();
            String path = ResourceUtils.getURL("classpath:").getPath() + "static/image";
//            System.out.println(path);
            imagePath = new File(path);
//            imagePath = ClassUtils.getDefaultClassLoader().getResource("/static/image").getPath();

            if (!imagePath.exists()) {
                //不存在，创建
                imagePath.mkdirs();
            }

            if (file != null) {
                //为了使课程的图片的名称保持唯一性
                UUID uuid = UUID.randomUUID();
                System.out.println(uuid + "-------");
                String s = uuid.toString().replace("-", "");

                //获取文件名称
                String imageName = file.getOriginalFilename();

                int lastIndex = imageName.lastIndexOf(".");
                //截取
                String houzhuiming = imageName.substring(lastIndex, imageName.length());

                //保证唯一性后的文件名
                String newImageName = s + houzhuiming;

                //创建图片存放地址
                File imageResultPath = new File(imagePath + "/" + newImageName);
//                System.out.println("imageResultPath:" + imageResultPath.getCanonicalPath());
//            return "true！";
//            if (imageResultPath.exists()) {
//                return "false！";
//            }
                file.transferTo(imageResultPath);
                i = courseMapper.insertCourse(course.getCname(), course.getCprice(), course.getCshop(), newImageName, course.getCdetail(), course.getCsuper(), course.getCpush(),course.getCtype());
            } else{
                i = courseMapper.insertCourse(course.getCname(), course.getCprice(), course.getCshop(), course.getCphoto(), course.getCdetail(), course.getCsuper(), course.getCpush(),course.getCtype());
            }
            if (i > 0) {
                jsonObject.put("msg", "success");
            }

        } catch (IOException e) {
            e.printStackTrace();
            jsonObject.put("msg", "error");
        }

        return jsonObject.toJSONString();
    }

    @RequestMapping(value = "/removeCourse/{cid}")
    @ResponseBody
    public String removeCourse(@PathVariable Integer cid) {
        int i = courseMapper.delCourse(cid);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }
    }

    @RequestMapping("/modify")
    @ResponseBody
    public String modify(@RequestParam(value = "file",required = false) MultipartFile file, Course course) {
        JSONObject jsonObject = new JSONObject();
        try {
            File imagePath;  //图片存放地址
//            String path =  ClassUtils.getDefaultClassLoader().getResource("/static/image/").getPath();  //获取项目相对路径
            String path = ResourceUtils.getURL("classpath:").getPath() + "static/image";
//            System.out.println(path);
            imagePath = new File(path);

            if (!imagePath.exists()) {
                //不存在，创建
                imagePath.mkdirs();
            }

            if (file != null) {
                //为了使课程的图片的名称保持唯一性
                UUID uuid = UUID.randomUUID();
//            System.out.println(uuid + "-------");
                String s = uuid.toString().replace("-", "");
                //获取文件名称
                String imageName = file.getOriginalFilename();
                int lastIndex = imageName.lastIndexOf(".");
                //截取
                String houzhui = imageName.substring(lastIndex);
                //保证唯一性后的文件名
                String newImageName = s + houzhui;
                //创建图片存放地址
                File imageResultPath = new File(imagePath + "/" + newImageName);
                file.transferTo(imageResultPath);
//                System.out.println("imageResultPath:" + imageResultPath.getCanonicalPath());

                course.setCphoto(newImageName);

            } else {
                Course course1 = courseMapper.findCourseById(course.getCid());
                course.setCphoto(course1.getCphoto());
            }
            int i = courseMapper.updateCourse(course);
            if (i > 0) {
                jsonObject.put("msg", "success");
            }
        } catch (IOException e) {
            e.printStackTrace();
            jsonObject.put("msg", "error");
        }

        return jsonObject.toJSONString();
    }
}
