<%@ page import="java.util.Scanner" %>
<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/11
    Time: 14:10
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>factorial</title>
</head>
<body bgcolor="EDE4E0">
<%
    String count = request.getParameter("count");
    if(count==null){
        out.println("输入不能为空");
    }
    float num = Integer.parseInt(count);
    double result =1;
    for (float i = 1; i <= num; i++) {
        result *= i;
    }%>
<form >
    求阶乘：<input type="text" name="count" value="3">
</form>
<p><% out.println(count + "阶乘为：" +result);%></p>
</body>
</html>
