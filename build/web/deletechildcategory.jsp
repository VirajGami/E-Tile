<%-- 
    Document   : deletechildcategory
    Created on : Mar 4, 2022, 6:10:36 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="admin.css">
</head>
<body >
     <%@page import="java.sql.*" %>
      <%
    if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");
    

       
        String pc=request.getParameter("cat");
          
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                PreparedStatement ps = cn.prepareStatement("delete from childcategory where name=?");
                PreparedStatement ps1 = cn.prepareStatement("delete from product where cat=?");
                ps.setString(1, pc);
                ps1.setString(1, pc);
                int delete_result = ps.executeUpdate();
                 int delete_result1 = ps1.executeUpdate();
                
                if(delete_result > 0 && delete_result1>0 ){
                    out.println("Deleted Successfully");
                   response.sendRedirect("admindashboard.jsp");              
                }
                
               
            } 
            catch(Exception e)
            {
                 out.println(e);
                 
            }
            
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


  function jsFunction(value)
{
  
    if (value == "Tiles")
    {
      document.getElementById("tilesubcat").style.display = "block";
      document.getElementById("sanitarysubcat").style.display = "none";
    }
    if (value == "Sanitary")
    {
      document.getElementById("sanitarysubcat").style.display = "block";
      document.getElementById("tilesubcat").style.display = "none";
    }
    if (value == "none")
    {
      document.getElementById("tilesubcat").style.display = "none";
      document.getElementById("sanitarysubcat").style.display = "none";
    }
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
</script>







<div class="content" >

    <div style="box-shadow: 0 4px 8px 0 #bf833b;width: 100%;height: 100px" onmouseleave="logout1()">
   <p  id="name" style="color: grey;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()">Welcome ,<%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" href="adminlogout.jsp">Logout</a>


    <a id="logout" style="display: none;margin-left: 250px" href="adminlogout.jsp">Logout</a> </p>
  </div>

<h1 style="font-family: cursive;font-size: 50px;padding-top: 30px;color: grey">Delete Child Category</h1>

<form style="padding-top: 10px" action="#">
    <table>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
            Statement st = cn.createStatement();
            ResultSet rs;
            rs = st.executeQuery("select * from childcategory");
            
              
              
        %>
      <tr>
        <td>Select Parent Category:</td>
        <td> <select id ="cat" name="cat"  onchange="jsFunction(this.value);" required>
                <option value=" "></option>
        <%  while(rs.next()){ %>
        <option value="<%= rs.getString("name")%>"><%= rs.getString("name")%></option>
        <% } %>
     
        
      </select></td>
      </tr>
       
      <tr>
        <td colspan="2" ><input type="submit" value="Delete Child  Category" class="btn" name="submit"></td>
      </tr>
    </table>

</div>

</body>
</html>