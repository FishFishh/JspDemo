<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/9/22
    Time: 22:23
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>$Title$</title>
</head>
<body>

<% response.getWriter().write("response.."); %>

<%
    System.out.println("控制台输出");
    int i = 5;

    String contextPath = request.getContextPath();
    out.print(contextPath);
%>
<%! int i = 3;%>

</body>
</html>