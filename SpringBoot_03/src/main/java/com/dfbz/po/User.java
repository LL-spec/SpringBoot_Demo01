package com.dfbz.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {

    private Integer uid;
    private String uname;
    private String uemail;
    private String utel;
    private String upass;
    private BigDecimal usal;
    private String umessage;

}
