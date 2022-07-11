<%-- 
    Document   : adminlogin
    Created on : Mar 3, 2022, 4:28:48 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
	<title>Home Page</title>
	<link rel="stylesheet" href="index.css">
        <style>
            .inp{
                height: 45px;
            }
        </style>
    

</head>
<body>
    <div>
   <header class="header-area ">

                    <div class="navbar" >
                          <a href="index.html"><img src="logo.png"  class="logo" width=50%></a>
                          
                          
                            <button type="submit" class="reqbtn"  >
                              <a href="requirment.jsp">
                                ADD YOUR TILE REQUIRMENT
                              </a>
                             </button>
                           <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
    {
            %>
            <a  href="userregister.jsp"><img src="user.png" style="padding-left: 50px;" class="login"></a>
                              <%}
else{        
                              %>
                                  
                              <p  id="name" style="color: grey;float: right;margin-right: 30px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()"><%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-right: 30px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" href="userlogout.jsp">Logout</a>

                    <%
                    }%>
                    </div>
                    </div>   
                      
    </header>
        
        
         
       <%@page import="java.sql.*" %>
           <%
            Class.forName("com.mysql.jdbc.Driver");
           Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
              Statement st = cn.createStatement();
           ResultSet  rs = st.executeQuery("select * from childcategory ");
           
              
              
        %>   
   
   

       <div class="nav">
          <a href="index.html" class="dropbtn">Home</a>
            <div class="dropdown">
                <button class="dropbtn">Tiles</button>
                <div class="dropdown-content">
                     <%  while(rs.next()){
                          String cat=rs.getString("name");%>
                    
                <a href="allproduct.jsp?name=<%=cat%>"><%= rs.getString("name")%></a>
                 <% } %>
                
                </div>
            </div>
            
      
        
      </select>
            <a href="about.jsp" class="dropbtn">About</a>
               
           
        </div>
    <%@page import="java.sql.*" %>
<%
    String name=request.getParameter("name");;
    String pass=request.getParameter("password");
    String email=request.getParameter("email");
  
        
        Class.forName("com.mysql.jdbc.Driver");
         cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
         st = cn.createStatement();
        rs = st.executeQuery("select * from user where name='" + name + "' and password='" + pass + "'");
        if (rs.next()) {
            session.setAttribute("username", name);
            session.setAttribute("email", email);
            
            //out.println("welcome " + userid);
            //out.println("<a href='logout.jsp'>Log out</a>");
            response.sendRedirect("index.jsp");
        } 
        else{
             response.sendRedirect("login.jsp");
        }
    
    %>
   



    

	 
                
         
                  
                 
                  
                  
                  
        
</body>
</html>