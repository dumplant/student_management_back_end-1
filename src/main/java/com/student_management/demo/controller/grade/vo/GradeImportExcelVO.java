package com.student_management.demo.controller.grade.vo;

import com.alibaba.excel.annotation.ExcelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

/**
 * 用户 Excel 导入 VO
 */
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = false) // 设置 chain = false，避免用户导入有问题
public class GradeImportExcelVO {

    @ExcelProperty("学号")
    private String stu_num;

    @ExcelProperty("姓名")
    private String stu_name;

    @ExcelProperty("GPA")
    private float gpa;

}
