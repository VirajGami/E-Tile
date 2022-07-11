<%-- 
    Document   : userlogout
    Created on : Mar 7, 2022, 9:52:47 PM
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
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
    </body>
</html>
