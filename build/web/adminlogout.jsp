<%-- 
    Document   : adminlogout
    Created on : Mar 3, 2022, 9:41:30 PM
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
        <%
session.setAttribute("name", null);
session.invalidate();
response.sendRedirect("login.jsp");
%>
    </body>
</html>
