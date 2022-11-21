<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %><%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/8
    Time: 14:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    //1.注册驱动
    Class.forName("com.mysql.jdbc.Driver");
    //2.获取数据库连接
    String url ="jdbc:mysql://localhost:3306/jsp?userUnicode=true&characterEncoding=utf8";
    String user="root";
    String psw="214057";
    Connection con = DriverManager.getConnection(url,user,psw);
    //3.创建对象
    String sql = "insert into student(NAME,SEX,StudentNumber) values(?,?,?)";
    PreparedStatement ps = con.prepareStatement(sql);
    request.setCharacterEncoding("utf-8");
    ps.setString(1, request.getParameter(name));
    ps.setString(2, request.getParameter(sex));
    ps.setString(3, request.getParameter(xuehao));
    String sql ="update student set Name='小小' where id=26";
    PreparedStatement ps=con.prepareStatement(sql);

    int a=ps.executeUpdate();
    out.print(a);
    //4.关闭对象

%>
</body>
</html>
