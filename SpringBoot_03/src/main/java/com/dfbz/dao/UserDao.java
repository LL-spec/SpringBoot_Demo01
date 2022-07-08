package com.dfbz.dao;

import com.dfbz.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

    @Autowired(required = false)
    JdbcTemplate jdbcTemplate;

    //注册功能
    public boolean register(User user) {
        int i = jdbcTemplate.update("insert into t_user(uname,uemail,utel,upass,usal,umessage) values(?,?,?,?,?,?)",
                user.getUname(), user.getUemail(), user.getUtel(), user.getUpass(), user.getUsal(), user.getUmessage());
        return i > 0;
    }

    //登录功能
    public User login(String uname, String upass) {
        User user = jdbcTemplate.queryForObject("select * from t_user where uname=? and upass=?",
                new BeanPropertyRowMapper<>(User.class), uname, upass);
        return user;
    }

}
