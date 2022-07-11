
 
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class updateproductcat extends HttpServlet {
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/etile";
    private String dbUser = "root";
    private String dbPass = "";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
      
          response.setContentType("text/html");
    PrintWriter out = response.getWriter();
            
//            String cat=request.getParameter("cat");
//            Part filePart = request.getPart("img");
//       
             int id=Integer.parseInt(request.getParameter("id"));
            
            String cat=request.getParameter("cat");
          
         
           
            
           
           try{
            // connects to the database
           Class.forName("com.mysql.jdbc.Driver");
           Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/etile","root","");
          
           
            Statement st=cn.createStatement();
                             
                //exe query
                ResultSet rs = st.executeQuery("select name from childcategory");
                while(rs.next())
                {
                
            // constructs SQL statement
            
                PreparedStatement ps = cn.prepareStatement("update product set cat=? where id=?");
                               
                ps.setString(1, cat);
                ps.setInt(2, id);
                
                int row = ps.executeUpdate();
                    if (row > 0) {
                      response.sendRedirect("admindashboard.jsp");
                    }   
                    

                }
           }
           catch(Exception e)
            {
                System.out.println(e);
            }
    }
}
   

