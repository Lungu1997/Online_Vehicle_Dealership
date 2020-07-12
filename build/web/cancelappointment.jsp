<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>

<%
    String username = session.getAttribute("username").toString();
    String date = request.getParameter("date"); 
    
   
      
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
   String sql="DELETE FROM `appointment` WHERE `username` ='"+username+"' AND `date` = '"+date+"'";
   PreparedStatement st = con.prepareStatement(sql);
   
   int i=st.executeUpdate();
    if(i>0){
        response.sendRedirect("userhome.jsp?del=Cancelled");
        
    }
   %>