package com.dfbz.mapper;

import com.dfbz.po.Course;
import org.apache.ibatis.annotations.Mapper;

import java.math.BigDecimal;
import java.util.List;

@Mapper
public interface CourseMapper {

//    显示所有课程信息
    public List<Course> showAllCourse(int pageIndex, int pageSize,String cname,String ctype);

    public int getCount(String cname, String ctype);

    //添加课程 包括图片上传
    public int insertCourse(String cname, BigDecimal cprice, Integer cshop, String cphoto, String cdetail, Integer csuper,Integer cpush, String ctype);


    //删除课程
    public int delCourse(Integer cid);

    //修改课程
    public int updateCourse(Course course);

    //    查找课程信息
    public  Course findCourseById(Integer cid);




}
