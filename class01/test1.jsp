<%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/11
    Time: 15:00
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="java.sql.*" %>
<html>
<head>
    <title>数据库查询</title>
</head>
<body>
<table width ="75%" border ="1" align="center">
    <tr>
        <td>学号</td>
        <td>姓名</td>
        <td>籍贯</td>
        <td>所属系部</td>
        <td>联系电话</td>
        <td>E-mail</td>
    </tr>
    <%
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String url="jdbc:mysql://localhost:3306/jsp-JDBC";
            String name="root";
            String psw="214057";
        }catch (ClassNotFoundException e){
            out.println(e.getMessage());
        }
        try{

            Connection conn=DriverManager.getConnection("jsp","root","214057");
            Statement st =conn.createStatement();
            ResultSet rs =st.executeQuery("select * from student");
            while (rs.next())
                {
                    String id=rs.getString("id");
                    String name=rs.getString("name");
                    String jiguan=rs.getString("jiguan");
                    String department=rs.getString("department");
                    String sex=rs.getString("sex");
                    String tel=rs.getString("tel");
                    String email=rs.getString("email");
                    out.print("<tr><td>"+id+"</td>");
                    out.print("<td>"+name+"</td>");
                    out.print("<td>"+sex+"</td>");
                    out.print("<td>"+jiguan+"</td>");
                    out.print("<td>"+department+"</td>");
                    out.print("<td>"+tel+"</td>");
                    out.print("<td>"+email+"</td></tr>");
                }
            out.print("</table>");
            rs.close();st.close();conn.close();
            }catch(Exception e){
            out.println(e.getMessage());
        }%>
</body>
</html>
