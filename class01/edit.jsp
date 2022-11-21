<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:07
--%>
<%@ page import="java.sql.*" pageEncoding="utf-8" %>
<html>
<head>
    <title>修改学生信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8", "root", "214057");
    Statement stmt = con.createStatement();
    String id = request.getParameter("id");
    ResultSet rs = stmt.executeQuery("select * from student where id=" + id);
    rs.next();
%>
<div align="center">
    <form action="editsave.jsp" method="post">
        <h2>修改学生信息</h2>
        <table style="width: 50%">
            <tr>
                <th>学号：</th>
                <td><input name="id" type="text" value="<%=rs.getString(1)%>" disabled="disabled"></td>
            </tr>
            <tr>
                <th>姓名：</th>
                <td><input name="name" type="text" value="<%=rs.getString(2)%>"></td>
            </tr>
            <tr>
                <th>性别：</th>
                <th align="left">
                    <input type="radio" name="sex" value="<%=rs.getString(3)%>"><%=rs.getString(3)%>男
                    <input type="radio" name="sex" value="<%=rs.getString(4)%>"><%=rs.getString(4)%>女
                </th>
            </tr>
            <tr>
                <td>籍贯</td>
                <td><select name="jiguan">
                    <option value="<%=rs.getString(5)%>">重庆</option>
                    <option value="<%=rs.getString(6)%>">北京</option>
                    <option value="<%=rs.getString(7)%>">上海</option>
                </select>
                </td>
            </tr>
            <tr>
                <td>系部</td>
                <td>
                    <select name="xibu">
                        <option value="<%=rs.getString(8)%>">计算机系</option>
                        <option value="<%=rs.getString(9)%>">艺术系</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>电话：</th>
                <td><input name="phone" type="text" value="<%=rs.getString(10)%>"></td>
            </tr>
            <tr>
                <th>邮箱：</th>
                <td><input name="email" type="text" value="<%=rs.getString(11)%>"></td>
            </tr>
            <input type="hidden" name="id" value="<%=id%>">
            <tr>
                <th colspan="2" align="center">
                    <button type="submit" name="submit" value="添加">修改</button>
                    <button type="reset" value="重置">重置</button>
                </th>
            </tr>
        </table>
    </form>
</div>
<%
    rs.close();
    stmt.close();
    con.close();
%>

</body>
</html>