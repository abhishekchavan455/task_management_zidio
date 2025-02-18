<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Login Page</title>
    </head>
    <body>
         <%
         String userid=request.getParameter("n1");
         String pass=request.getParameter("n2");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         ResultSet rs=stmt.executeQuery("select * from zidio_task_management.employee where USERNAME ='"+userid+"' and PASSWORD='"+pass+"'");
         if(rs.next())
         {
         session.setAttribute("userid",userid);
         response.sendRedirect("employee_main_page.html");
         }
         else
         {
         out.println("<h1>invalid username or password<a href='employee_login.html'>plz login</a></h1>");
         }
        %>
    </body>
</html>
