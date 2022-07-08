package com.dfbz.service;

import com.dfbz.mapper.CourseMapper;
import com.dfbz.po.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;

@Service
public class CourseService {

    @Autowired
    CourseMapper mapper;

//    public List<Course> showCourse() {
//        List<Course> list = mapper.showAllCourse();
//        return list;
//    }

    public String  addCourse(String cname, BigDecimal cprice, Integer cshop, MultipartFile cphoto, String cdetail, Integer csuper,Integer cpush, String ctype) {
        try {
            File imagePath;  //图片存放地址
//            String path =  ClassUtils.getDefaultClassLoader().getResource("/static/image/").getPath();  //获取项目相对路径
//            String path =  getClass().getClassLoader().getResource("/static/image/").getPath();
            String path =  ResourceUtils.getURL("classpath:").getPath() + "static/image";
            System.out.println(path);

            imagePath = new File(path);

//            imagePath = ClassUtils.getDefaultClassLoader().getResource("/static/image").getPath();

            if (!imagePath.exists()) {
                //不存在，创建
                imagePath.mkdirs();
            }
            //获取文件名称
            String imageName = cphoto.getOriginalFilename();
            //创建图片存放地址
            File imageResultPath = new File(imagePath + "/" + imageName);
//            if (imageResultPath.exists()) {
//                return "false！";
//            }
            cphoto.transferTo(imageResultPath);
            System.out.println("imageResultPath:"+imageResultPath.getCanonicalPath());
//            return "true！";

            mapper.insertCourse(cname, cprice, cshop, imageName, cdetail, csuper, cpush, ctype);
        } catch (IOException e) {
            e.printStackTrace();
        }

        return "success";
    }


}
