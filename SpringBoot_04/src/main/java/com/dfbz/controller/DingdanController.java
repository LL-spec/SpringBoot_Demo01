package com.dfbz.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dfbz.mapper.DingdanMapper;
import com.dfbz.po.Dingdan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DingdanController {

    @Autowired(required = false)
    DingdanMapper mapper;

    @RequestMapping("/findAllDingdan")
    @ResponseBody
    public Map getAllDingdan(int pageIndex, int pageSize,String uname,String cname) {
        Map map = new HashMap();
        map.put("currentPage", pageIndex);
        pageIndex = (pageIndex - 1) * pageSize;
        map.put("rows", mapper.findAll(pageIndex, pageSize, uname, cname));
        map.put("total", mapper.getCount(uname, cname));
        return map;
    }

    @RequestMapping("/removeOrder/{did}")
    @ResponseBody
    public String removeOrder(@PathVariable Integer did) {
        int i = mapper.delOrder(did);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }
    }

}
