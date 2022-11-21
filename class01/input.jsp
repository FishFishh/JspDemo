<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/8
    Time: 21:29
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    <center>添加学生信息</center>
</h1>
<form action="insert.jsp" method="post" target="_self">
    <table border=1 align="center" bgcolor="aqua">
        <tr>
            <td>学号</td>
            <td><input name="id" type="text" maxlength="20"></td>
        </tr>
        <tr>
            <td>姓名</td>
            <td><input name="name" type="text" maxlength="20"></td>
        </tr>
        <tr>
            <th align="right">性别</th>
            <th align="left">
                <input type="radio" name="1">男
                <input type="radio" name="1">女
            </th>
        </tr>
        <tr>
            <td>籍贯</td>
            <td><select name="jiguan">
                <option value="重庆">重庆</option>
                <option value="北京">北京</option>
                <option value="上海">上海</option>
            </select>
            </td>
        </tr>
        <tr>
            <td>系部</td>
            <td>
                <select name="jiguan">
                    <option value="计算机系">计算机系</option>
                    <option value="北京">艺术系</option>
                </select>
            </td>
        </tr>
        <tr>
        <td>电话</td>
        <td><input name="phone" type="text" maxlength="20"></td>
        </tr>
        <tr>
            <td>邮箱</td>
            <td><input name="email" type="text" maxlength="20"></td>
        </tr>
        <tr>
            <th colspan="2" align="center">
                <input type="submit" name="Submit" value="添加" onclick="isValid()">
                <input type="submit" name="Submit" value="重置" onclick="isValid()">
            </th>
        </tr>
    </table>
</form>
</body>
</html>
