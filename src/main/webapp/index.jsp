<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/9/20
    Time: 15:28
    To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <SCRIPT language="JavaScript">
        // $(function(){
        //     $("#regForm").validate({
        //         rules :{
        //             "username"{
        //                 "required": true
        //             },
        //             "password"{
        //                 "required": true,
        //                 "rangelength":[4,20]
        //             }
        //         },
        //         message :{
        //             "username"{
        //                 "required": "用户名不能为空"
        //             },
        //             "password"{
        //                 "required": "密码不能为空",
        //                 "rangelength": "密码长度不小于4"
        //             }
        //         },
        //     }
        //     }
        // )

        function isValid(){

            if (frmLogin.id.value==""){
                window.alert("用户名不能为空！");
                document.frmLogin.elements(0).focus();
                return false;
            }
            if (frmLogin.password.value==""){
                window.alert("密码不能为空！");
                document.frmLogin.elements(1).focus();
                return false;
            }else if(int(frmLogin.password.value)<4){
                window.alert("密码不能少于四个字符！");
                document.frmLogin.elements(1).focus();
                return false;
            }
            else if(frmLogin.password.value!=frmLogin.repassword.value){
                window.alert("两次密码不一致！");
                document.frmLogin.elements(1).focus();
                return false;
            }else{
                return true;
            }
            frmLogin.submit();
        }
    </SCRIPT>
    <title>学生课绩管理系统</title>
</head>
<body><form name="frmLogin">
<center><font color="blue" size="10" face="楷体">学生课绩管理系统</font></center>
<table border="1" bgcolor="#B2FEFA"  cellspacing="1" width="600px" highth="500px" style="margin: 0px auto;">
    <tr>
        <th align="right">用户选择</th>
        <th align="left">
            <input type="radio" name="1">学生
            <input type="radio" name="1">教师
            <input type="radio" name="1">管理员
        </th>
    </tr>
    <tr>
        <th align="right">用户名</th>
        <th align="left"><input type="id" name="id"></th>
    </tr>
    <tr>
        <th align="right">密码</th>
        <th align="left"><input type="password" name="password" minlength="4"></th>
    </tr>
    <tr>
        <th align="right">重新输入密码</th>
        <th align="left"><input type="password" name="repassword" minlength="4"></th>
    </tr>
    <tr>
        <th align="right">出生日期</th>
        <th align="left">
            <select name="日期">
                <option value="1" selected>-请选择-</option>
                <option value="2">2022</option>
                <option value="2">2021</option>

            </select>
            年
        </th>
    </tr>
    <tr>
        <th align="right">兴趣</th>
        <th align="left"><input type="checkbox" name="音乐">音乐
            <input type="checkbox" name="动漫">动漫
            <input type="checkbox"name="电影">电影</th>
    </tr>
    <tr>
        <th align="right">我的简介</th>
        <th align="left">
            <textarea name="我的简介" cols="25" rows="7"></textarea>
        </th>
    </tr>
    <tr>
        <th colspan="2" align="center">
            <input type="submit" name="Submit" value="注册" onclick="isValid()">
            <input type="submit" value="取消">
        </th>
    </tr>
</table>
<br/>
</form>
</body>
</html>