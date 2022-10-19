<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/18
    Time: 17:49
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <SCRIPT language="JavaScript">
    function isValid(){
        frmLogin.submit();
    }
    </SCRIPT>
    <title>在线考试系统</title>
</head>
<body>
<h3 style="text-align: center">jsp测试题</h3>
测试人:    <input type="text" name="userid" value="胡飞菊"><br>

班级:     <select name="classes">
    <option value="1" selected>20专软件1班</option>
    <option value="2">20专软件2班</option>
    <option value="2">20专软件3班</option>
</select>
<hr>
<form name="frmLogin" action="web2.jsp" method="get">
    1.response对象的setHeader(String name,String value)方法的作用是() 。<br>
    <input type="radio" name="1" value="A" checked>A.HTTP文件头<br>
    <input type="radio" name="1" value="B">B.设定指定名字的HTTP文件头的值<br>
    <input type="radio" name="1" value="C">C.指定名字的HTTP文件头是否存在<br>
    <input type="radio" name="1" value="D">D.向客户端发送错误信息()<br>
    2.设置session的有效时间(也叫超时时间)的方法是()。<br>
    <input type="radio" name="2" value="A" checked>A. setMaxlnactivelnterval(int interval)<br>
    <input type="radio" name="2" value="B">B. getAttributeName<br>
    <input type="radio" name="2" value="C">C. set AttributeName(String name,Java.lang.Object value)<br>
    <input type="radio" name="2" value="D">D. getLastAccessedTime<br>
    3.能清除缓冲区中的数据，并且把数据输出到客户端是out对象中的方法是()。<br>
    <input type="radio" name="3" value="A" checked>A. out.newLine()<br>
    <input type="radio" name="3" value="B">B. out.clear()<br>
    <input type="radio" name="3" value="C">C. out.flush()<br>
    <input type="radio" name="3" value="D">D. out.clearBuffer()<br>
    4.pageContext对象的findAttribute()方法作用是()。<br>
    <input type="radio" name="4" value="A" checked>A.用来设置默认页面的范围或指定范围之中的已命名对象<br>
    <input type="radio" name="4" value="B">B. 用来删除默认页面范围或指定范围之中已命名的对象<br>
    <input type="radio" name="4" value="C">C.按照页面请求、会话以及应用程序范围的顺序实现对某个已命名属性的搜索<br>
    <input type="radio" name="4" value="D">D.以字符串的形式返回一个对异常的描述<br>
    <input type="submit" name="Submit" value="交卷">
</form>

<%  if (session.getAttribute("userid") !=null)%>
欢迎您,<%=session.getAttribute("userid") %><hr>
班级,<%=session.getAttribute("classes") %><hr>
您本次测试成绩是:<br>
<%=session.getAttribute("s") %>
</body>
</html>
