package com.sherlock.crud.controller;

import com.sherlock.crud.bean.Department;
import com.sherlock.crud.bean.Msg;
import com.sherlock.crud.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class DeptController {

    @Autowired
    private DepartmentService departmentService;

    /**
     * 返回所有的部门信息
     */
    @RequestMapping("/depts")
    @ResponseBody
    public Msg getDepts(){
        List<Department> departmentList = departmentService.getDepts();
        return Msg.success().addInf("depts", departmentList);
    }
}
