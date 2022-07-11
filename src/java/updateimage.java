
 
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 

@MultipartConfig(maxFileSize = 16177215 ,
        
maxRequestSize=1024*1024*50)// upload file's size up to 16MB
public class updateimage extends HttpServlet {
    private String getFileName(final Part part) {
    final String partHeader = part.getHeader("content-disposition");
    
    for (String content : part.getHeader("content-disposition").split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
        }
    }
    return null;
}
     
    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/etile";
    private String dbUser = "root";
    private String dbPass = "";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
      
          
            
            int id=Integer.parseInt(request.getParameter("id"));
            Part filePart = request.getPart("img");
           
            
         
            String photo="";
          String path="D:/MU/D2D SEM6/AJP LAB/etile/web/images";
          String path1="/images";
          File file=new File(path);
          file.mkdir();
          String fileName = getFileName(filePart);
          
          OutputStream out = null;
          
            InputStream filecontent = null;
            
            PrintWriter writer = response.getWriter();
            
            Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
            try {
        out = new FileOutputStream(new File(path + File.separator
                + fileName));
        
        filecontent = filePart.getInputStream();
     
 
        int read = 0;
        final byte[] bytes = new byte[1024];
 
        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
           
            photo=path1+"/"+fileName;
            
            
        }
        
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
           
             PreparedStatement ps = conn.prepareStatement("update product set  image=? where id=?");
               
               
                
                ps.setString(1, photo);
                 ps.setInt(2, id);
          
            // sends the statement to the database server
            int row = ps.executeUpdate();
            if (row > 0) {
                message = "Imagee Update ";
                response.sendRedirect("admindashboard.jsp");
            }
           
        } catch (SQLException ex) {
           
            ex.printStackTrace();
        } 
    }
}