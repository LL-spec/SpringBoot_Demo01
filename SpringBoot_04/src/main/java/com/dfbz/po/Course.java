package com.dfbz.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Course {

    private Integer cid;
    private String cname;
    private String ctype;
    private BigDecimal cprice;
    private Integer cshop;
    private String cphoto;
    private String cdetail;
    private Integer csuper;
    private Integer cpush;

}
