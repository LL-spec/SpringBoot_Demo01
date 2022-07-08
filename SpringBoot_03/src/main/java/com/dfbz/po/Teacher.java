package com.dfbz.po;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Teacher {

    private Integer tid;
    private String tname;
    private String tpassword;
    private String tscript;
    private String tprofessional;

}
