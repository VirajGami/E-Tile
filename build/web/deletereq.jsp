<%-- 
    Document   : deletereq
    Created on : Mar 10, 2022, 9:46:11 PM
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
         int id = Integer.parseInt(request.getParameter("id"));
            try{
                Class.forName("com.mysql.jdbc.Driver");
                
                
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                
                
                PreparedStatement ps = cn.prepareStatement("delete from requirment where id=?");
                ps.setInt(1, id);
                int delete_result = ps.executeUpdate();
                
                if(delete_result > 0 ){
                    response.sendRedirect("admindashboard.jsp");
                  }
              
            }
            catch(Exception e){
                out.println(e);
            }
        
        
        %>
    </body>
</html>
