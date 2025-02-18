package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class view_005fproject_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    <title>View Projects</title>\n");
      out.write("    <style>\n");
      out.write("        table {\n");
      out.write("            width: 70%;\n");
      out.write("            border-collapse: collapse;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        th, td {\n");
      out.write("            padding: 12px 15px;\n");
      out.write("            text-align: left;\n");
      out.write("            border-bottom: 1px solid #ddd;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        th {\n");
      out.write("            background-color: #f2f2f2;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        tr:hover {\n");
      out.write("            background-color: #f5f5f5;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        #searchInput {\n");
      out.write("            width: 70%;\n");
      out.write("            padding: 10px;\n");
      out.write("            margin: 10px 0;\n");
      out.write("            border: 1px solid #ccc;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            box-shadow: inset 1px 1px 2px rgba(0, 0, 0, 0.1);\n");
      out.write("            font-size: 16px;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        /* Style for the search input placeholder text */\n");
      out.write("        #searchInput::placeholder {\n");
      out.write("            color: #999;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        body {\n");
      out.write("            background: url(\"\");\n");
      out.write("            background-repeat: no-repeat;\n");
      out.write("            background-attachment: fixed;\n");
      out.write("            background-size: cover;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        function searchTable() {\n");
      out.write("            // Get the search input element\n");
      out.write("            var input = document.getElementById('searchInput');\n");
      out.write("            // Convert input to lowercase\n");
      out.write("            var filter = input.value.toLowerCase();\n");
      out.write("            // Get the table element\n");
      out.write("            var table = document.getElementById('dataTable');\n");
      out.write("            // Get all the table rows\n");
      out.write("            var tr = table.getElementsByTagName('tr');\n");
      out.write("\n");
      out.write("            // Loop through all rows (skip the first, which is the table header)\n");
      out.write("            for (var i = 1; i < tr.length; i++) {\n");
      out.write("                var visible = false;\n");
      out.write("                // Get all table cells in the current row\n");
      out.write("                var td = tr[i].getElementsByTagName('td');\n");
      out.write("\n");
      out.write("                // Loop through each cell\n");
      out.write("                for (var j = 0; j < td.length; j++) {\n");
      out.write("                    if (td[j]) {\n");
      out.write("                        // If cell content matches the search term\n");
      out.write("                        if (td[j].innerHTML.toLowerCase().indexOf(filter) > -1) {\n");
      out.write("                            visible = true;\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                // Toggle row visibility based on match\n");
      out.write("                tr[i].style.display = visible ? \"\" : \"none\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zidio_task_management", "root", "");
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery("select * from zidio_task_management.project");

      out.write("\n");
      out.write("\n");
      out.write("    <h1>View Employee</h1>\n");
      out.write("    \n");
      out.write("    <!-- Search input field -->\n");
      out.write("    <input type=\"text\" id=\"searchInput\" onkeyup=\"searchTable()\" placeholder=\"Search for suppliers..\">\n");
      out.write("\n");
      out.write("    <!-- Table to display supplier data -->\n");
      out.write("    <table id=\"dataTable\">\n");
      out.write("        <thead>\n");
      out.write("            <tr>\n");
      out.write("                <th>Project Id</th>\n");
      out.write("                <th>Project Name</th>\n");
      out.write("                <th>Abbreviation</th>\n");
      out.write("                <th>Start Date</th>\n");
      out.write("                <th>Due Date</th>\n");
      out.write("                <th>Priority</th>\n");
      out.write("                <th>Status</th>\n");
      out.write("                <th>Manager</th>\n");
      out.write("                <th>Budget</th>\n");
      out.write("            </tr>\n");
      out.write("        </thead>\n");
      out.write("        <tbody>\n");
      out.write("        ");

        while (rs.next()) {
        
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print( rs.getInt(1) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(2) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(3) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(4) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(5) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(6) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(7) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getString(8) );
      out.write("</td>\n");
      out.write("                <td>");
      out.print( rs.getInt(9) );
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("        ");

        }
        
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("    </table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
