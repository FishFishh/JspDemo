<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/8
    Time: 15:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<center><h1>输入学生信息查询条件</h1>
    <form action="resultdisplay.jsp" method="post" target="_self">
        <table width=600 border=1 bgcolor=#00ffee>
            <tr>
                <td>请选择查询条件:
                    <select name="item">
                        <option value="id">学号</option>
                        <option value="name">姓名</option>
                        <option value="department">系部</option>
                        <option value="sex">性别</option>
                    </select>
                </td>
                <td>输入查询内容: <input name="content" type="text" maxlength=“50"></td>
                <td><input type="submit" name="Submit" value=" 查询"></td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>
