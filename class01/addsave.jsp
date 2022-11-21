<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:39
--%>
<%@ page contentType="text/html; charset=utf-8" import="java.sql.*" %>
<html>
<head>
    <title>添加学生信息</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String submit = request.getParameter("submit");

    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    String jiguan = request.getParameter("jiguan");
    String xibu = request.getParameter("xibu");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8", "root", "214057");
    //使用Statement对象
    Statement stmt = con.createStatement();
    String sql = "update student set id = '" + id +
                "', name = '" + name +
                "', sex = '" + sex +
                "', jiguan='" + jiguan +
                "', xibu = '" + xibu +
                "', phone = '" + phone +
                "', email = '" + email +
                "'where id=" + id;

    int i = stmt.executeUpdate(sql);

    if (i == 1) {
%>

<script type="text/javascript">
    alert("学生信息添加成功");
    window.location.href = "index.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("学生信息添加失败");
    window.location.href = "index.jsp";
</script>
<%
    }
    stmt.close();
    con.close();
%>
</body>
</html>