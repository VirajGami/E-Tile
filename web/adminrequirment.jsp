<%-- 
    Document   : adminrequirment
    Created on : Mar 10, 2022, 9:09:12 PM
    Author     : dell
--%>

<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="admin.css">
<style type="text/css">
	button{
		background-color: red;
		
	}
        td{
            width: 5%;
            text-align: center;
        }
         th{
            background-color: black;
            color: white
        }
        table{
            position: fixed;
        }
</style>

</head>
<body >
     <%@page import="java.sql.*" %>

     <%

     if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");
                 
                    %>
                   
    
    
<div class="sidebar">
  <img src="logo.png"  class="logo" width=90% style="padding-bottom: 30px">
  <a class="active" href="admindashboard.jsp">Dashboard</a>
  <button  class="dropdown-btn">Category 
    <i class="fa fa-caret-down"></i>
  </button>
  <div class="dropdown-container">
    <a href="addchildcategory.jsp">Add  Category</a>
    <a href="deletechildcategory.jsp">Delate  Category</a>
    
  </div>   
  <a href="insproduct.jsp">Add Product </a>
 <a href="update.jsp">Update Product</a>
  <a href="delete.jsp">Delete Product</a>
</div>

<script type="text/javascript">
  
var dropdown = document.getElementsByClassName("dropdown-btn");
var i;

for (i = 0; i < dropdown.length; i++) {
  dropdown[i].addEventListener("click", function() {
  this.classList.toggle("active");
  var dropdownContent = this.nextElementSibling;
  if (dropdownContent.style.display === "block") {
  dropdownContent.style.display = "none";
  } else {
  dropdownContent.style.display = "block";
  }
  });
}


            function logout()
            {
              document.getElementById("logout").style.display = "block";
              document.getElementById("name").style.display = "none";
            }

            function logout1()
            {
              document.getElementById("logout").style.display = "none";
              document.getElementById("name").style.display = "block";
            }
        </script> 


<div class="content">
  <div style="box-shadow: 0 4px 8px 0 #bf833b;
height: 100px" onmouseleave="logout1()">
    <p  id="name" style="color: grey;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()">Welcome ,<%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" href="adminlogout.jsp">Logout</a>


    <a id="logout" style="display: none;margin-left: 250px" href="adminlogout.jsp">Logout</a> </p>
  </div>
  
    <%
                Class.forName("com.mysql.jdbc.Driver");
                 Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                 Statement st=cn.createStatement();
                 Blob image = null;

                 ResultSet rs = st.executeQuery("select * from requirment");
                          

        %>
    
  	<table  border="1px solid" style="border-color: #bf833b;padding-top: 20px" >
  		<tr>
  			<th>
  				Customer Name
  			</th>
  			
  			<th>
  				Design ID
  			</th>
  			<th>
  				Tile Type
  			</th>
  			<th>
  				Tile Grade
  			</th>
  			<th>
  				Size
  			</th>
                        <th>
  				Box
  			</th>
  			
  			<th>
  			</th>
  		</tr>
                <%  while(rs.next()){
                    String id=rs.getString("id");%>
  		<tr>
                       
  			<td>
  				 <%= rs.getString(2) %>
  			</td>
  			<td>
  				<%= rs.getString(3) %>
  			</td>
  			<td>
  				<%= rs.getString(4) %>
  			</td>
  			<td>
  				<%= rs.getString(5) %>
  			</td>
  			<td>
  				<%= rs.getString(6) %>
  			</td>
                        <td>
  				<%= rs.getString(7) %>
  			</td>
  			
  			<td>
                            <a href="deletereq.jsp?id=<%=id%>" style="background-color: red;color: white;cursor: pointer;">DELETE</a>
  			</td>
  		</tr>
                <% } %>
  		
  	</table>
</body>
</html>
