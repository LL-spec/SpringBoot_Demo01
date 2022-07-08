package com.dfbz.mapper;

import com.dfbz.po.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {

    public User  selectUserByUserNameAndPass(String uname,String upass);

    //查询所有用户
    public List<User> getAllUsers(int pageIndex, int pageSize);

    public int getUsersCount();

    public int updateUser(User user);

    //添加用户
    public int insertUser(User user);

    //删除用户
    public int delUser(Integer uid);

    //根据id查询
    public User selectById(Integer uid);




}
