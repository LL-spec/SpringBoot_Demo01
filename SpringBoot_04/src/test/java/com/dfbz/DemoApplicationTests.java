package com.dfbz;

import com.dfbz.po.Course;
import com.dfbz.service.CourseService;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.ContextConfiguration;

import java.util.List;

@SpringBootTest
//@EnableAutoConfiguration(exclude = {DataSourceAutoConfiguration.class})
class DemoApplicationTests {

    @Autowired
    CourseService service;

//    @Test
//    void contextLoads() {
//        List<Course> list = service.showCourse();
//        for (Course course : list) {
//            System.out.println(course);
//        }
//    }


}
