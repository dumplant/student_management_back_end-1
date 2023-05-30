package com.student_management.demo.controller.science;

import com.student_management.demo.common.CommonResult;
import com.student_management.demo.controller.science.vo.ScienceImportReqVO;
import com.student_management.demo.controller.science.vo.ScienceImportRespVO;
import com.student_management.demo.controller.science.vo.ScienceRespVO;
import com.student_management.demo.convert.science.ScienceConvert;
import com.student_management.demo.mapper.dataobject.science.ScienceDO;
import com.student_management.demo.service.science.ScienceService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.v3.oas.annotations.Parameter;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;

@RestController
@RequestMapping("/api/science/")
@Api(tags = "科研表相关接口")
public class ScienceController {

    @Resource
    private ScienceService service;

    @ApiOperation("科研表上传接口")
    @PostMapping("/import")
    // CommonResult<ScienceImportRespVO>
    public CommonResult<ScienceImportRespVO> importScienceSheet(@RequestBody List<ScienceImportReqVO> userList) {
//        console.log(reqVO)
        System.out.println(userList);
//        List<ScienceImportReqVO> userList = ExcelUtils.read(file,GradeImportExcelVO.class);
//        GradeImportRespVO respVO = service.importGradeList(userList);

        ScienceImportRespVO respVO = service.importRecord(userList);
        return CommonResult.success(respVO);
    }


    @GetMapping("/list")
    @ApiOperation("获得科研情况列表")
    @Parameter(name = "ids", description = "编号列表", required = true, example = "1024,2048")
    public CommonResult<List<ScienceRespVO>> getList(@RequestParam("ids") Collection<Long> ids) {
        List<ScienceDO> list = service.getList(ids);
        return CommonResult.success(ScienceConvert.INSTANCE.convertList(list));
    }

}
