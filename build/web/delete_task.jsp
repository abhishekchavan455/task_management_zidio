<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Task</title>
    </head>
    <body>
        <%
         String sid=request.getParameter("n1");
         int id=Integer.parseInt(sid);
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("delete from zidio_task_management.task where task_id="+id+"");
         if(result>0)
         {
         out.println("one task deleted");
         }
        %>
    </body>
</html>
