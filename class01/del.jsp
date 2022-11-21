<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:10
--%>
<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*" %>
<html>
<head>
    <title>删除学生信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("gbk");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8", "root", "214057");
    Statement stmt = con.createStatement();
    String id = request.getParameter("id");
    int i = stmt.executeUpdate("delete from student where id=" + id);
    if (i == 1) {
%>
<script type="text/javascript">
    alert("学生信息删除成功!");
    window.location.href = "index.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("学生信息删除失败");
    window.location.href = "index.jsp";
</script>
<%
    }
    con.close();
    stmt.close();
%>
</body>
</html>