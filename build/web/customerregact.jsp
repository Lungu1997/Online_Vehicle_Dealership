<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

<%
			     
    String username = request.getParameter("username");
    String password = request.getParameter("password");                      
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String cnumber = request.getParameter("cardnumber");


    try {


                    Class.forName("com.mysql.jdbc.Driver");
                    Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");




                    PreparedStatement ps=connection.prepareStatement("INSERT INTO `customer`(`username`, `password`, `email`, `address`, `cardnumber`) VALUES (?,?,?,?,?)");

                    ps.setString(1,username);
                    ps.setString(2,password);            
                    ps.setString(3,email);
                    ps.setString(4,address);	
                    ps.setString(5,cnumber);

                    int x=ps.executeUpdate();
                    if(x>0) {

                        response.sendRedirect("customerlogin.jsp?m1=success");

                    }else {

                        response.sendRedirect("customerreg.jsp?m2=Failed");   

                    }  

                 }catch (Exception e) {
                    out.println(e.getMessage());
                 }
%>
          