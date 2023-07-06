package com.student_management.demo.controller.file;


import com.student_management.demo.common.CommonResult;
import com.student_management.demo.controller.file.vo.FileTeacherReqVO;
import com.student_management.demo.service.file.FileService;
import com.student_management.demo.service.redis.RedisService;
import com.student_management.demo.utils.token.JwtTokenUtil;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping("/api")
@Slf4j
public class FileController {
    @Resource
    private FileService fileService;
    @Autowired
    private JwtTokenUtil jwtTokenUtil;
    @Resource
    private RedisService redisService;
    @PostMapping("/pdf/import")
    @ResponseBody
    @ApiOperation("上传文件")
    @PreAuthorize("hasAuthority('/api/pdf/import')")
    public CommonResult<?> uploadFile(@RequestHeader("Authorization") String authHeader,
                                      @RequestPart(value = "file") MultipartFile file,
                                      @RequestPart(value = "subject") String subject) {
        String stuNum = jwtTokenUtil.getUsernameFromToken(authHeader);
        return fileService.upload(stuNum, file, subject);
    }

    @PostMapping("/pdf/student/preview")
    @ApiOperation("学生预览文件")
    @PreAuthorize("hasAuthority('/api/pdf/student/preview')")
    public void previewfileAsStudent(@RequestHeader("Authorization") String authHeader,
                                     @RequestBody String subject,
                                     HttpServletResponse response) {
        String stuNum = jwtTokenUtil.getUsernameFromToken(authHeader);
        fileService.preview(stuNum, subject, response);
    }

    @PostMapping("/pdf/teacher/preview")
    @ApiOperation("老师预览文件")
    @PreAuthorize("hasAuthority('/api/pdf/teacher/preview')")
    public void previewfileAsTeacher(@RequestBody FileTeacherReqVO reqVO,
                                     HttpServletResponse response) {
        fileService.preview(reqVO.getStuNum(), reqVO.getSubject(), response);
    }


}

