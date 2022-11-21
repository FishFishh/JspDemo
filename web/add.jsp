<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/11
    Time: 15:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add</title>
</head>
<body bgcolor="EDE4E0">
<%
    String a = request.getParameter("a");
    String b = request.getParameter("b");
    int num1 = Integer.parseInt(a);
    int num2 = Integer.parseInt(b);
    int cc = num1 + num2;

%>
<form >
    求加法：<input type="text" name="a" value="5">+<input type="text" name="b" value="6">
</form>
<p><%out.println(a + "+" + b + "结果为：" + cc);%></p>
</body>
</html>
