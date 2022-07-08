package com.dfbz.dao;

import com.dfbz.po.Course;
import com.dfbz.po.Teacher;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TeacherDao {

    @Autowired(required = false)
    JdbcTemplate jdbcTemplate;

    public List<Teacher> getTeacher() {
        return jdbcTemplate.query("select * from t_teacher limit 0,5", new BeanPropertyRowMapper<>(Teacher.class));
    }

    public List<Teacher> getAllTeacher(int pageIndex, int pageSize,String tname,String tprofessional) {
        return jdbcTemplate.query("select * from t_teacher where tname like concat('%',?,'%') and tprofessional like concat('%',?,'%') limit ?,?", new BeanPropertyRowMapper<>(Teacher.class), tname, tprofessional, pageIndex, pageSize);
    }

    public int getCount(String tname, String tprofessional) {
        List<Teacher> query = jdbcTemplate.query("select * from t_teacher where tname like concat('%',?,'%') and tprofessional like concat('%',?,'%')", new BeanPropertyRowMapper<>(Teacher.class), tname, tprofessional);
        return query.size();
    }

}
