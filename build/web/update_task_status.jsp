
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update task status</title>
    </head>
    <body>
        <%
        String status=request.getParameter("status");
        String taskid=request.getParameter("task_id");
        int task_id=Integer.parseInt(taskid);
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("UPDATE zidio_task_management.task SET Status='"+status+"' WHERE task_id="+task_id+"");
         if(result>0)
         {
         out.println("update task status sucessffuly");
         }
        %>
    </body>
</html>

