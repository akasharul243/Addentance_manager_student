package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class checkattendance_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


    int a,b,t,percentage;
    int r;
    String name,dept;
    String roll,att;

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
      response.setContentType("text/html");
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
      out.write("<!Doctype html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>\n");
      out.write("Check Attendance\n");
      out.write("</title>\n");
      out.write("<link rel=stylesheet href=\"stylesheet.css\" type=\"text/css\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\t<div>\n");
      out.write("\t<h1  > <img src=\"thapar.jpg\" style=\"float:left;margin-top:3px; margin-left:30px; width:100px;height:120px;border: 3px solid #000; box-shadow: 0 0 40px #fff;\">Online Attendance Management System</h1>\n");
      out.write("</div>\n");
      out.write("<nav>\n");
      out.write("\t\t\t<a href=\"student.jsp\">home</a>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<a href=\"checknotice.jsp\">check notice</a>\n");
      out.write("                        <a href='logout.jsp'>Log out</a>\n");
      out.write("</nav>    \n");
      out.write("    <center>\n");
      out.write("    <br> \n");
      out.write("    <div style=\"border:1px solid #D40400; height:50px;width:20%;\">\n");

        String userId= (String) session.getAttribute("Name");
    out.println("<br/> Roll Number:" + userId);
   //int  student=Integer.parseInt(userId);
 //  student=student/1000;

      out.write("\n");
      out.write("    </div>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("<h2>Check Attendance...</h2>\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

  
  try {
         Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        Statement st = con.createStatement();
        ResultSet rs=null;
      //  r=Integer.parseInt(userId);
       // out.println(r);
        rs = st.executeQuery("select * from attendancetb where roll="+userId);
        while(rs.next())
        {
          //  staffname=rs.getString(1);
            dept=rs.getString(2);
            roll=rs.getString(5);
            att= rs.getString(6);
        }
           /* a=att;
            t=total;
            percentage=((a/t)*100);*/
             con.close();    
        }
        catch (Exception e) {
        e.printStackTrace();
        }
        
        

     
      out.write("\n");
      out.write("     ");

         int attended=0,total=90;
         try
         {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select  count(*) from attendancetb where att='present' and  roll="+userId);
            if(rs.next())
            {
            attended=Integer.parseInt(rs.getString(1));
            }
            percentage=(int) ((attended/90.0f)*100);
            
            con.close();
            }
         catch (Exception e) {
        e.printStackTrace();
        }   
         
         
         
      out.write("\n");
      out.write("         ");

               try {
         Class.forName("com.mysql.jdbc.Driver");
  Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/oams","root","");
        Statement st = con.createStatement();
        ResultSet rs=null;
      //  r=Integer.parseInt(userId);
       // out.println(r);
        rs = st.executeQuery("select * from student where rollno="+userId);
         while(rs.next())
        {
            name=rs.getString(3);
             }
             con.close();
             }
               catch (Exception e) {
        e.printStackTrace();
        }
         
      out.write("\n");
      out.write("<center>\n");
      out.write("<table>\n");
      out.write("<tr>\n");
      out.write("<th>\n");
      out.write("Roll No.\n");
      out.write("</th>\n");
      out.write("<th>\n");
      out.write("   Student Name\n");
      out.write("</th>\n");
      out.write("<th> \n");
      out.write("Department\n");
      out.write("</th>\n");
      out.write("<th> \n");
      out.write("Percentage\n");
      out.write("</th>\n");
      out.write("</tr>\n");
      out.write("<tr>\n");
      out.write("        <td>\n");
      out.write("          ");
      out.print(roll);
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            ");
      out.print(name);
      out.write("\n");
      out.write("        </td>\n");
      out.write("        <td>\n");
      out.write("            ");
      out.print(dept);
      out.write("\n");
      out.write("        </td>\n");
      out.write("          <td>\n");
      out.write("          ");
      out.print(percentage);
      out.write(" %\n");
      out.write("        </td>\n");
      out.write("        \n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("<div class=\"clear\">\n");
      out.write("</div>\n");
      out.write("<br/>\n");
      out.write("<br/>\n");
      out.write("<!--<center>\n");
      out.write("<footer >\n");
      out.write("&copy \n");
      out.write("</footer>\n");
      out.write("</center>-->\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
