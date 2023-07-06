package com.student_management.demo.controller.service;

import com.student_management.demo.common.CommonResult;
import com.student_management.demo.controller.science.vo.ScienceRespVO;
import com.student_management.demo.controller.service.vo.ServiceRespVO;
import com.student_management.demo.controller.service.vo.ServiceImportReqVO;
import com.student_management.demo.controller.service.vo.ServiceImportRespVO;
import com.student_management.demo.convert.science.ScienceConvert;
import com.student_management.demo.convert.service.ServiceConvert;
import com.student_management.demo.mapper.dataobject.science.ScienceDO;
import com.student_management.demo.mapper.dataobject.service.ServiceDO;
import com.student_management.demo.service.service.ServiceService;
import com.student_management.demo.service.user.UserBasicService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.Parameter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/service/")
@Api(tags = "骨干服务表相关接口")
@Slf4j
public class ServiceController {

    @Resource
    private ServiceService service;

    @Resource
    private UserBasicService userBasicService;

    @ApiOperation("骨干服务表上传接口")
    @PostMapping("/import")
    @PreAuthorize("hasAuthority('/api/service/import')")
    public CommonResult<ServiceImportRespVO> importScienceSheet(@RequestHeader("Authorization") String authHeader,@RequestBody List<ServiceImportReqVO> userList) {
        String token = authHeader.substring(7);
        Map<String,String> map = userBasicService.getCurrentUserInfo(token);

        for (ServiceImportReqVO user : userList) {
            user.setStuId(Long.parseLong(map.get("id")));
            user.setStuName(map.get("name"));
            user.setStuNum(map.get("num"));
            user.setCreateUserId(Long.parseLong(map.get("id")));
            user.setUpdateUserId(Long.parseLong(map.get("id")));
        }

//        List<ScienceImportReqVO> userList = ExcelUtils.read(file,GradeImportExcelVO.class);
//        GradeImportRespVO respVO = service.importGradeList(userList);

        ServiceImportRespVO respVO = service.importRecord(userList);
        return CommonResult.success(respVO);
    }
    // CommonResult<ServiceImportRespVO>
//    public CommonResult<ServiceImportRespVO> importServiceSheet(@RequestBody List<ServiceImportReqVO> userList) {
////        console.log(reqVO)
//        System.out.println(userList);
////        List<ServiceImportReqVO> userList = ExcelUtils.read(file,GradeImportExcelVO.class);
////        GradeImportRespVO respVO = service.importGradeList(userList);
//
//        ServiceImportRespVO respVO = service.importRecord(userList);
//        return CommonResult.success(respVO);
//    }

    @GetMapping("/list")
    @ApiOperation("获得骨干服务岗位情况列表")
    @PreAuthorize("hasAuthority('/api/service/list')")
    @Parameter(name = "ids", description = "编号列表", required = true, example = "1024,2048")
    public CommonResult<List<ServiceRespVO>> getList(@RequestParam("ids") Collection<Long> ids) {
        List<ServiceDO> list = service.getList(ids);
        return CommonResult.success(ServiceConvert.INSTANCE.convertList(list));
    }


    @GetMapping("/getAllList")
    @ApiOperation("获得骨干服务岗位情况所有列表")
    @PreAuthorize("hasAuthority('/api/service/getAllList')")
    public CommonResult<List<ServiceRespVO>> getAllList() {
        List<ServiceDO> list = service.getAllList();
        return CommonResult.success(ServiceConvert.INSTANCE.convertList(list));
    }
@GetMapping("/getMyList")
    @ApiOperation("学生获得自己填写的骨干服务情况所有列表")
    @PreAuthorize("hasAuthority('/api/service/getMyList')")
    public CommonResult<List<ServiceRespVO>> getMyList(String num) {
        System.out.println("num = " + num);
        List<ServiceDO> list = service.getMyList(num);
        return CommonResult.success(ServiceConvert.INSTANCE.convertList(list));
    }

}
