package com.dfbz.mapper;

import com.dfbz.po.Dingdan;

import java.util.List;

public interface DingdanMapper {

    public List<Dingdan> findAll(int pageIndex, int pageSize,String uname,String cname);

    public int getCount(String uname, String cname);

    public int delOrder(Integer did);

}
