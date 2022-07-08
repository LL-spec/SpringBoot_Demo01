package com.dfbz.dao;

import com.dfbz.po.Dingdan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class DingdanDao {

    @Autowired(required = false)
    JdbcTemplate jdbcTemplate;

    //    下订单
    public boolean xiadingdan(Dingdan dingdan) {
        return jdbcTemplate.update("insert into t_dingdan(uid,cid,number) values (?,?,?)", dingdan.getUid(), dingdan.getCid(),dingdan.getNumber()) > 0;
    }

    //查看订单
    public List<Dingdan> getAllById(Integer uid) {
        String sql = "SELECT did,course.cname,course.cphoto,course.cdetail,course.cprice,dingdan.number from t_user user,t_dingdan dingdan,t_course course\n" +
                "        where user.uid=dingdan.uid\n" +
                "          and course.cid=dingdan.cid\n" +
                "and user.uid=? and isnull(paymentStatus) ";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Dingdan.class), uid);
    }

    public int updateNum(Dingdan dingdan) {
        return jdbcTemplate.update("update t_dingdan set number=? where did=?", dingdan.getNumber(), dingdan.getDid());
    }

    public int delete(Integer did) {
        return jdbcTemplate.update("delete from t_dingdan where did=?", did);
    }

    //支付成功后 将payment改为1
    public int updateStatus(Integer did) {
        return jdbcTemplate.update("update t_dingdan set paymentStatus=1 where did=?", did);
    }

    public int updateAllStatus(Integer uid) {
        return jdbcTemplate.update("update t_dingdan set paymentStatus=1 where uid=?", uid);
    }

}
