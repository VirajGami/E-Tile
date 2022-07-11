package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<title>Home Page</title>\n");
      out.write("\t<link rel=\"stylesheet\" href=\"index.css\">\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div>\n");
      out.write("    <header class=\"header-area \">\n");
      out.write("\n");
      out.write("                    <div class=\"navbar\" >\n");
      out.write("                          <a href=\"index.html\"><img src=\"logo.png\"  class=\"logo\" width=50%></a>\n");
      out.write("                          <div class=\"search\">\n");
      out.write("                               <input type=\"text\" class=\"searchTerm\" placeholder=\"What are you looking for?\">\n");
      out.write("                               <button type=\"submit\" class=\"searchButton\">\n");
      out.write("                                 search\n");
      out.write("                              </button>\n");
      out.write("                           </div>\n");
      out.write("                          \n");
      out.write("                            <button type=\"submit\" class=\"reqbtn\" >\n");
      out.write("                              <a href=\"requirment.html\">\n");
      out.write("                                ADD YOUR TILE REQUIRMENT\n");
      out.write("                              </a>\n");
      out.write("                             </button>\n");
      out.write("                              <a  href=\"register.html\"><img src=\"user.png\" class=\"login\"></a>\n");
      out.write("                             </div>\n");
      out.write("                    </div>   \n");
      out.write("                      \n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("    \n");
      out.write("       <div class=\"nav\">\n");
      out.write("          <a href=\"index.html\" class=\"dropbtn\">Home</a>\n");
      out.write("            <div class=\"dropdown\">\n");
      out.write("                <button class=\"dropbtn\">Tiles</button>\n");
      out.write("                <div class=\"dropdown-content\">\n");
      out.write("                <a href=\"tilecategory.html\">Wall Tiles</a>\n");
      out.write("                <a href=\"tilecategory.html\">Vitrified Tiles</a>\n");
      out.write("                <a href=\"tilecategory.html\">Porcelain Tiles</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            <a href=\"\" class=\"dropbtn\">About</a>\n");
      out.write("               \n");
      out.write("           \n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <!-- slider start -->\n");
      out.write("        <div class=\"slider\">\n");
      out.write("            <img class=\"mySlides\" src=\"s1.jpg\" width=\"100%\" height=\"550px\">\n");
      out.write("            <img class=\"mySlides\" src=\"s2.jpg\" width=\"100%\" height=\"550px\">\n");
      out.write("            <img class=\"mySlides\" src=\"s3.jpg\" width=\"100%\" height=\"550px\">\n");
      out.write("            <img class=\"mySlides\" src=\"s4.jpg\" width=\"100%\" height=\"550px\">\n");
      out.write("            <img class=\"mySlides\" src=\"s5.jpg\" width=\"100%\" height=\"550px\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("          <script>\n");
      out.write("            var myIndex = 0;\n");
      out.write("            carousel();\n");
      out.write("            \n");
      out.write("            function carousel() {\n");
      out.write("              var i;\n");
      out.write("              var x = document.getElementsByClassName(\"mySlides\");\n");
      out.write("              for (i = 0; i < x.length; i++) {\n");
      out.write("                x[i].style.display = \"none\";  \n");
      out.write("              }\n");
      out.write("              myIndex++;\n");
      out.write("              if (myIndex > x.length) {myIndex = 1}    \n");
      out.write("              x[myIndex-1].style.display = \"block\";  \n");
      out.write("              setTimeout(carousel, 2000); // Change image every 2 seconds\n");
      out.write("            }\n");
      out.write("            </script>\n");
      out.write("           <!-- slider over  -->\n");
      out.write("            \n");
      out.write("            <div >\n");
      out.write("                <h3 class=\"cat\"> Top Tiles Categories</h3>\n");
      out.write("                <div class=\"catbox\">\n");
      out.write("                    <a href=\"tilecategory.html\">\n");
      out.write("                    <img src=\"assets/images/p.jfif\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                    <h2>Porcelain Tiles   </h2> </a>\n");
      out.write("                                       \n");
      out.write("                    \n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"catbox\">\n");
      out.write("                      <a href=\"\">\n");
      out.write("                    <img src=\"assets/images/v.jfif\" alt=\" Tiles\" style=\"width:100%\">\n");
      out.write("                    <h2>Vitrified Tiles   </h2>   </a>                 \n");
      out.write("                    \n");
      out.write("                  </div>\n");
      out.write("                  <div class=\"catbox\">\n");
      out.write("                      <a href=\" \">\n");
      out.write("                    <img src=\"assets/images/wall.jfif\" alt=\" Tiles\" style=\"width:100%\">\n");
      out.write("                    <h2>Wall Tiles   </h2> </a>                   \n");
      out.write("                    \n");
      out.write("                  </div>\n");
      out.write("            </div>\n");
      out.write("          <!-- wall tiles -->\n");
      out.write("          <div>\n");
      out.write("               \n");
      out.write("            <h3 class=\"category\">Wall Tiles</h3>\n");
      out.write("      \n");
      out.write("        <div class=\"containerindex\">\n");
      out.write("            <img src=\"assets/images/w1.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("            <h5>10043 GR HL</h5>\n");
      out.write("            <button class=\"btn\"> <a href=\"product.html\">View Detail</a></button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"containerindex\">\n");
      out.write("            <img src=\"assets/images/w2.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("            <h5>10043 GR HL</h5>\n");
      out.write("            <button class=\"btn\"> View Detail</button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"containerindex\">\n");
      out.write("            <img src=\"assets/images/w3.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("            <h5>10043 GR HL</h5>\n");
      out.write("            <button class=\"btn\"> View Detail</button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"containerindex\">\n");
      out.write("            <img src=\"assets/images/w4.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("            <h5>10043 GR HL</h5>\n");
      out.write("            <button class=\"btn\"> View Detail</button>\n");
      out.write("        </div>\n");
      out.write("            \n");
      out.write("             <!-- Vitrifies tiles -->\n");
      out.write("             <div>\n");
      out.write("               \n");
      out.write("                <h3 class=\"category\">Vitrified Tiles</h3>\n");
      out.write("          \n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/v1.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/v2.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/v3.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/v4.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("             <!-- Porcelain tiles -->\n");
      out.write("             <div>\n");
      out.write("               \n");
      out.write("                <h3 class=\"category\">Porcelain Tiles</h3>\n");
      out.write("          \n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/p1.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/p2.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/p3.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"containerindex\">\n");
      out.write("                <img src=\"assets/images/p4.jpg\" alt=\" Tiles\" style=\"width:100%\" >\n");
      out.write("                <h5>10043 GR HL</h5>\n");
      out.write("                <button class=\"btn\"> View Detail</button>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>   \n");
      out.write("            \n");
      out.write("        </div>   \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- footer start -->\n");
      out.write("        <div class=\"ftr\">\n");
      out.write("          <h4>  Copyright © 2022 All rights reserved. By <a href=\"#\">E-Tile</a><h4></h4>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("      </body>\n");
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
