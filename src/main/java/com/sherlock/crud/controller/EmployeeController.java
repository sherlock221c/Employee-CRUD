package com.sherlock.crud.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sherlock.crud.bean.Employee;
import com.sherlock.crud.bean.Msg;
import com.sherlock.crud.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Controller
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;


    /**
     * 单个删除和批量删除二合一
     * @param ids
     * @return
     */
    @RequestMapping(value = "/emp/{ids}", method = RequestMethod.DELETE)
    @ResponseBody
    public Msg deleteEmp(@PathVariable("ids")String ids) {
        if (ids.contains("-")){
            List<Integer> list = new ArrayList<Integer>();
            String[] strings = ids.split("-");
            for (String string : strings) {
                list.add(Integer.parseInt(string));
            }
            employeeService.deletBatch(list);
        }else{
            Integer id = Integer.parseInt(ids);
            employeeService.deleteEmp(id);
        }
        return Msg.success();
    }

    /**
     * 员工数据更新
     * @param employee
     * @return
     */
    @RequestMapping(value = "/emp/{empId}", method = RequestMethod.PUT)
    @ResponseBody
    public Msg saveEmp(Employee employee) {
        System.out.println("将要更新的信息"+employee);
        employeeService.updateEmp(employee);
        return Msg.success();
    }

    /**
     * 根据员工id获取员工信息
     * @param id
     * @return
     */
    @RequestMapping(value = "/emp/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Msg getEmp(@PathVariable("id")Integer id) {
        Employee employee = employeeService.getEmp(id);
        return Msg.success().addInf("emp", employee);
    }

    /**
     * 检查用户名是否存在
     *
     * @return
     */
    @RequestMapping("/checkUser")
    @ResponseBody
    public Msg checkUsername(@RequestParam("empName") String empName) {
        String regx = "(^[a-z0-9_-]{6,16}$)|(^[\\u2E80-\\u9FFF]{2,5}$)";
        if (!empName.matches(regx)) {
            return Msg.fail().addInf("va_msg", "用户名必须是2-5位中文或者是6-16位英文和数字的组合");
        }
        boolean result = employeeService.checkUser(empName);
        if (result) {
            return Msg.success();
        } else {
            return Msg.fail().addInf("va_msg", "用户名不可用");
        }
    }

    /**
     * 员工保存
     *
     * @return
     */
    @RequestMapping(value = "/emp", method = RequestMethod.POST)
    @ResponseBody
    public Msg saveEmp(@Valid Employee employee, BindingResult result) {
        System.out.println(employee);
        if (result.hasErrors()) {
            Map<String, Object> map = new HashMap<String, Object>();
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
                System.out.println("错误的字段名:" + fieldError.getField());
                System.out.println("错误信息:" + fieldError.getDefaultMessage());
                map.put(fieldError.getField(), fieldError.getDefaultMessage());
            }
            return Msg.fail().addInf("errorField", map);
        } else {
            employeeService.saveEmp(employee);
            return Msg.success();
        }
    }

    /**
     * 导入jackson包，才能保证responsebody的正常使用
     *
     * @param pn
     * @return
     */
    @RequestMapping("/emps")
    @ResponseBody //加上@ResponseBody后，会直接返回json数据
    public Msg getEmpsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        PageHelper.startPage(pn, 5);
        List<Employee> emps = employeeService.getAllEmps();
        PageInfo pageInfo = new PageInfo(emps, 5);
        return Msg.success().addInf("pageInfo", pageInfo);
//        return pageInfo;
    }


    /**
     * 查询员工数据(分页查询)
     *
     * @return
     */
    //@RequestMapping("/emps")
    public String getEmps(@RequestParam(value = "pn", defaultValue = "1") Integer pn,
                          Model model) {
        //引入PageHelper分页插件
        PageHelper.startPage(pn, 5);
        //startPage后面紧跟的这个查询就是一个分页查询
        List<Employee> emps = employeeService.getAllEmps();
        //使用PageInfo包装查询后的结果，然后只需要将这个pageInfo交给页面就可以了
        //封装了详细的分页信息，包括有我们查询出来的数据
        PageInfo pageInfo = new PageInfo(emps, 5);
        model.addAttribute("pageInfo", pageInfo);
        return "list";
    }

}
