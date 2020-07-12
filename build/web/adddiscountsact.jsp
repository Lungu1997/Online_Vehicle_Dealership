<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
			     
            String discount = request.getParameter("discount");
          
               
            				
            try {
						
		Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
                PreparedStatement ps = con.prepareStatement("INSERT INTO `adddiscount`(`discount`) VALUES (?)");

                ps.setString(1,discount);


                int x=ps.executeUpdate();
                if(x>0)
                {

                    response.sendRedirect("adminhome.jsp?m2=success");

                }
                 else
                {

                    response.sendRedirect("adminhome.jsp?m3=Failed");   

                }  
    
              }
             catch (Exception e) 
             {
                out.println(e.getMessage());
             }
            %>
          