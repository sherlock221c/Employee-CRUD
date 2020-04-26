<%--
  Created by IntelliJ IDEA.
  User: sherlock_221c
  Date: 2020/4/16
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>员工列表</title>
        <%
            pageContext.setAttribute("PRO_PATH", request.getContextPath());
        %>
        <script src="${PRO_PATH}/static/js/jquery-1.12.4.min.js" type="text/javascript"></script>
        <link href="${PRO_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="${PRO_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>

        <!-- Modal -->
        <div class="modal fade" id="empAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">员工添加</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">empName</label>
                                <div class="col-sm-10">
                                    <input type="text" name="empName" class="form-control" id="empName_input"
                                           placeholder="empName">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">email</label>
                                <div class="col-sm-10">
                                    <input type="email" name="email" class="form-control" id="email_input"
                                           placeholder="email">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">gender</label>
                                <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <input type="radio" name="gender" id="gender_radio1" value="M"
                                               checked="checked"> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="gender" id="gender_radio2" value="F"> 女
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">deptName</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="dId" id="dept_select">
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="emp_save_btn">保存</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 编辑Modal -->
        <div class="modal fade" id="empEditModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">员工修改</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label class="col-sm-2 control-label">empName</label>
                                <div class="col-sm-10">
                                    <p class="form-control-static" id="empName_update_static"></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">email</label>
                                <div class="col-sm-10">
                                    <input type="email" name="email" class="form-control" id="email_edit_input"
                                           placeholder="email">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">gender</label>
                                <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <input type="radio" name="gender" id="gender_edit_radio1" value="M"
                                               checked="checked"> 男
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="gender" id="gender_edit_radio2" value="F"> 女
                                    </label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">deptName</label>
                                <div class="col-sm-4">
                                    <select class="form-control" name="dId" id="dept_edit_select">
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="emp_edit_btn">更新</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-12">

            <div class="container">
                <!-- 标题 -->
                <div class="row">
                    <h1>SSM-CRUD</h1>
                </div>
            </div>
            <!-- 按钮 -->
            <div class="row">
                <div class="col-md-4 col-md-offset-8">
                    <button class="btn btn-primary" id="emp_add_button">新增</button>
                    <button class="btn btn-danger" id="delete_all_btn">删除</button>
                </div>
            </div>
            <!-- 显示表格数据 -->
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-hover" id="emp_table">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" id="check_all"/>
                            </th>
                            <th>#</th>
                            <th>empName</th>
                            <th>gender</th>
                            <th>email</th>
                            <th>deptName</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- 显示分页信息 -->
            <div class="row">
                <div class="col-md-6" id="page_info_area">
                </div>
                <div class="col-md-6" id="page_nav_area">
                </div>
            </div>
        </div>
        <script type="text/javascript">
            //记录总记录数的全局变量
            var totalPages, currentPage;

            //页面加载完之后，直接去发送一个ajax请求，要到分页的数据
            $(function () {
                to_page(1);
            });

            //总全选按钮
            $("#check_all").click(function () {
                //attr获取checked是undefined;
                //dom原生的属性用prop获取合适，自定义属性用attr获取合适
                $(".item_check").prop("checked", $(this).prop("checked"));
            });

            //单个选定按钮
            $(document).on("click", ".item_check", function () {
                var flag = $(".item_check:checked").length==$(".item_check").length;
                $("#check_all").prop("checked", flag);
            });

            //点击全部删除，就批量删除
            $("#delete_all_btn").click(function () {
                var empNames = "";
                var del_ids = "";
                $.each($(".item_check:checked"),function () {
                    empNames += $(this).parents("tr").find("td:eq(2)").text()+",";
                    del_ids += $(this).parents("tr").find("td:eq(1)").text()+"-";
                });
                empNames = empNames.substring(0, empNames.length-1);
                del_ids = del_ids.substring(0, del_ids.length-1);
                if (confirm("确定删除【"+empNames+"】吗？")){
                    $.ajax({
                        url:"${PRO_PATH}/emp/"+del_ids,
                        type:"DELETE",
                        success:function (result) {
                            to_page(currentPage);
                        }
                    });
                }
            });

            //点击更新，更新员工信息
            $("#emp_edit_btn").click(function () {
                var email = $("#email_edit_input").val();
                var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
                if (!regEmail.test(email)) {
                    show_validate_msg("#email_edit_input", "error", "邮箱格式不正确");
                    return false;
                } else {
                    show_validate_msg("#email_edit_input", "success", "");
                }

                $.ajax({
                    url: "${PRO_PATH}/emp/" + $(this).attr("edit-id"),
                    type: "PUT",
                    data: $("#empEditModal form").serialize(),
                    success: function (result) {
                        //关闭模态框
                        $("#empEditModal").modal("hide");
                        //返回当前页
                        to_page(currentPage);
                    }
                });
            });

            //点击删除，删除单条雇员信息
            $(document).on("click", ".delete_btn", function () {
                var empName = $(this).parents("tr").find("td:eq(2)").text();
                var empId = $(this).attr("delId");
                if (confirm("确认删除【" + empName + "】吗？")) {
                    $.ajax({
                        url: "${PRO_PATH}/emp/" + empId,
                        type: "DELETE",
                        success: function (result) {
                            alert(result.msg);
                            to_page(currentPage);
                        }
                    });
                }
            });

            //弹出编辑员工模态框
            $(document).on("click", ".edit_btn", function () {
                //查出员工信息，显示员工信息
                getDepts("#empEditModal select");
                getEmp($(this).attr("empId"));
                $("#emp_edit_btn").attr("edit-id", $(this).attr("empId"));
                $("#empEditModal").modal({
                    backdrop: "static"
                });
            });

            //根据员工id获取员工信息
            function getEmp(id) {
                $.ajax({
                    url: "${PRO_PATH}/emp/" + id,
                    type: "GET",
                    success: function (result) {
                        var empData = result.extend.emp;
                        $("#empName_update_static").text(empData.empName);
                        $("#email_edit_input").val(empData.email);
                        $("#empEditModal input[name=gender]").val([empData.gender]);
                        $("#empEditModal select").val([empData.dId]);
                    }
                });
            }

            //显示雇员信息
            function build_emps_table(data) {
                $("#emp_table tbody").empty();
                var emps = data.extend.pageInfo.list;
                $.each(emps, function (index, item) {
                    var checkBoxTd = $("<td><input type='checkbox' class='item_check'></td>")
                    var empIdTd = $("<td></td>").append(item.empId);
                    var empNameTd = $("<td></td>").append(item.empName);
                    var gender = item.gender == 'M' ? "男" : "女";
                    var genderTd = $("<td></td>").append(gender);
                    var email = $("<td></td>").append(item.email);
                    var deptNameTd = $("<td></td>").append(item.department.deptName);
                    var editButton = $("<button></button>").addClass("btn btn-primary btn-sm edit_btn")
                        .append("<span></span>").addClass("glyphicon glyphicon-pencil").append("编辑");
                    editButton.attr("empId", item.empId);
                    var deleteButton = $("<button></button>").addClass("btn btn-danger btn-sm delete_btn")
                        .append("<span></span>").addClass("glyphicon glyphicon-remove").append("删除");
                    deleteButton.attr("delId", item.empId);
                    var buttonTd = $("<td></td>").append(editButton).append(" ").append(deleteButton);
                    $("<tr></tr>").append(checkBoxTd)
                        .append(empIdTd)
                        .append(empNameTd)
                        .append(genderTd)
                        .append(email)
                        .append(deptNameTd)
                        .append(buttonTd)
                        .appendTo("#emp_table tbody");
                });
            }

            //解析并显示页面相关数据
            function build_page_inf(data) {
                $("#page_info_area").empty();
                $("#page_info_area").append("当前" + data.extend.pageInfo.pageNum + "页，总共" +
                    data.extend.pageInfo.pages + "页，总共" +
                    data.extend.pageInfo.total + "条记录");
                totalPages = data.extend.pageInfo.total;
                currentPage = data.extend.pageInfo.pageNum;
            }

            //解析并显示分页条
            function build_page_nav(data) {
                $("#page_nav_area").empty();
                var ul = $("<ul></ul>").addClass("pagination");
                var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
                var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));

                if (data.extend.pageInfo.hasPreviousPage == false) {
                    firstPageLi.addClass("disabled");
                    prePageLi.addClass("disabled");
                } else {
                    firstPageLi.click(function () {
                        to_page(1);
                    });

                    prePageLi.click(function () {
                        to_page(data.extend.pageInfo.pageNum - 1);
                    });
                }

                var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
                var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
                if (data.extend.pageInfo.hasNextPage == false) {
                    nextPageLi.addClass("disabled");
                    lastPageLi.addClass("disabled");
                } else {
                    nextPageLi.click(function () {
                        to_page(data.extend.pageInfo.pageNum + 1);
                    });

                    lastPageLi.click(function () {
                        to_page(data.extend.pageInfo.pages);
                    });
                }

                ul.append(firstPageLi).append(prePageLi);
                $.each(data.extend.pageInfo.navigatepageNums, function (index, item) {
                    var numLi = $("<li></li>").append($("<a></a>").append(item));
                    if (data.extend.pageInfo.pageNum == item) {
                        numLi.addClass("active");
                    }
                    numLi.click(function () {
                        to_page(item);
                    });
                    ul.append(numLi);
                });
                ul.append(nextPageLi).append(lastPageLi);

                var navEle = $("<nav></nav>").append(ul);
                navEle.appendTo("#page_nav_area");
            }

            //刷新局部页面的员工数据
            function to_page(pn) {
                $("#check_all").prop("checked", false);
                $.ajax({
                    url: "${PRO_PATH}/emps",
                    data: "pn=" + pn,
                    type: "GET",
                    success: function (data) {
                        //解析并显示员工数据
                        build_emps_table(data);
                        //解析并显示分页信息
                        build_page_inf(data);
                        //解析并显示分页条
                        build_page_nav(data);
                    }
                });
            }

            function reset_form(element) {
                //jquery没有reset方法因此要用[0]选出js对象然后调用其reset方法
                $(element)[0].reset();
                $(element).find("*").removeClass("has-error has-success");
                $(element).find(".help-block").text("");
            }

            //点击添加，弹出添加员工的模态框
            $("#emp_add_button").click(function () {
                //重置表单，比如第一次添加完员工，由于页面还没有刷新，这里面之前填写的数据仍然存在，而且不需要经过校验，又能进行添加
                reset_form("#empAddModal form");
                //发送ajax请求，查出部门信息，显示在下拉列表当中
                getDepts("#empAddModal select");
                //弹出模态框
                $("#empAddModal").modal({
                    backdrop: "static"
                });
            });

            //查出所有部门信息，并显示在下拉列表当中
            function getDepts(ele) {
                $(ele).empty();
                $.ajax({
                    url: "${PRO_PATH}/depts",
                    type: "GET",
                    success: function (result) {
                        //显示部门信息在下拉列表当中
                        $.each(result.extend.depts, function () {
                            var optionEle = $("<option></option>").append(this.deptName).attr("value", this.deptId);
                            optionEle.appendTo(ele);
                        });
                    }
                });
            }

            //点击保存按钮，保存员工
            $("#emp_save_btn").click(function () {
                //前端校验
                if (!validate_add_form()) {
                    return false;
                }
                //假如当前保存按钮中存在ajax-va的值为error，就不进行后面的保存请求发送
                if ($(this).attr("ajax-va") == "error") {
                    return false;
                }
                $.ajax({
                    url: "${PRO_PATH}/emp",
                    type: "POST",
                    data: $("#empAddModal form").serialize(),
                    success: function (result) {
                        if (result.code == 100) {
                            console.log("成功啦！");
                            $("#empAddModal").modal("hide");
                            //来到最后一页，显示刚才保存的数据
                            to_page(totalPages);
                        } else {
                            if (undefined != result.extend.errorField.email) {
                                show_validate_msg("#email_input", "error", result.extend.errorField.email);
                            }
                            if (undefined != result.extend.errorField.empName) {
                                show_validate_msg("#empName_input", "error", result.extend.errorField.empName);
                            }
                        }
                    }
                });
            });

            //显示用户名、邮箱校验结果信息
            function show_validate_msg(element, status, msg) {
                $(element).parent().removeClass("has-success has-error");
                $(element).next("span").text("");
                if ("success" == status) {
                    $(element).parent().addClass("has-success");
                    $(element).next("span").text(msg);
                } else if ("error" == status) {
                    $(element).parent().addClass("has-error");
                    $(element).next("span").text(msg);
                }
            }

            //发送ajax请求校验用户名是否已存在
            $("#empName_input").change(function () {
                var empName = this.value;
                $.ajax({
                    url: "${PRO_PATH}/checkUser",
                    data: "empName=" + empName,
                    type: "POST",
                    success: function (result) {
                        if (result.code == 100) {
                            show_validate_msg("#empName_input", "success", "用户名可用");
                            $("#emp_save_btn").attr("ajax-va", "success");
                        } else {
                            show_validate_msg("#empName_input", "error", result.extend.va_msg);
                            $("#emp_save_btn").attr("ajax-va", "error");
                        }
                    }
                });
            });

            //校验用户名和邮箱是否合法
            function validate_add_form() {
                var empName = $("#empName_input").val();
                var regName = /(^[a-z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5}$)/
                if (!regName.test(empName)) {
                    //alert("用户名可以是2-5位中文或者是6-16位英文和数字的组合");
                    show_validate_msg("#empName_input", "error", "用户名必须是2-5位中文或者是6-16位英文和数字的组合");
                    return false;
                } else {
                    show_validate_msg("#empName_input", "success", "");
                }

                var email = $("#email_input").val();
                var regEmail = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
                if (!regEmail.test(email)) {
                    //alert("邮箱格式不正确");
                    show_validate_msg("#email_input", "error", "邮箱格式不正确");
                    return false;
                } else {
                    show_validate_msg("#email_input", "success", "");
                }
                return true;
            }
        </script>
    </body>
</html>
