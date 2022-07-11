package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admindashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html> \n");
      out.write("<head>\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"admin.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    ");

    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) {
        response.sendRedirect("adminlogin.jsp");

      out.write("\n");
      out.write("\n");
      out.write("\n");
} else {

      out.write("\n");
      out.write("\n");
      out.write("\n");

    }

      out.write("\n");
      out.write("\n");
      out.write("<div class=\"sidebar\">\n");
      out.write("  <img src=\"logo.png\"  class=\"logo\" width=90% style=\"padding-bottom: 30px\">\n");
      out.write("  <a class=\"active\" href=\"admindashboard.html\">Dashboard</a>\n");
      out.write("  <button  class=\"dropdown-btn\">Category \n");
      out.write("    <i class=\"fa fa-caret-down\"></i>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"dropdown-container\">\n");
      out.write("    <a href=\"adminaddcategory.html\">Add Category</a>\n");
      out.write("    <a href=\"adminaddsubcategory.html\">Add Sub Category</a>\n");
      out.write("    <a href=\"admindeletecategory.html\">Delete Category</a>\n");
      out.write("    <a href=\"admindeletesubcategory.html\">Delate Sub Category</a>\n");
      out.write("    \n");
      out.write("  </div>   \n");
      out.write("  <a href=\"adminadd.html\">Add Product </a>\n");
      out.write("  <a href=\"adminupdate.html\">Update Product</a>\n");
      out.write("  <a href=\"admindelete.html\">Delete Product</a>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("  \n");
      out.write("var dropdown = document.getElementsByClassName(\"dropdown-btn\");\n");
      out.write("var i;\n");
      out.write("\n");
      out.write("for (i = 0; i < dropdown.length; i++) {\n");
      out.write("  dropdown[i].addEventListener(\"click\", function() {\n");
      out.write("  this.classList.toggle(\"active\");\n");
      out.write("  var dropdownContent = this.nextElementSibling;\n");
      out.write("  if (dropdownContent.style.display === \"block\") {\n");
      out.write("  dropdownContent.style.display = \"none\";\n");
      out.write("  } else {\n");
      out.write("  dropdownContent.style.display = \"block\";\n");
      out.write("  }\n");
      out.write("  });\n");
      out.write("}\n");
      out.write("\n");
      out.write("function logout()\n");
      out.write("{\n");
      out.write("  document.getElementById(\"logout\").style.display = \"block\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("function logout1()\n");
      out.write("{\n");
      out.write("  document.getElementById(\"logout\").style.display = \"none\";\n");
      out.write("}\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"content\">\n");
      out.write("  <div style=\"box-shadow: 0 4px 8px 0 #bf833b;\n");
      out.write("height: 100px\" onmouseleave=\"logout1()\">\n");
      out.write("  <p style=\"color: grey;float: right;padding-right: 50px;padding-top:10px;font-family: cursive;font-size: 20px\">Welcome,&nbsp\n");
      out.write("    <span style=\"font-family: Garamond ;\" onmouseenter=\"logout()\" > ");
      out.print(session.getAttribute("name"));
      out.write("</span>\n");
      out.write("\n");
      out.write("    <a id=\"logout\" style=\"display: none;margin-left: 250px\" href=\"adminlogout.jsp\">Logout</a> </p>\n");
      out.write("  </div>\n");
      out.write("  <div class=\"cart\" style=\"margin-left: 20px;margin-top:100px;height: 130px;width: 350px;background-color: white\" >\n");
      out.write("                  <p align=\"left\" style=\"padding-top: 20px;width: 70%;float: left;font-weight: bold;font-size: 20px\">Available Product<br><span style=\"font-size: 40px;padding-left: 35px;color: grey;font-family: Lucida Handwriting;font-weight: bold;\">15</span></p>\n");
      out.write("                  <img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVC17gRPGS_AulFM2M9mplrMBCpBQXcPwamg&usqp=CAU\" style=\"width: 100px;float: right;padding-top: 15px\" >\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("         <div class=\"cart\" style=\"margin-left: 20px;margin-top:100px;height: 130px;width: 350px;background-color: white\" >\n");
      out.write("                  <p align=\"left\" style=\"padding-top: 20px;width: 70%;float: left;font-weight: bold;font-size: 20px\">Number Of User<br><span style=\"font-size: 40px;padding-left: 35px;color: grey;font-family: Lucida Handwriting;font-weight: bold;\">5</span></p>\n");
      out.write("                  <img src=\"user1.png\" style=\"width: 60px;float: right;padding-top: 35px;padding-right: 10px\" >\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
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
