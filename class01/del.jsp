<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:10
--%>
<%@ page contentType="text/html; charset=gbk" language="java" import="java.sql.*" %>
<html>
<head>
    <title>ɾ��ѧ����Ϣ</title>
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
    alert("ѧ����Ϣɾ���ɹ�!");
    window.location.href = "index.jsp";
</script>
<%
} else {
%>
<script type="text/javascript">
    alert("ѧ����Ϣɾ��ʧ��");
    window.location.href = "index.jsp";
</script>
<%
    }
    con.close();
    stmt.close();
%>
</body>
</html>