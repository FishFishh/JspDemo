<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:09
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" pageEncoding="utf-8"%>
<html>
<head>
    <title>修改完成</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String sex = request.getParameter("sex");
    String jiguan = request.getParameter("jiguan");
    String xibu = request.getParameter("xibu");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=utf-8", "root", "214057");
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
    alert("信息修改成功");
    window.location.href = "index.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("信息修改失败");
    window.location.href = 'edit.jsp?id='
    " + id + ";
</script>

<%
    }
    stmt.close();
    con.close();
%>
</body>
</html>