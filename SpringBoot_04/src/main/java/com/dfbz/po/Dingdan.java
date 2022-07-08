package com.dfbz.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Dingdan {

    private Integer did;
    private Integer uid;
    private Integer cid;
    private String uname;
    private String cname;
    private String cdetail;
    private Integer number;


}
