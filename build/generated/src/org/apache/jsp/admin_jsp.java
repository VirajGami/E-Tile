package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class admin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("\t\t.cart {\n");
      out.write("  box-shadow: 2px 4px 80px 0 silver;\n");
      out.write(" width: 600px;\n");
      out.write(" height: 600px;\n");
      out.write("  margin: auto;\n");
      out.write("  text-align: center;\n");
      out.write("  font-family: arial;\n");
      out.write("  display: inline-block;\n");
      out.write(" margin-top:90px;\n");
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
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\tfunction verify() {\n");
      out.write("\t\t\tfrm=true;\n");
      out.write("\t\t\tvar pass=document.forms[\"f1\"][\"password\"].value;\n");
      out.write("\t\t\tvar confpass=document.forms[\"f1\"][\"confpassword\"].value;\n");
      out.write("\t\t\tif(pass != confpass)\n");
      out.write("\t\t\t{\n");
      out.write("\t\t\t\twindow.alert(\"Password And Confirm Password must be Same\")\n");
      out.write("\t\t\t\tfrm=false;\n");
      out.write("\t\t\t}\n");
      out.write("\t\t\treturn frm;\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #bf833b\">\n");
      out.write("        \n");
      out.write("        ");

            String name=request.getParameter("name");
            String email=request.getParameter("email");
            String phone=request.getParameter("mobile");
            String pass=request.getParameter("password");
          
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                PreparedStatement ps = cn.prepareStatement("insert into admin(name,email,mobile,password) values(?,?,?,?)");
                ps.setString(1, name);
                ps.setString(2, email);
                ps.setString(3, phone);
                ps.setString(4, pass);
                
                int insert_result = ps.executeUpdate();
                
                if(insert_result > 0 ){
                    out.println("Insert Successfully");
                    response.sendRedirect("adminlogin.jsp");                        
                    
                }
          
            } 
            catch(Exception e)
            {
                 out.println(e);
            }
            
            
      out.write("\n");
      out.write(" \n");
      out.write("    \n");
      out.write(" \n");
      out.write("\t <div class=\"cart\"  >\n");
      out.write("                  \n");
      out.write("                  <img src=\"logo.png\" style=\"width: 150px;padding-top: 35px;padding-right: 10px\" >\n");
      out.write("                  <h2>Register</h2>\n");
      out.write("                  <form name=\"f1\" class=\"registernform\" action=\"#\" onsubmit=\"return verify()\" method=\"POST\">\n");
      out.write("                  <table>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p >UserName:</p></td>\n");
      out.write("                                <td><input type=\"text\" name=\"name\"  id=\"name\" required ></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td> <p >Email:</p></td>\n");
      out.write("                                <td><input type=\"Email\" name=\"email\" id=\"email\" required ></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p >Mobile:</p></td>\n");
      out.write("                                <td><input type=\"text\" pattern=\"^\\d{10}$\"  id=\"mobile\" name=\"mobile\" required></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p >Password:</p></td>\n");
      out.write("                                <td><input type=\"Password\" name=\"password\" id=\"password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" required></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p >Confirm Password:</p></td>\n");
      out.write("                  \t\t<td><input type=\"Password\" name=\"confpassword\" required></td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  \t<tr>\n");
      out.write("                  \t\t<td><p ><input  class=\"btn\" type=\"submit\"  id=\"submit\" name=\"submit\" value=\"Register\"></p>\n");
      out.write("                  \t\t</td>\n");
      out.write("                  \t</tr>\n");
      out.write("                  </table>\n");
      out.write("        </form>\n");
      out.write("\t<a href=\"adminlogin.jsp\" class=\"rlink\">If You Have Already Account then Login</a>          \n");
      out.write("                  \n");
      out.write("                 \n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("                  \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
