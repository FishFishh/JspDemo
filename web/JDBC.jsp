<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Connection" %><%--
    Created by IntelliJ IDEA.
    User: fish
    Date: 2022/10/25
    Time: 15:11
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/jsp-JDBC";
        String name="root";
        String psw="214057";
        Connection con = DriverManager.getConnection(url, name, psw);
        Statement statement = con.createStatement();
        String sql="select * from students";
        ResultSet rs=statement.executeQuery(sql);
        while(rs.next()){
            String name1=rs.getString("Name");
            String sex=rs.getString(3);
            out.print("name"+name1+",sex"+sex);
        }
    }catch(Exception e){
        e.printStackTrace();
    }finally {
        //con.close();
    }


%>

</body>
</html>
