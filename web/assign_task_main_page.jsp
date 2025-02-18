
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Task</title>
    </head>
    <body>
        <%
         String ename=request.getParameter("ename");
        String taskid=request.getParameter("task_id");
        int task_id=Integer.parseInt(taskid);
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("UPDATE zidio_task_management.task SET Assign='"+ename+"' WHERE task_id="+task_id+"");
         if(result>0)
         {
         out.println("assign task sucessffuly");
         }
        %>
    </body>
</html>
