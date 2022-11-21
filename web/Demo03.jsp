<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/9/27
    Time: 15:24
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name=(String) request.getAttribute("Name");
    String psw=(String) request.getAttribute("Psw");
%>
用户名：<%=name %>
密码：  <%=psw %>
</body>
</html>
