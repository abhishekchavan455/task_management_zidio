<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Task</title>
<style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
        }

        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
            padding: 30px;
            box-sizing: border-box;
        }

        .container .title {
            font-size: 35px;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center;
        }

        .user-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }

        .input-box {
            width: calc(50% - 10px);
            margin-bottom: 20px;
        }

        .input-box span.details {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .input-box input {
            width: 100%;
            height: 40px;
            padding: 0 0px;
            border-radius: 5px;
            border: 1px solid #ccc;
            transition: border-color 0.3s;
        }

        .input-box input:focus {
            border-color: #9b59b6;
            outline: none;
        }

        .button {
            text-align: center;
        }

        .button input[type="submit"] {
            width: 150px;
            height: 45px;
            border: none;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s;
        }

        .button input[type="submit"]:hover {
            background: linear-gradient(135deg, #9b59b6, #71b7e6);
        }

        @media(max-width: 600px) {
            .input-box {
                width: 100%;
            }
        }
    </style>
        </head>
        <%
        String inq=request.getParameter("n1");
        int in=Integer.parseInt(inq);
        String ename=request.getParameter("n2");
        String proid=request.getParameter("n3");
        int pid=Integer.parseInt(proid);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://@localhost:3306/zidio_task_management","root","");
        Statement stmt=con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from zidio_task_management.manager where manager_id="+in+" or ENAME"+ename+"");
        Statement stmt1=con.createStatement();
        ResultSet rs1=stmt1.executeQuery("select * from zidio_task_management.project where project_id="+pid+"");
        %>
        <%
        while(rs.next() && rs1.next())
        {
        %>
        <body bgcolor="cyan">
        <div class="container">
    <div style="font-size:30px;font-family:italic;color:blue;text-align:center;">Assign Project To Employee</div>
    <hr>
	<div class="content">
      <form action="assign_project_main_page.jsp">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Manager Id</span>
            <input type="text" name="n1" value='<%=rs.getInt(1)%>' required>
          </div>        
          
          <div class="input-box">
            <span class="details">Assign Project To</span>
            <input type="text" name="manager" value='<%=rs.getString(2)%>' required>
          </div>  

          <div class="input-box">
            <span class="details">Project id</span>
            <input type="text" name="project_id" value='<%=rs1.getString(1)%>' required>
          </div>  
          
          <div class="input-box">
            <span class="details">Project Name</span>
            <input type="text" name="project_name" value='<%=rs1.getString(2)%>' required>
          </div>
          
          <div class="input-box">
            <span class="details">Abbreviation</span>
            <input type="text" name="Abbreviation" value='<%=rs1.getString(3)%>' required>
          </div>  
          
	<div class="button">
           <input type="submit" value="submit">
        </div>
           </form>
    </div>
  </div>
            <%
                }
            %>
 </body>
 </html>

