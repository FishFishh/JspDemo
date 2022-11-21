<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/11
    Time: 14:37
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>计算一个整数的阶乘</title>
<%!
    long Factorial(int n){
        if(n==0){
            return 0;
        }
        else{
            int sum=1;
            for(int i=1;i<=n;i++)
            {sum=sum*i;}
            return sum;
        }
    }
%>
<%
    int num=0;
    String str=request.getParameter("num");
    int number=Integer.parseInt(str);

%>
<body>
<form action="example.jsp" method="post" name="form">
    <input type="text" name="num" ><br><br>
    <input type="submit" name="submit" value="开始计算">
</form>
<p><%=number%>的阶乘是<%=Factorial(number)%></p>
</body>
</html>

