package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Admin Register</title>\n");
      out.write("\n");
      out.write("\t<style type=\"text/css\">\n");
      out.write("\t\t.cart {\n");
      out.write("  box-shadow: 2px 4px 80px 0 silver;\n");
      out.write(" width: 600px;\n");
      out.write(" height: 550px;\n");
      out.write("  margin: auto;\n");
      out.write("  text-align: center;\n");
      out.write("  font-family: arial;\n");
      out.write("  display: inline-block;\n");
      out.write(" margin-top:120px;\n");
      out.write(" margin-left: 450px;\n");
      out.write(" background-color: white;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\tp{\n");
      out.write("\t\tcolor: black;\n");
      out.write("\t}\n");
      out.write("\ttable{\n");
      out.write("\t\tpadding-left: 100px\n");
      out.write("\t}\n");
      out.write("\tinput{\n");
      out.write("\t\tborder-top: none;\n");
      out.write("\t\tborder-left: none;\n");
      out.write("\t\tborder-right: none;\n");
      out.write("\t\tborder-color: #bf833b;\n");
      out.write("\t\t\n");
      out.write("\t}\n");
      out.write("\n");
      out.write("\t.btn {\n");
      out.write(" position: relative;\n");
      out.write(" display: inline-block;\n");
      out.write("margin-left: 100px;\n");
      out.write(" \n");
      out.write(" text-align: center;\n");
      out.write(" width: 100%;\n");
      out.write(" height:50px;\n");
      out.write(" font-size: 15px;\n");
      out.write(" letter-spacing: 1px;\n");
      out.write(" text-decoration: none;\n");
      out.write(" color: #bf833b;\n");
      out.write(" background: transparent;\n");
      out.write(" cursor: pointer;\n");
      out.write(" transition: ease-out 0.6s;\n");
      out.write(" border-radius: 30px;\n");
      out.write(" border: 2px solid #bf833b;\n");
      out.write(" border-radius: 10px;\n");
      out.write(" box-shadow: inset 0 0 0 0 #bf833b;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn:hover {\n");
      out.write(" color: white;\n");
      out.write(" box-shadow: inset 0 -100px 0 0 #bf833b;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".btn:active {\n");
      out.write(" transform: scale(0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\t</style>\n");
      out.write("\n");
      out.write("\t\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<body style=\"background-color: #bf833b\">\n");
      out.write("    \n");

    String name=request.getParameter("name");;
    String pass=request.getParameter("password");
  
    
        Class.forName("com.mysql.jdbc.Driver");
        Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
        Statement st = cn.createStatement();
        ResultSet rs;
        rs = st.executeQuery("select * from admin where name='" + name + "' and password='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("name", name);
            //out.println("welcome " + userid);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("admindashboard.jsp");
        } 
  
    
    
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("\t <div class=\"cart\"  >\n");
      out.write("                  \n");
      out.write("                  <img src=\"logo.png\" style=\"width: 150px;padding-top: 35px;padding-right: 10px\" >\n");
      out.write("                  <h2>Log in</h2>\n");
      out.write("                  <form name=\"f1\" class=\"registernform\" action=\"#\"  method=\"POST\">\n");
      out.write("                  <table>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p >UserName:</p></td>\n");
      out.write("                                <td><input type=\"text\" name=\"name\" id=\"name\" required ></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t\n");
      out.write("                  \t\t<td><p >Password:</p></td>\n");
      out.write("                                <td><input type=\"Password\" name=\"password\" id=\"password\" required></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p ><input  class=\"btn\" type=\"submit\" name=\"submit\" value=\"Login\"></p>\n");
      out.write("                  \t\t</td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  </table>\n");
      out.write("        </form>\n");
      out.write("         \n");
      out.write("                  \n");
      out.write("                 \n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("        </div>\n");
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
