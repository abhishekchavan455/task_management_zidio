
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
         String project_name=request.getParameter("project_name");
         String Abbreviation=request.getParameter("Abbreviation");
         String start_date=request.getParameter("start_date");
         String due_date=request.getParameter("due_date");         
         String Priority=request.getParameter("Priority");
         String Status=request.getParameter("Status");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("insert into zidio_task_management.project(project_name,Abbreviation,start_date,due_date,Priority,Status)values('"+project_name+"','"+Abbreviation+"','"+start_date+"','"+due_date+"','"+Priority+"','"+Status+"')");
         if(result>0)
         {
         out.println("adding employee sucessffuly");
         }
        %>
    </body>
</html>
