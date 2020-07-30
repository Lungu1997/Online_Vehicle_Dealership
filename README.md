1	INTRODUCTION


1.1.	PURPOSE

	The purpose of the project is to build a website to reduce the manual work for managing car models, sales, car owners and cars.
	This project will provide a solution through which the dealership can easily manage, handle and generate all required information in their respective format when needed.
 	It will help them in managing order details, financial data and historical data and also in producing documents of different formats for different customers. This solution will help in reducing effort spent on managing orders. 
	It will also provide them opportunity to explore possibility of generating documents, managing financial details and analyzing historical data with the use of digitalized solution.
	The central concept of the application is to allow the customer to shop virtually using the Internet and allow customers to buy the car they desire from the store. 
The car models and brands are stored on an RDBMS at the server side (store).
        The server processses the customers and the items are shipped to the address submitted by them. 

1.2.	MOTIVATION

	The world is changing very fast. Today we use internet for every thing because it provides us useful information in marketing, inventory management system, online transactions.
	Modern websites are easy to navigate, costumers can scroll through many products and find exactly what they want. 
	Stores are available 24 hours/day and payment methods are easy and secure.
	What is the online shopping? Online shopping is a form of electronic commerce which allows consumers to buy goods or services from a seller over the Internet using a web browser.
	Integrated online solution web shop allows to manage business-to-customer relations. It includes central web data management from the dealer management system directly to your web page.    It allows full web functionalities such as cars, user registration and passwords, documents and files, price per customer, offers, ordering and much more.
	The website is also part of the e-commerce domain. E-commerce became very known to society and has been continuously developed since 1990. The internet made e-commerce to be available for a large group of users, mostly casual users. In the business community, straightening to grown efficiency and productivity is expected to accept e-commerce as a way of making business in the future.
	E-commerce offers a series of major advantages. The main advantages are the most well known by the world: time and money. Regarding time, there is a very big economy. The user can see a list of products and prices in a few minutes from home. It is not necessary any other action to waste time (like going to physichal store,wasting time in traffic, parking). Thus, this time saving results in a rise of profitability where comes money saving.
 	There are some disadvantages of online shopping like problems about the security of payment by credit card or not being able to physically inspect the the before purchase but in these days time and health are very important.
	The online vehicle dealership is an application used to manage the purchase of motor vehicles. Consequently, dealers enable efficient service, order processing and billing designed for any given number of orders per day. Sales Management is a business discipline which is focused on the practical application of sales techniques and the management of a firm's sales operations.
	There is just something about vintage cars. It doesn’t matter if it is a classic Corvette, Ford or Renault vintage cars represent an universal attraction. 
	A classic car represents an era. They are a piece of history and over time their value increases, making them a wise investment. This site gives people from our country the possibility to buy a vintage/classic car.
	This document provides a description of interfaces, key concept and overall purpose of the Software project ”Management of a Vehicles Dealership”. This project automates the task of managing an online vintage/classic car dealership in Romania.
	 I chose this project to present the advantages of a purchase system to create an easy-to-use application which offers users all the options that they need to finalize the purchase.


2.	THE FIRST STEPS:
	- Creating a database;
	- Possibility to create/remove/update a certain car as an administrator;
	- Page with cars that have the brand, model, specifications;
	- Possibility to buy or make an appointment with the dealer a certain car.


3.	TECHNOLOGIES FOR:

	BACKEND:
	JAVASCRIPT and HTML;

	FRONTEND:
	BOOTSTRAP.
	
	
4.	4.1	General Presentation
	The application I chose for the final exam project was “management of a vehicles dealership” with an emphasis on vintage/classic cars, having the following functionalities:
	-	Adding cars and its specifications ;
	-	Editing/removing cars;
	-	 Registering users;
	-	The possibility to buy cars, etc.

	The website contains a database named autovintage, which is made of many tables:
	-	adddiscount, which contains discount ( the administrator can add a discount to a car or a group of cars) .
	-	appointment, with username, turnover ( the number of kilometers that the car has travelled) , model, price,  image, brand, date(the date the user meets with the administrator to see the car in person), email.
	-	feedback, which contains username(the user introduces it), brand, model, price, turnover, image,feedback(the user writes a message about the state in how the car looks after looking at it in more detail).
	-	models, with brand , model, price, turnover, cc (the car’s cubic capacity), power, seating (how many seats a car has),image, vehicle type, status (the car is identified as either new or up-and-coming).
	-	register, the user making his own account by putting  name ,password, mobile, email
	-	users, loging with the user’s own account which contains name, password, mobile, email. 

	4.2	The site’s interface
	The connection between the database and the dealership’s website is done in almost every file using the following commands:
	-in the action files(for example, addmodelsact.jsp) we have:

	try {
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
		   PreparedStatement ps = con.prepareStatement("SQL Code”);
		    ps.setString(parameter number,parameter name);
		    int x=ps.executeUpdate();
		   if(x > 0)  {
			    response.sendRedirect("adminhome.jsp?m2=success");
		    }else {
			   response.sendRedirect("adminhome.jsp?m3=Failed");   
		    }  
	}catch (Exception e) {
		out.println(e.getMessage());
	}
	-in other files like uviewmodels.jsp we have:
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");

		String q = "SELECT * FROM `models`";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(q); 
	%>
	<div class="card-columns"> 
	    <%
		 while(rs.next()){ 
	    %> 
	  <div class="card">
	    <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
	    <div class="card-body">
	     <h4 class="card-title"><b>Brand:</b> <%=rs.getString("brand")%></h4>
	      <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <b>Price: </b> <%=rs.getString("price")%> Euro <b>Turnover: </b><%=rs.getString("turnover")%> km <%=rs.getString("cc")%> cc <%=rs.getString("seating")%> seater</p> 
	      <a href="pyment.jsp?model=<%=rs.getString("model")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button type="button" class="btn btn-outline-danger">Buy</button></a>   
	      <a href="uappointment.jsp?model=<%=rs.getString("model")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button class="btn btn-outline-danger">Reserve</button></a> 
	    </div>
	  </div> 
	  <%
	    }
	  %>
	</div>

	The session represents a mechanism that allows storing information about the client’s state. If the server didn’t meet the respective client, it would generate a new session. 
	The application is composed of two main parts: 
	- the dealership’s administration zone ;
	- the online dealership accessible to the users.
	The two parts have a strong relationship, because the cars and the types in which we add from the administration section are visible on the dealership’s website and the administrator has the posibility to see the users that have been registered in the database. 

	The application structure is the following:

	![Figure 1 1](https://user-images.githubusercontent.com/26704350/88904655-045a3180-d25e-11ea-8ecd-44caab780600.png)
	![Figure 1 2](https://user-images.githubusercontent.com/26704350/88904715-18059800-d25e-11ea-9b74-af0d2895371e.png)
						Figure 1 Site root

	4.2.1	The administration zone
	The whole administration graphic is built on a front-end web framework, bootstrap.min.css. 
	On the right side, opposite from the dealership’s logo, we have two buttons: one for the administrator Admin (for administrator) and Account (for users).
	The buttons’ content is done in every HTML file and almost every JSP file, which uses the following HTML interrogation:
	<a href="admin.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Admin</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="user.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Account</a>
	The page adminhome.jsp contains the links to the pages with adding, removing or editing functions::

	![Figure 2](https://user-images.githubusercontent.com/26704350/88904768-2c499500-d25e-11ea-9e59-31911d897c4a.png)
						Figure 2 adminhome.jsp(code) 
					
	The page’s main content also has links to Add Models, View Models, Add Discounts, Delete Model and Edit Model.

	![Figure 3](https://user-images.githubusercontent.com/26704350/88904817-3ff4fb80-d25e-11ea-9fee-f5920eae7ca9.png)
						Figure 3 adminhome.jsp(website)

	Accesing the link View Models, we have the possibility to see the cars and its specifications..

	![Figure 4](https://user-images.githubusercontent.com/26704350/88904899-54d18f00-d25e-11ea-8eaa-e4e80ff28a66.png)
						Figure 4 Car list
					
	Visualizing the vehicles is possible with the help of a MySQL query:

	<%
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino"); 
	 String q = "SELECT * FROM `models`";
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery(q); 
	%>
	<div class="card-columns"> 
	    <%
	    while(rs.next()){ 
	    %> 
	  <div class="card">
	    <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
	    <div class="card-body">
	     <h4 class="card-title"><b>Brand:</b> <%=rs.getString("brand")%></h4>
	     <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>Vehicle Type: </b><%=rs.getString("vehicle type")%> <br><b>Year: </b> <%=rs.getString("year")%> <br><b>Price: </b><%=rs.getString("price")%> Euro <br><b>Turnover: </b><%=rs.getString("turnover")%> km<br><b>Power: </b><%=rs.getString("power")%> hp<br/></br><%=rs.getString("cc")%> cc</br><%=rs.getString("seating")%> seater</br></p> 
	      <a href="deletemodelact.jsp?id=<%=rs.getString("id")%>&model=<%=rs.getString("model")%>&year=<%=rs.getString("year")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&power=<%=rs.getString("power")%>&image=<%=rs.getString("image")%>&vehicle type=<%=rs.getString("vehicle type")%>&brand=<%=rs.getString("brand")%>"><button type="button" class="btn btn-outline-danger">Delete</button></a>   
	      <a href="editmodelact.jsp?id=<%=rs.getString("id")%>&model=<%=rs.getString("model")%>&year=<%=rs.getString("year")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&power=<%=rs.getString("power")%>&image=<%=rs.getString("image")%>&vehicle type=<%=rs.getString("vehicle type")%>&brand=<%=rs.getString("brand")%>"><button class="btn btn-outline-danger">Edit</button></a>    
	 </a>   
	    </div>
	  </div> 
	  <%
	    }
	  %>
	A computer program is a list of “ instructions” to be “executed” by a computer.In aprogramming language, these programming instructions are called Statements.A ResultSet object maintains a cursor that points to the current row in the result set of a database query.
	In the database there is an ID for each car and it is incremented automatically by the number of cars added. Adding a new car  in the database  is done by selecting the brand in the Brand field, adding the model in the Model field, adding the power in the Power field, selecting the status in the Status field, adding the year in the Year field, adding the price in the Price field, adding the turnover in the Turnover, adding the cc in the Cubic Capacity field, adding the number of seats in the Seating field, adding the vehicle type in the Vehicle Type field, adding the picture by pressing the Choose File button and pressing the Add button:

	addmodels.jsp:
	<br><Br><center>
	    <h2 style="color:black">Add Model Here</h2>
	    <table>
		<form action="addmodelsact.jsp" method="post">
			<tr><th>Brand</th><th><select  name="brand" required="" style="width:198px">
				<option value="" style="color: black">Select Brand</option>
				<option value="Oldsmobile" style="color: black">Oldsmobile</option>
				<option value="Mercedes-Benz" style="color: black">Mercedes-Benz</option>
				<option value="Ford" style="color: black">Ford</option>
				<option value="Buick" style="color: black">Buick</option>
				<option value="Chevrolet" style="color: black">Chevrolet</option>
				<option value="BMW" style="color: black">BMW</option>
				<option value="Shelby" style="color: black">Shelby</option>
				<option value="Nissan" style="color: black">Nissan</option>
				<option value="Dodge" style="color: black">Dodge</option>
				<option value="Toyota" style="color: black">Toyota</option>
				<option value="Ferrari" style="color: black">Ferrari</option> 
			</select></th></tr> 
			<tr>
	<th>Model</th>      <th> <input type="text" placeholder="Model" name="model" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr> 
		  <tr><th>Status</th><th><select  name="status" required="" style="width:198px">
				<option value="" style="color: black">Select Status</option>
				<option value="New" style="color: black">New</option>
				<option value="Up and Coming" style="color: black">Up and Coming</option> 
		 </select></th></tr> 
		 <tr>
	<th>Vehicle Type</th><th><input type="text" placeholder="Vehicle Type" name="vehicle type" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>   
		 <tr>
				<th>Year</th>  <th> <input type="text" placeholder="Year" name="year" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
		 <tr>
				<th>Price</th>  <th><input type="text" placeholder="Price" name="price" required="" autocomplete="off"></th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
		 <tr>
				<th>Turnover</th><th> <input type="text" placeholder="Turnover" name="turnover" required="" autocomplete="off"> </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
		 <tr>
				<th>Cubic Capacity</th><th><input type="text" placeholder="Cubic Capacity" name="cc" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
		 <tr>
				<th>Power</th><th><input type="text" placeholder="Power" name="power" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
		 <tr>
			<th>Seating</th><th> <input type="text" placeholder="Seating Capacity" name="seating" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
		<tr>
				<th>Image</th><th><input type="file" placeholder="Image" name="image" required="" autocomplete="off">  </th></tr><tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
				<tr><th></th></tr><tr><th></th></tr><tr><th></th></tr>
	       <tr>
				<th> </th><th><input type="submit" value="Add"> </th></tr> 
	</form>
	</table>

	addmodelsact:
	<%
	   String brands = request.getParameter("brand");
			String model = request.getParameter("model");
			String year = request.getParameter("year");
			String price = request.getParameter("price");
			String to = request.getParameter("turnover");
			String cc = request.getParameter("cc");
			String seating = request.getParameter("seating");
			String image = request.getParameter("image");
			String status = request.getParameter("status");
			try {
			    Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
			    PreparedStatement ps = con.prepareStatement("INSERT INTO `models`(`brand`, `model`, `year`, `price`, `turnover`, `cc`, `seating`, `image`, `status`) VALUES (?,?,?,?,?,?,?,?,?)");
			    ps.setString(1,brands);
			    ps.setString(2,model);
			    ps.setString(3,year);
			    ps.setString(4,price);
			    ps.setString(5,to);	
			    ps.setString(6,cc);
			    ps.setString(7,seating);
			    ps.setString(8,image);
			    ps.setString(9,status); 
			    int x=ps.executeUpdate();
			    if(x > 0) {
				    response.sendRedirect("adminhome.jsp?m2=success");
			    }else {
				    response.sendRedirect("adminhome.jsp?m3=Failed");   
			    }  
			  }catch (Exception e) {
			    out.println(e.getMessage());
			 }
		    %>

	![Figure 5](https://user-images.githubusercontent.com/26704350/88904976-6fa40380-d25e-11ea-8328-91f2773bdee8.png)
						Figure 5 Adding a new model

	Editing the vehicles allows their renaming.
	<%
			String id = request.getParameter("id");
			String brands = request.getParameter("brand");
			String model = request.getParameter("model");
			String year = request.getParameter("year");
			String price = request.getParameter("price");
			String to = request.getParameter("turnover");
			String power = request.getParameter("power");
			String cc = request.getParameter("cc");
			String seating = request.getParameter("seating");
			String image = request.getParameter("image");
			String status = request.getParameter("status");
			String vt = request.getParameter("vehicle type");
			try { 
			    Class.forName("com.mysql.jdbc.Driver");
			    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
			    String sq1 = "UPDATE `models` SET `brand`= ?,`model`= ?,`year`= ?, `price`= ?,`turnover`= ?,`power`= ?,`cc`= ?,`seating`= ?,`image`= ?,`status`= ?,`vehicle type`= ? WHERE `id`= "+id+""; 
			    PreparedStatement ps = con.prepareStatement(sq1); 
			    ps.setString(1,brands);
			    ps.setString(2,model);
			    ps.setString(3,year);
			    ps.setString(4,price);
			    ps.setString(5,to);	
			    ps.setString(6,power);
			    ps.setString(7,cc);
			    ps.setString(8,seating);
			    ps.setString(9,image);
			    ps.setString(10,status);
			    ps.setString(11,vt); 
			    int x=ps.executeUpdate();
			    if(x > 0) {
				response.sendRedirect("adminhome.jsp?m2=Update successful");
			    }  else {
				response.sendRedirect("adminhome.jsp?m2=There is a problem with the update");
			    }
			}catch (Exception e) {
			    out.println(e.getMessage());
			 }
		    %>

	Deleting of the models executes from the page deletemodelact.jsp, which follows the car’s id in order to execute:
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
	4.2.2	The online vehicles dealership
	Just like in the administration section, the graphical part of the online dealershipis based of a front-end web template, much like the previous one, bootstrap.min.css, which is linked with the file  index.html: 
	<link rel=”stylesheet” href=https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css integrity="sha384-Cw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	![FIgure 6](https://user-images.githubusercontent.com/26704350/88905012-7c285c00-d25e-11ea-85ff-667204eaf432.png)
					Figure 6 index.html
					
	In the header zone we have the logo of the dealership inserted. 

	<a class = “navbar-brand” #>
	<img src=”logo.png” height=”15%” width=”10%”   alt=””>&nbspAUTOVINTAGE.com
	</a>

	On the left side we have a search bar in which we search for cars. The search bar is completely made in another page, searchact.jsp, and is called by the following script :

	<form class="form-inline my-1 my-1" action="searchact.jsp">
	<input name = "key" class="form-control mr-1 " type="search" placeholder="Search" aria-label="Search">
	<a href="searchact.jsp"><img src="baseline-search-24px.svg"></a>
	</form> 
	A resultset prints all inputs from the table models and searches them by model or by brand:
	<%
	String key = request.getParameter("key");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
	 String q = "SELECT * FROM `models` WHERE `brand` LIKE'%"+key+"%' OR `model` LIKE '%"+key+"%' ";
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery(q); 
	%>
	<div class="card-columns"> 
	    <%
	    while(rs.next()){ 
	    %> 
	  <div class="card">
	    <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
	    <div class="card-body">
	      <h5 class="card-title"><%=rs.getString("model")%></h5>
	     <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>Year: </b> <%=rs.getString("year")%> <br><b>Price: </b><%=rs.getString("price")%> Euro <br><b>Turnover: </b><%=rs.getString("turnover")%> km<br/></br><%=rs.getString("cc")%> cc</br><%=rs.getString("seating")%> seater</br></p>
	<a href="pyment.jsp?model=<%=rs.getString("model")%>&year=<%=rs.getString("year")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button type="button" class="btn btn-outline-danger">Buy</button></a>   
	    </div>
	  </div> 
	  <%
	    }
	  %>

	If the user who is surfing the site is not registered, he has the possibility to register, using the registration form after pushing the sign up button in userreg.jsp. The following syntax introduces the users’s dates in the database,  in the users table. 

	![Figure 7](https://user-images.githubusercontent.com/26704350/88905059-8b0f0e80-d25e-11ea-8e3f-2b7fe2d0c60a.png)
					Figure 7 userreg.jsp
	<%
	    String username= request.getParameter("username");
	    String password = request.getParameter("password");
	    String email= request.getParameter("email");
	    String mobile = request.getParameter("mobile"); 
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
	    String sql="INSERT INTO `users`(`username`, `password`, `email`, `mobile`) VALUES (?,?,?,?)";
	    PreparedStatement st = con.prepareStatement(sql); 
	   st.setString(1,username);
	   st.setString(2,password);
	   st.setString(3,email);
	   st.setString(4,mobile);
	   int i=st.executeUpdate();
	   if(i>0) {
		response.sendRedirect("user.jsp?msg=success")
	   }
	%>
	![FIgure 8](https://user-images.githubusercontent.com/26704350/88905311-ce697d00-d25e-11ea-80cb-5492306df54a.png)
					Figure 8 Registering  clients

	If the user has been successfully registered, he is redirected to the user.jsp page, where he is announced that he has been successfully registered and he can now login with the username and password. 

	<%
	if (request.getParameter("msg") != null) {%>
		<script>alert('User Registered Successfully...!');</script>
	<%}
	%>
	![Figure 9](https://user-images.githubusercontent.com/26704350/88905379-e4773d80-d25e-11ea-8fe8-a3259e5c8bc1.png)
					Figure 9 Successful registration

	In the login section, the client has to introduce the username and the password:
	![Figure 10](https://user-images.githubusercontent.com/26704350/88905436-fc4ec180-d25e-11ea-9d39-07b4334416bf.png)
					Figure 10 User acces

	If the login has been successfully done, there will be a message “Hello user”. Otherwise, there will be a warning message: “Login failed” and a link to reload the login.
	In the home section we can search a car by brand, if we click on one of the brands there will be a gallery of images of cars from the respective brands; in case there are no cars yet, the server will respond that there are no cars from that brand.
	<div id="band" class="container text-center">
	<h3  class="text-center" align="left"> Search by Brands</h3>
	<br>
			<div class="row">
			<div class="col-sm-4">
	<a href="cars.jsp?val=Toyota">
				<img src="t.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
			</a>
			<p class="text-center"><strong>Toyota</strong></p><br>
	</div>
	<div class="col-sm-4">
	<a href="cars.jsp?val=Ford" >
	<img src="for.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
	</a>
	<p class="text-center"><strong>Ford</strong></p><br>
	</div>
	<div class="col-sm-4">
	<a href="cars.jsp?val=Ferrari" >
				<img src="fer.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
			</a>
			<p class="text-center"><strong>Ferrari</strong></p><br>
	</div>
	<div class="col-sm-4">
	<a href="cars.jsp?val=BMW">
			<img src="b.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
			</a>
			<p class="text-center"><strong>BMW</strong></p><br>
	</div>
	<div class="col-sm-4">
	<a href="cars.jsp?val=Nissan">
				<img src="n.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
			</a>
			<p class="text-center"><strong>Nissan</strong></p><br>
	</div>
	<div class="col-sm-4">
	<a href="cars.jsp?val=Chevrolet">
			<img src="c.jpg" class="img person" alt="Couldn't load image" width="255" height="255">
			</a>
			<p class="text-center"><strong>Chevrolet</strong></p><br>
	</div>

	This functionality is also done in cars.jsp to make sure that the are cars from that brand,by using  resultsets and statements:
	<%
	 Class.forName("com.mysql.jdbc.Driver");
	 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino"); 
	 String val = request.getParameter("val"); 
	 %> 
	 <% 
	 String q = "SELECT * FROM `models` WHERE `brand` = '"+val+"'";
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery(q); 
	%>
	<div class="card-columns"> 
	    <%
		while(rs.next()){ 
	    %> 
	  <div class="card">
		 <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
		<div class="card-body">
	      <h4 class="card-title"><b>Brand:</b> <%=rs.getString("brand")%></h4>
	      <p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>Vehicle Type: </b><%=rs.getString("vehicle type")%> <br><b>Year: </b> <%=rs.getString("year")%> <br><b>Price: </b><%=rs.getString("price")%> Euro <br><b>Turnover: </b><%=rs.getString("turnover")%> km<br><b>Power: </b><%=rs.getString("power")%> hp <br/></br><%=rs.getString("cc")%> cc</br><%=rs.getString("seating")%> seater</br></p>
	      <a href="payment.jsp?model=<%=rs.getString("model")%>&year=<%=rs.getString("year")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&image=<%=rs.getString("image")%>&brand=<%=rs.getString("brand")%>"><button type="button" class="btn btn-outline-danger">Buy</button></a>  
	    </div>
	  </div> 
	  <% 
	 }
	%>
	![Figure 11](https://user-images.githubusercontent.com/26704350/88905509-0a044700-d25f-11ea-933f-faaa7db1ec7c.png)
						Figure 11 Cars

	Under the search bar, there is a search button in which we can find the cars by the number of kilometers travelled, the status of the vehicle or by price.
	![Figure 12](https://user-images.githubusercontent.com/26704350/88905578-14bedc00-d25f-11ea-8e20-b4d18ec8f0f6.png)
						Figure 12 Search by category

	This functionality is done only when we visualize the cars as users and uses the following syntax:
	<div id="mySidebar" class="sidebar">
		 <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> x</a>
		 <a href="#m1">Model</a>
		<div id="list">
			<a href=#><h5><li>Up and Coming</li></h5></a>
			<a href="#m1"><h5><li>New</li></h5></a>
		</div>
	  <a href="#m1">Price</a>
		<div id="list">
			<a href=#><h5><li>High to low</li></h5></a>
			<a href="#"><h5><li>Low to high</li></h5></a>
		</div>
	  <a href="#m1">Turnover</a>
		<div id="list">
			<a href="lowtohigh.jsp?under=10"><h5><li>under 50000 km</li></h5></a>
			<ahref="lowtohigh.jsp?between=10-15"><h5><li>50000-150000 km</li></h5></a>
			<ahref="lowtohigh.jsp?above=15"><h5><li>150000 km & above</li></h5></a>
		</div>
	</div>
	<div id="main" >
	  <button class="openbtn" onclick="openNav()">Search
	    </button>
	![Figure 13](https://user-images.githubusercontent.com/26704350/88905641-299b6f80-d25f-11ea-8fab-00f1071b8b79.png)
						Figure 13 Cars searched by the Ford brand
						
	The printed cars have a descriptive image, the brand, the model, the year it was first released a price, the turnover(the number of kilometers the car has travelled), the power, the vehicle type, the cubic capacity and how many seats the car has. If we click the buy button on a certain car, there is a possibility that the respective vehicle would be added in the shopping cart.
	Also, if we are not registered, there will be a message warning in which means we have to be registered in order to buy it.
	if(session.getAttribute("username")==null) { 
	      %> 
		<br><Br><center>Please Register</center> 
	      <% 
	  }

	After pushing the Buy button, we are redirected to the page in which we make our payment, payment.jsp. The car has already been put in the bookings table with the help of the code from the page  ubuy.jsp:
	<%
	String username = session.getAttribute("username").toString();
		String to = request.getParameter("turnover");
		String model = request.getParameter("model");
		String year = request.getParameter("year");
		String price= request.getParameter("price");
		String image = request.getParameter("image");
		String brand = request.getParameter("brand"); 
		String fullname = request.getParameter("fullname"); 
		String address = request.getParameter("address"); 
		String zip = request.getParameter("zip"); 
		String state = request.getParameter("state"); 
		String city = request.getParameter("city"); 
		String email = request.getParameter("email");         
		String cardname = request.getParameter("cardname"); 
			String cardnumber = request.getParameter("cardnumber"); 
			String expmonth = request.getParameter("expmonth"); 
			String expyear = request.getParameter("expyear"); 
			String cvv = request.getParameter("cvv");    
	Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
		String sql="INSERT INTO `bookings`(`username`, `brand`, `model`,`year`,`price`, `turnover`, `image`, `fullname`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `cvv`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1,username);
		st.setString(2,brand);
		st.setString(3,model);
		st.setString(4,year);
		st.setString(5,price);
		st.setString(6,to);
		st.setString(7,image);
		st.setString(8,fullname);
		st.setString(9,email);
		st.setString(10,address);
		st.setString(11,city);
		st.setString(12,state);
			st.setString(13,zip);
		st.setString(14,cardname);
			st.setString(15,cardnumber);
			st.setString(16,expmonth);
		     st.setString(17,expyear);          
		     st.setString(18,cvv); 
		int i=st.executeUpdate();
		if(i>0) {
				response.sendRedirect("userhome.jsp?msg1=success"); 
		}
	%>
	![Figure 14](https://user-images.githubusercontent.com/26704350/88905719-3e780300-d25f-11ea-8793-ac89327b9b78.png)
					Figure 14 Cart List

	In this page we have the option of removing the cars from the cart.
	On the page with the possibility of buying vehicles there are printed the brand, the model, the year, the price, the turnover,  the cubic capacity and the number of seats. If there are no payments the server warns us with a message “No payments on display”.
	<%
		String username = session.getAttribute("username").toString();
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino"); 
		String q1 = "SELECT * FROM `bookings` WHERE `username` = '"+username+"'";
		Statement st1 = con.createStatement();
		ResultSet rs1 = st1.executeQuery(q1);
		if(rs1.next()) { 
			String q = "SELECT * FROM `bookings` WHERE `username` = '"+username+"'";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(q); 
	%>
	<div class="card-columns"> 
	    <%
		while(rs.next()) { 
	    %> 
	  <div class="card">
		 <img class="card-img-top" src="images/<%=rs.getString("image")%>" alt="Card image cap">
		<div class="card-body">
		<h4 class="card-title"><b>Brand:</b> <%=rs.getString("brand")%></h4>
		<p class="card-text"><b>Model: </b> <%=rs.getString("model")%> <br><b>Year: </b> <%=rs.getString("year")%> <br><b>Price: </b> <%=rs.getString("price")%> Euro <br><b>Turnover: </b><%=rs.getString("turnover")%> km<br/></p>
			<a href="cancelbooking.jsp?model=<%=rs.getString("model")%>&year=<%=rs.getString("year")%>&price=<%=rs.getString("price")%>&turnover=<%=rs.getString("turnover")%>&brand=<%=rs.getString("brand")%>"><button type="button" class="btn btn-outline-danger">Cancel Payment</button></a> 
	    </div>
	  </div> 
	  <%
	    }
	    }else { 
		 out.println("<center><font color='red' size='4'><br><br><br>No payments to display..</font><br><br><br><br><br><br><br><br><br><br><br><br></center>");
	 }
	  %>
	![Figure 15](https://user-images.githubusercontent.com/26704350/88905721-3f109980-d25f-11ea-8fdf-ca87dad6dfd8.png)
						Figure 15 No payments warning

	After clicking the Buy button, we are redirected to a page where we make our payment:		
	![Figure 16](https://user-images.githubusercontent.com/26704350/88905713-3cae3f80-d25f-11ea-9b65-0cf07f77105e.png)
						Figure 16 Payment method

	If we click the “Reserve” button,we are directed to a page where we make an apoointment with the dealer himself and pay the car with cash,uappointment.jsp. In the page we put the username and the date of the appointment. The car has already been put in the appointment table with the help of the code from the page  uappointment1.jsp:
	<%
	    String username = session.getAttribute("username").toString();
	    String to = request.getParameter("turnover");
	    String model = request.getParameter("model");
	    String year = request.getParameter("year");
	    String price= request.getParameter("price");
	    String image = request.getParameter("image");
	    String brand = request.getParameter("brand"); 
	    String date1 = request.getParameter("date"); 
	    String email = request.getParameter("email"); 
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
	   String sql="INSERT INTO `appointment`(`username`, `turnover`, `model`, `year`, `price`, `image`, `brand`, `date`, `email`) VALUES (?,?,?,?,?,?,?,?,?)";
	   PreparedStatement st = con.prepareStatement(sql); 
	   st.setString(1,username);
	   st.setString(2,email);
	   st.setString(3,brand);
	   st.setString(4,model);
	   st.setString(5,year);
	   st.setString(6,price);
	   st.setString(7,to);
	   st.setString(8,image);
	   st.setString(9,date1);
	   int i=st.executeUpdate();
	   if(i>0) {
		response.sendRedirect("userhome.jsp?msg2=success"); 
	    }
	   %>

	![Figure 17](https://user-images.githubusercontent.com/26704350/88905715-3ddf6c80-d25f-11ea-8758-d1694bdfecd5.png)
						Figure 17 Appointment

	In this page we can view the appointment and we also have the option of cancelling it, as well.
	![Figure 18](https://user-images.githubusercontent.com/26704350/88905716-3ddf6c80-d25f-11ea-85b4-a61d8b83c084.png)
						Figure 18 Cancel appointment
						
	We can also add feedback about the vehicle once it has been put in the cart.From there, we are linked to the page ufeedback.jsp. Once we push the feedback button, we will be headed to another page,ufeedback1act.jsp,. The car has already been put in the feedback table with the help of the code from that page.
	<%
	    String username = session.getAttribute("username").toString();
	    String to = request.getParameter("turnover");
	    String model = request.getParameter("model");
	    String year = request.getParameter("year");
	    String price= request.getParameter("price");
	    String image = request.getParameter("image");
	    String brand = request.getParameter("brand"); 
	    String feedback = request.getParameter("feedback"); 
	   Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/autovintage", "AndreiLungu", "marcelino");
	   String sql="INSERT INTO `feedback`(`username`, `brand`, `model`,`year`, `price`, `turnover`, `image`, `feedback`) VALUES (?,?,?,?,?,?,?,?)";
	   PreparedStatement st = con.prepareStatement(sql); 
	   st.setString(1,username);
	   st.setString(2,brand);
	   st.setString(3,model);
	   st.setString(4,year);
	   st.setString(5,price);
	   st.setString(6,to);
	   st.setString(7,image);
	   st.setString(8,feedback);
	   int i=st.executeUpdate();
	   if(i>0) {
		response.sendRedirect("ufeedback.jsp?msg=success"); 
	    }
	   %>

	There are two extra features. One for insurance and the other for discount. Both of them printing a message about a potential discount and how to claim insurance. The discount is put in the adddiscount.jsp.
	![FIgure 19](https://user-images.githubusercontent.com/26704350/88905718-3e780300-d25f-11ea-9996-d4d0f1ae8b0b.png)
	Figure 19 Insurance and discount
	
		    <center>
		    	<h2>Available up to 20% discount and claim Insurance</h2> 
		    </center>  

