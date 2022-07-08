package com.dfbz.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dingdan {

//    private String out_trade_no;
    private Integer did;
    private Integer uid;
    private Integer cid;
    private Integer number;
    private String uname;
    private String cname;
    private String cdetail;
    private String cphoto;
    private BigDecimal cprice;
    private Integer paymentStatus;
    private BigDecimal total;


}
