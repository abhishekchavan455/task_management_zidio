
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Project</title>
    </head>
    <body>
        <%
         String task_name=request.getParameter("task_name");
         String Priority=request.getParameter("Priority");
         String Status=request.getParameter("Status");
         String Project_Name=request.getParameter("Project_Name");
         String Assign_By=request.getParameter("Assign_By");
         String tlimit=request.getParameter("time_limit");
         int time_limit=Integer.parseInt(tlimit);
         String creating_date=request.getParameter("creating_date");
         String deadline=request.getParameter("deadline");
         String Description=request.getParameter("Description");                 
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("insert into zidio_task_management.task(task_name,Priority,Status,Project_Name,Assign_By,time_limit,creating_date,deadline,Description)values('"+task_name+"','"+Priority+"','"+Status+"','"+Project_Name+"','"+Assign_By+"','"+time_limit+"','"+creating_date+"','"+deadline+"','"+Description+"')");
         if(result>0)
         {
         out.println("adding employee sucessffuly");
         }
        %>
    </body>
</html>
