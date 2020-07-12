<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%

   	        String Password=request.getParameter("password");
                String username=request.getParameter("username");
                String email = null;
                   
                try {
                
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
                        
			String sql="SELECT * FROM `users` WHERE `username` ='"+username+"' AND `password` ='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			
			if(rs.next()) {
                            
                            email = rs.getString("email");   
                            session.setAttribute("username",username);
                            session.setAttribute("email",email);
                    
                       
                            response.sendRedirect("userhome.jsp?msg=success");
			
			
			}else {
			
                            response.sendRedirect("user.jsp?m1=Failed");   
                            
			}

                }catch(Exception e) {
                    out.print(e.getMessage());
                }  
                   
%>