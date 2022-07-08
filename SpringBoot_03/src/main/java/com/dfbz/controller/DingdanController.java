package com.dfbz.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.dfbz.dao.DingdanDao;
import com.dfbz.po.Dingdan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class DingdanController {

    @Autowired
    DingdanDao dingdanDao;

    @RequestMapping("/xiadingdan")
    @ResponseBody
    public String getDingdan(@RequestBody Dingdan dingdan) {
        boolean xiadingdan = dingdanDao.xiadingdan(dingdan);
        JSONObject jsonObject = new JSONObject();
        if (xiadingdan) {
            jsonObject.put("msg", "success");
        } else {
            jsonObject.put("msg", "error");
        }
        return jsonObject.toJSONString();
    }

    @RequestMapping("/getDingdanById/{uid}")
    @ResponseBody
    public String getDingdanById(@PathVariable Integer uid) {
        List<Dingdan> allById = dingdanDao.getAllById(uid);
        String s = JSONArray.toJSONString(allById);
        return s;
    }

    @RequestMapping("/updateNum")
    @ResponseBody
    public String update(@RequestBody Dingdan dingdan) {
        int i = dingdanDao.updateNum(dingdan);
        JSONObject jsonObject = new JSONObject();
        if (i > 0) {
            jsonObject.put("msg", "success");
            return jsonObject.toJSONString();
        } else {
            jsonObject.put("msg", "error");
            return jsonObject.toJSONString();
        }
    }

    @RequestMapping("/removeOrder/{did}")
    @ResponseBody
    public String removeOrder(@PathVariable Integer did) {
        int i = dingdanDao.delete(did);
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
