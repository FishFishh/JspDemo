<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/19
    Time: 18:33
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int ac_num1=0; //单选题正确的题目个数
    int[] a=new int[8];
    String str1=request.getParameter("1");
    String str2=request.getParameter("2");
    String str3=request.getParameter("3");
    String str4=request.getParameter("4");
    if(str1==null)
        str1="";
    if(str2==null)
        str2="";
    if(str3==null)
        str3="";
    if(str4==null)
        str4="";

    if(str1.equals("A")) {
        ac_num1++;
        a[1]++;
    }
    if(str2.equals("A")) {
        ac_num1++;
        a[2]++;
    }
    if(str3.equals("C")) {
        ac_num1++;
        a[3]++;
    }
    if(str4.equals("C")) {
        ac_num1++;
        a[4]++;
    }
%>
<%=ac_num1*20 %><br>

</body>
</html>
