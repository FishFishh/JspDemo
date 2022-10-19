<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/9/27
    Time: 14:45
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name="admin";
    String psw="admin";
    request.setAttribute("Name","name");
    request.setAttribute("Psw","psw");
%>
<jsp:forward page="Demo03.jsp"></jsp:forward>
</body>
</html>
