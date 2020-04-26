package com.sherlock.crud.service;

import com.sherlock.crud.bean.Department;
import com.sherlock.crud.dao.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    public List<Department> getDepts() {
        List<Department> departmentList = departmentMapper.selectByExample(null);
        return departmentList;
    }
}
