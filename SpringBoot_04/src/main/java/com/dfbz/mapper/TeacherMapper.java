package com.dfbz.mapper;

import com.dfbz.po.Teacher;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface TeacherMapper {

    //查询所有教师
    public List<Teacher> getAllTeacher(int pageIndex, int pageSize, String tname, String tprofessional);

    public int getCount(String tname, String tprofessional);

    //修改教师信息
    public int updateTeacher(Teacher teacher);

    //添加教师
    public int insertTeacher(Teacher teacher);

    //删除教师
    public int delTeacher(Integer tid);

}
