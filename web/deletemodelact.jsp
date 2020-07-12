<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

		

            <%
            	     
                String id = request.getParameter("id");
                
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
                    
                    String sq1 = "DELETE FROM `models` WHERE `id` = "+id+"";

                    PreparedStatement ps = con.prepareStatement(sq1);
                    
                    int x = ps.executeUpdate();
                    if(x > 0) {
                        response.sendRedirect("adminhome.jsp?m3=Model Deleted");   
                    }else {
                        response.sendRedirect("adminhome.jsp?m3=Deletion Failed");   
                    }
                } catch (Exception e) {
                    out.println(e.getMessage());
                 }
            %>
