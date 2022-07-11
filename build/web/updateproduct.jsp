<%-- 
    Document   : updateproduct
    Created on : Mar 5, 2022, 1:14:08 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head> 
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="admin.css">
  <style>
      input{
          width: 50%;
            margin-bottom: 10px;  
      }
      </style>
      
</head>
<body >
    
    
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
}

function logout1()
{
  document.getElementById("logout").style.display = "none";
}
</script>


<%
 if ((session.getAttribute("name") == null) || (session.getAttribute("name") == "")) 
        response.sendRedirect("adminlogin.jsp");%>




<div class="content" >

    <div style="box-shadow: 0 4px 8px 0 #bf833b;width: 100%;height: 100px" onmouseleave="logout1()">
  <p  id="name" style="color: grey;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" onmouseenter="logout()" onmouseout="logout1()">Welcome ,<%=session.getAttribute("name")%>
                              </p>
                                 <a id="logout" style="display: none;color: Red;float: right;padding-right: 90px;padding-top:20px;font-family: cursive;font-size: 30px;cursor: pointer" href="adminlogout.jsp">Logout</a>

  </div>

<h1 style="font-family: cursive;font-size: 50px;padding-top: 30px;color: grey">Update Product</h1>



     <%@page import="java.sql.*" %>
   
      <%
   
    
     int id = Integer.parseInt(request.getParameter("id"));
          
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
                Statement st=cn.createStatement();
                                                    
                                  

                             
                //exe query
                ResultSet rs = st.executeQuery("select * from product where id="+id);
                if(rs.next()==false) {
                        %>
                    <script>
                        alert("Please Enter Valid ID And Try Again...");
                       window.location = '/etile/update.jsp';
                        </script>
                    <%
                       
                
                        
                }else {
    
      %> 
                     <form style="padding-top: 10px" action="updateproduct" enctype="multipart/form-data"  method="POST">
                                     
                
                         ID of Product Update :
                         <input type="text" readonly  name="id" value=<%out.println(id); %>> <br>
                                  
                         
                         
                         
                                    Design Name:
                                    <input type="text" name="dname"  value=<%out.println(rs.getString("dname")); %>  required><br>
                                   
                                   Sold By:
                                   <input type="text" name="soldby"   value=<%out.println(rs.getString("soldby")); %>required><br>
                                   
                                   
                                    Size<span style="font-weight: normal;font-size: 12px;">(in mm)</span>:
                                    <input type="text" name="size" required  value=<%out.println(rs.getString("size")); %>  ><br>
                                   
                                   
                                     Shape:
                                     <input type="text" name="shape"  value=<%out.println(rs.getString("shape")); %>  required><br>
                                   
                                   
                                    Product Application:
                                    <input  name="application" rows="4" cols="50"  value=<%out.println(rs.getString("application")); %>required>
                                    <br>
                                   
                                   
                         
      </select></td>
     
      </tr>
        <input type="submit" value="Update Product" class="btn"  name="submit">
                             </form>
                <%}
            }
            catch(Exception e){
                out.println(e);
            }
       
                   
%>




<form style="padding-top: 10px" action="#">
    <table>
      
     
        
      </select></td>
      </tr>
          
      <tr>
        <td> Product Design Id:</td>
        <td><input type="text" name="id" required></td>
      </tr>
      <tr>
       
      <tr>
        <td colspan="2" ><input type="submit" value="Submit" class="btn" name="submit"></td>
      </tr>
    </table>
</form>
</div>


</body>
</html>

