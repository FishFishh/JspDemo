<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/11
    Time: 14:06
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <SCRIPT language="JavaScript">
        function isValid() {
            if (calculate.count.value == "") {
                window.alert("不能为空！");
                document.calculate.elements(0).focus();
                return false;
            } else if (calculate.a.value == "") {
                window.alert("不能为空！");
                document.calculate.elements(0).focus();
                return false;
            } else if (calculate.b.value == "") {
                window.alert("不能为空！");
                document.calculate.elements(0).focus();
                return false;
            } else {
                return true;
            }
            calculate.submit();
        }
    </SCRIPT>
    <title>calculate</title>
</head>
<body bgcolor="EDE4E0">
<form action="factorial.jsp" method="get" name="calculate">
    求阶乘：<input type="text" name="count" value="3">
    <jsp:include page="factorial.jsp" flush="true">
        <jsp:param name="count" value="count"/>
    </jsp:include>
</form>
<form action="add.jsp" method="get" name="calculate">
    求加法：<input type="text" name="a" value="5">+<input type="text" name="b" value="6">
    <jsp:include page="add.jsp" flush="true">
        <jsp:param name="a" value="a"/>
        <jsp:param name="b" value="b"/>
    </jsp:include>
</form>
<p><input type="submit" value="确定" onclick="isValid()"></p>
</body>
</html>
