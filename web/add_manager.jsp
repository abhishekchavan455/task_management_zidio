
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Employee Page</title>
    </head>
    <body>
        <%
         String ename=request.getParameter("ename");
         String email=request.getParameter("email");
         String mob=request.getParameter("mobile");
         int mobile=Integer.parseInt(mob);
         String role=request.getParameter("role");
         String eage=request.getParameter("age");
         int age=Integer.parseInt(eage);
         String dob=request.getParameter("dob");
         String gender=request.getParameter("gender");
         String username=request.getParameter("username");
         String password=request.getParameter("password");
         Class.forName("com.mysql.jdbc.Driver");
         Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
         Statement stmt=con.createStatement();
         int result=stmt.executeUpdate("insert into zidio_task_management.manager(ename,email,mobile,role,age,dob,gender,username,password)values('"+ename+"','"+email+"',"+mobile+",'"+role+"',"+age+",'"+dob+"','"+gender+"','"+username+"','"+password+"')");
         if(result>0)
         {
         out.println("adding manager sucessffuly");
         }
        %>
    </body>
</html>
