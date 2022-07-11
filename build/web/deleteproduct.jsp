<%-- 
    Document   : deleteproduct
    Created on : Mar 5, 2022, 3:49:23 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@page import="java.sql.*" %>
        
        <%
            
             if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
             {
                     response.sendRedirect("adminlogin.jsp");
             
            
}
else{
                 int id = Integer.parseInt(request.getParameter("id"));
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                
                
                PreparedStatement ps = cn.prepareStatement("delete from product where id=?");
                ps.setInt(1, id);
                int delete_result = ps.executeUpdate();
                
                if(delete_result > 0 ){
                    response.sendRedirect("admindashboard.jsp");
                  }
                else
                {
                    %>
                    <script>
                        alert("Please Enter Valid ID And Try Again...");
                       window.location = '/etile/delete.jsp';
                        </script>
                    <%
                       
                }
            }
            catch(Exception e){
                out.println(e);
            }
}
        %>
        
    </body>
    </body>
</html>
