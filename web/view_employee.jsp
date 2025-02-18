<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>View Employee</title>
    <style>
        table {
            width: 70%;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #f5f5f5;
        }

        #searchInput {
            width: 70%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-shadow: inset 1px 1px 2px rgba(0, 0, 0, 0.1);
            font-size: 16px;
        }

        /* Style for the search input placeholder text */
        #searchInput::placeholder {
            color: #999;
        }

        body {
            background: url("");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>

    <script>
        function searchTable() {
            // Get the search input element
            var input = document.getElementById('searchInput');
            // Convert input to lowercase
            var filter = input.value.toLowerCase();
            // Get the table element
            var table = document.getElementById('dataTable');
            // Get all the table rows
            var tr = table.getElementsByTagName('tr');

            // Loop through all rows (skip the first, which is the table header)
            for (var i = 1; i < tr.length; i++) {
                var visible = false;
                // Get all table cells in the current row
                var td = tr[i].getElementsByTagName('td');

                // Loop through each cell
                for (var j = 0; j < td.length; j++) {
                    if (td[j]) {
                        // If cell content matches the search term
                        if (td[j].innerHTML.toLowerCase().indexOf(filter) > -1) {
                            visible = true;
                        }
                    }
                }

                // Toggle row visibility based on match
                tr[i].style.display = visible ? "" : "none";
            }
        }
    </script>
</head>
<body>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zidio_task_management", "root", "");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from zidio_task_management.employee");
%>

    <h1>View Employee</h1>
    
    <!-- Search input field -->
    <input type="text" id="searchInput" onkeyup="searchTable()" placeholder="Search for suppliers..">

    <!-- Table to display supplier data -->
    <table id="dataTable">
        <thead>
            <tr>
                <th>Employee Id</th>
                <th>Employee Name</th>
                <th>Email id</th>
                <th>Mobile number</th>
                <th>Designation</th>
                <th>Age</th>
                <th>date Of Birth</th>
                <th>Username</th>
            </tr>
        </thead>
        <tbody>
        <%
        while (rs.next()) {
        %>
            <tr>
                <td><%= rs.getInt(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(3) %></td>
                <td><%= rs.getInt(4) %></td>
                <td><%= rs.getString(5) %></td>
                <td><%= rs.getInt(6) %></td>
                <td><%= rs.getString(7) %></td>
                <td><%= rs.getString(8) %></td>
            </tr>
        <%
        }
        %>
        </tbody>
    </table>
</body>
</html>
