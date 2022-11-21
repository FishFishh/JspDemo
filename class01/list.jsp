<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %><%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/11/21
    Time: 20:19
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%@include file="dbconnect.jsp" %>
<table border="1">
    <tr><td>学号</td><td>姓名</td><td>性别</td><td>籍贯</td></tr>
    <%
        Statement st=conn.createStatement();
        ResultSet rs=st.executeQuery("select * from student");
        while(rs.next()){
            String xh=rs.getString(1);
            String name=rs.getString(2);
            String sex=rs.getString("sex");
            String jiguan=rs.getString("jiguan");
    %>
    <tr><td><%=xh %></td><td><%=name %></td><td><%=sex %></td><td><%=jiguan %></td></tr>
    <%}
    %>

</table>
</body>
</html>