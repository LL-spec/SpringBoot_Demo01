package com.dfbz.dao;

import com.dfbz.po.Course;
import jdk.nashorn.internal.scripts.JD;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CourseDao {

    @Autowired(required = false)
    JdbcTemplate jdbcTemplate;

    public List<Course> getList() {
        return jdbcTemplate.query("select * from t_course where csuper=1 limit 0,6", new BeanPropertyRowMapper<>(Course.class));
    }

    //课程的推荐
    public List<Course> getTui(String ctype, String cname) {

        List<Course> list = jdbcTemplate.query("select * from t_course where ctype=? and cname like concat('%',?,'%') limit 0,3", new BeanPropertyRowMapper<>(Course.class), ctype, cname);

        return list;
    }

    public List<Course> getAll(int pageIndex, int pageSize,String ctype, String cname) {
        return jdbcTemplate.query("select * from t_course where cname like concat('%',?,'%') and ctype like concat('%',?,'%') limit ?,?", new BeanPropertyRowMapper<>(Course.class),cname,ctype,pageIndex,pageSize);
    }

    public int getTotal(String cname, String ctype) {
        List<Course> query = jdbcTemplate.query("select * from t_course where cname like concat('%',?,'%') and ctype like concat('%',?,'%')", new BeanPropertyRowMapper<>(Course.class), cname, ctype);
        return query.size();
    }

    public Course getCourseById(Integer cid) {
        Course course = jdbcTemplate.queryForObject("select * from t_course where cid=?", new BeanPropertyRowMapper<Course>(Course.class), cid);
        return course;
    }

    public List<Course> getSuper(int pageIndex, int pageSize,String cname,String ctype) {
        return jdbcTemplate.query("select * from t_course where csuper=1 and cname like concat('%',?,'%') and ctype like concat('%',?,'%') limit ?,?", new BeanPropertyRowMapper<>(Course.class),cname,ctype,pageIndex,pageSize);
    }

    public int getCount(String cname, String ctype) {
        List<Course> query = jdbcTemplate.query("select * from t_course where csuper=1 and cname like concat('%',?,'%') and ctype like concat('%',?,'%')", new BeanPropertyRowMapper<>(Course.class), cname, ctype);
        return query.size();
    }

    public List<Course> getPush() {
        return jdbcTemplate.query("select * from t_course where cpush=1", new BeanPropertyRowMapper<>(Course.class));
    }


}
