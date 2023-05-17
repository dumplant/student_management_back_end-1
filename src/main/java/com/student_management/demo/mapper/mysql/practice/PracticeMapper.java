package com.student_management.demo.mapper.mysql.practice;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.student_management.demo.mapper.dataobject.practice.PracticeDO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface PracticeMapper extends BaseMapper<PracticeDO>{

    /**
     * 按照学号查询Practise
     * @param stu_num
     * @return
     */
    default PracticeDO selectPracticeByStuNum(String stu_num) {
        QueryWrapper<PracticeDO> wrapper = new QueryWrapper<>();
        //查询条件
        wrapper.eq("stu_num", stu_num);
        return selectOne(wrapper);
    }

    /**
     * 按照学生id查询Practise
     * @param stu_id
     * @return
     */
    default PracticeDO selectPracticeByStuId(Long stu_id) {
        QueryWrapper<PracticeDO> wrapper = new QueryWrapper<>();
        //查询条件
        wrapper.eq("stu_id", stu_id);
        return selectOne(wrapper);
    }
    int insertPractice(Long stuId,Long stuNum,String stuName, String title,String director,String constitution,String content,String time,String result, int score,int status);
}
