package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Login</title>\n");
      out.write("        \n");
      out.write("        <style type=\"text/css\">\n");
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
      out.write("<link rel=\"stylesheet\" href=\"assets/css/index1.css\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\tfunction verify() {\n");
      out.write("\t\t\tfrm=true;\n");
      out.write("\t\t\t\n");
      out.write("\t\t\treturn frm;\n");
      out.write("\t\t}\n");
      out.write("\t</script>\n");
      out.write("</head>\n");
      out.write("<body onload=\"load()\" >\n");
      out.write("\t   <?php  include 'header.php';\n");
      out.write("   ?>\n");
      out.write("\n");
      out.write("        <!-- Form start -->\t\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("    function user() {\n");
      out.write("  var x = document.getElementById(\"userfrm\");\n");
      out.write("  var y = document.getElementById(\"adminfrm\");\n");
      out.write("   x.style.display = \"block\";\n");
      out.write("   y.style.display = \"none\";\n");
      out.write("   var user=document.getElementById(\"user\");\n");
      out.write("   user.style.backgroundColor  =\"grey\";\n");
      out.write("   var admin=document.getElementById(\"admin\");\n");
      out.write("   admin.style.backgroundColor  =\"#bf833b\";\n");
      out.write("}\n");
      out.write("    function admin() {\n");
      out.write("  var x = document.getElementById(\"userfrm\");\n");
      out.write("  var y = document.getElementById(\"adminfrm\");\n");
      out.write("   x.style.display = \"none\";\n");
      out.write("   y.style.display = \"block\";\n");
      out.write("   var admin=document.getElementById(\"admin\");\n");
      out.write("   admin.style.backgroundColor  =\"grey\";\n");
      out.write("   var user=document.getElementById(\"user\");\n");
      out.write("   user.style.backgroundColor  =\"#bf833b\";\n");
      out.write(" }\n");
      out.write("\n");
      out.write("    function load() {\n");
      out.write("    var x = document.getElementById(\"userfrm\");\n");
      out.write("  var y = document.getElementById(\"adminfrm\");\n");
      out.write("   x.style.display = \"none\";\n");
      out.write("   y.style.display = \"none\";\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write("  </script>   \n");
      out.write("\n");
      out.write("  <div class=\"role\"> \n");
      out.write(" <h1>Sign in</h1>\n");
      out.write("  <h5 class=\"role\">Select Your Role:</h5>\n");
      out.write("\n");
      out.write("    <button class=\"uabutton\" id=\"user\" onclick=\"user()\" action=\"userfrm\">User</button> \n");
      out.write("    <button class=\"uabutton\"  id=\"admin\" onmou onclick=\"admin()\" action=\"adminfrm\">Admin</button> \n");
      out.write("    </div>     \n");
      out.write("    <div id=\"userfrm\">\n");
      out.write("\t<form name=\"f1\"  class=\"registernform\" action=\"userloginfinal.php\" onsubmit=\"return verify()\" method=\"POST\">\n");
      out.write("   \n");
      out.write("   \n");
      out.write("\n");
      out.write("\t\t<table >\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td><label class=\"lbl\">User Name:</label></td>\n");
      out.write("\t\t\t\t<td><input class=\"inp\" type=\"text\" name=\"name\" minlength=\"4\" required></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td><label class=\"lbl\">Password:</label></td>\n");
      out.write("\t\t\t\t<td><input class=\"inp\" type=\"Password\" name=\"password\" required></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t<tr>\n");
      out.write("\t\t\t\t<td><input class=\"inpsub\" type=\"submit\" name=\"submit\" value=\"Login\"></td>\n");
      out.write("\t\t\t</tr>\n");
      out.write("\t\t</table>\n");
      out.write("\t</form>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div id=\"adminfrm\">\n");
      out.write("  <form name=\"f1\"  class=\"registernform\"  action=\"adminlogin.jsp\"  method=\"POST\">\n");
      out.write("    \n");
      out.write("                  <table >\n");
      out.write("                    <tr>\n");
      out.write("                      <td><label class=\"lbl\">User Name:</label></td>\n");
      out.write("                      <td><input class=\"inp\" type=\"text\" name=\"name\" minlength=\"4\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                      <td><label class=\"lbl\">Password:</label></td>\n");
      out.write("                      <td><input class=\"inp\" type=\"Password\" name=\"password\" required></td>\n");
      out.write("                    </tr>\n");
      out.write("                      \n");
      out.write("                    <tr>\n");
      out.write("                      <td><input class=\"inpsub\" type=\"submit\" name=\"submit\" value=\"Login\"></td>\n");
      out.write("                    </tr>\n");
      out.write("                  </table>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("<?php\n");
      out.write("  include 'ftr.php';\n");
      out.write("?>\n");
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
