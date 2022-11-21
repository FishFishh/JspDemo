<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8" %>
<html>
<head>
    <title>学生信息表</title>
    <link rel="stylesheet" type="text/css" >
</head>
<body>
<div align="center">
    <p>学生信息表</p>
    <a href="add.jsp">新增</a> <br/> <br/>
    <table style="width: 50%;">
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>性别</th>
            <th>籍贯</th>
            <th>所属系部</th>
            <th>联系电话</th>
            <th>E-mail</th>
            <th>操作</th>
        </tr>
        <a align="center">当前在第[1],共[1]页</a>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8", "root", "214057");
                //使用Statement对象
                Statement stmt = con.createStatement();
                String s = "select * from student";
                ResultSet rs = stmt.executeQuery(s);

                while (rs.next()) {
                    int id = rs.getInt(1);
                    out.println("<tr>" +
                            "<td>" + rs.getString(1) + "</td>" +
                            "<td>" + rs.getString(2) + "</td>" +
                            "<td>" + rs.getString(3) + "</td>" +
                            "<td>" + rs.getString(4) + "</td>" +
                            "<td>" + rs.getString(5) + "</td>" +
                            "<td>" + rs.getString(6) + "</td>" +
                            "<td>" + rs.getString(7) + "</td>" +
                            "<td>" + rs.getString(8) + "</td>" +
                            "<td>" + rs.getString(9) + "</td>" +
                            "<td>" + rs.getString(10) + "</td>" +
                            "<td>" + rs.getString(11) + "</td>" +
                            "<td>" + "<a href='edit.jsp?id=" + id + "'>修改</a> " +
                            "<a onclick='check()' href='del.jsp?id=" + id + "'>删除</a></td>" +
                            "</tr>");
                }
                rs.close();
                stmt.close();
                con.close();
            } catch (Exception e) {
                out.println("Exception:" + e.getMessage());
            }
        %>

    </table>
    <br/>
</div>
</body>
</html>