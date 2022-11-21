<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/9/27
    Time: 14:43
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Insert title here</title>
</head>
<body>
    <%@include file="errorPage.jsp"  %>
    <html>
    <head>
        <title>Insert title here</title>
    </head>
        <body>
            <% int a=6/0; %>
        </body>
    </html>
<h2>页面出错啦！</h2>
</body>
</html>
