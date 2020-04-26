package com.sherlock.crud.test;

import com.sherlock.crud.bean.Department;
import com.sherlock.crud.bean.Employee;
import com.sherlock.crud.dao.DepartmentMapper;
import com.sherlock.crud.dao.EmployeeMapper;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class MapperTest {

    @Autowired
    DepartmentMapper departmentMapper;

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    SqlSession sqlSession;

    @Test
    public void testCRUD() {
        System.out.println(departmentMapper);
        //插入几个部门
//        departmentMapper.insertSelective(new Department(null,"开发"));
//        departmentMapper.insertSelective(new Department(null,"测试"));

        //生成员工数据，测试员工插入
        employeeMapper.insertSelective(new Employee(null, "sherlock", "M", "Jerry111@qq.com", 1));
        //批量插入多个员工

//        EmployeeMapper employeeMapper = sqlSession.getMapper(EmployeeMapper.class);
//        for (int i = 0; i < 100; i++) {
//            String uid = UUID.randomUUID().toString().substring(0,5)+i;
//            employeeMapper.insertSelective(new Employee(null, uid, "M", uid+"@qq.com", 1));
//        }
//        System.out.println("完成");
    }
}
