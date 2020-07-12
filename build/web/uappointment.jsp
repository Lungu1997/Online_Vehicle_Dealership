<%

if(session.getAttribute("username")==null){
      
      %>
      
      <br><Br><center>Please Register</center>
      
      <%
      
  }
  
else {
%><!doctype html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>

body {
    font-family: "Lato", sans-serif;
}

.sidebar {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidebar a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidebar a:hover {
    color: #f1f1f1;
}

.sidebar .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

.openbtn {
    font-size: 20px;
    cursor: pointer;
    background-color: #111;
    color: white;
    padding: 10px 15px;
    border: none;
}

.openbtn:hover {
    background-color: #444;
}

#main {
    transition: margin-left .5s;
    padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
    .sidebar {padding-top: 15px;}
    .sidebar a {font-size: 18px;}
}
	.navbar {
     font-family: "System", Times, serif;
      margin-bottom: 0;
   
      border: 0;
      font-size: 15px !important;
      letter-spacing: 1px;
      opacity: 0.9;
  	}
 	 .navbar li a, .navbar .navbar-brand { 
      color: #fff !important;
 	 }
  	.navbar-nav li a:hover {
      color: #000 !important;
 	 }
  	.navbar-nav li.active a {
      color: #000 !important;
    
 	 }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
.nav-item-dropdown{
color:#000;
}
  footer {
          background-color: #e82929 ;
 border-color: transparent;
padding:2px;
  }
  footer a {
      color:black;
  }
  footer a:hover {
      color:white;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 2;
  }
#navdrop , .dropdown-menu{
 background-color: #e82929;
}  
</style>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">
    
        <%
if (request.getParameter("msg") != null) {%>
<script>alert('Login Successful!');</script>
<%}%>


<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
	 	<a class="navbar-brand" >
    		<img src="logo.png" height="15%" width="10%"  alt="">&nbspAUTOVINTAGE.com
		</a>
    <%
    String user = session.getAttribute("username").toString();
    %>
  		  
		<a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>
			
</nav>
<nav class="navbar navbar-expand-lg navbar-light  "  style="background-color:#e82929;" >
  		<div class="collapse navbar-collapse " id="navbarSupportedContent">
	   	<form class="form-inline my-1 my-1" action="searchact1.jsp">
		      <input name = "key" class="form-control  mr-1 " type="search" placeholder="Search" aria-label="Search">
      		   	</br><a href="searchact1.jsp"><img src="baseline-search-24px.svg"></a>
    	  	 </form> 	
 		<ul class="navbar-nav ml-auto">
  	    	<li class="nav-item active ">
		 <a class="nav-link " href="userhome.jsp"><b>Home</b> 
		<span class="sr-only">(current)</span></a>
     	 	</li>
	 	
   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Search
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="uviewmodels.jsp">Models</a>
          <a class="dropdown-item"  id="navdrop" href="uviewprice.jsp">Price</a>
	<a class="dropdown-item" id="navdrop" href="uviewmileage.jsp">Turnover</a>
        </div>
      </li>
       	

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Orders
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="uviewpayments.jsp">Payments</a>
          <a class="dropdown-item"  id="navdrop" href="uviewappointment.jsp">Appointments</a>
	<a class="dropdown-item" id="navdrop" href="ufeedback.jsp">Feedback</a>
        </div>
      </li>
      

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Features
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item"  id="navdrop" href="insurance.jsp">Insurance</a>
	<a class="dropdown-item" id="navdrop" href="discounts.jsp">Discounts</a>
        </div>
      </li>
      	  	
	</ul>
	 </div>
</nav>
<div id="mySidebar" class="sidebar">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()"> x</a>
  <a href="#m1">Model</a>
	<div id="list">
	<a href=#><h5><li>Up and Coming</li></h5></a>
	<a href=#><h5><li>New</li></h5></a>
      
	</div>
  <a href="#m1">Price</a>
	<div id="list">
	<a href="lowtohigh.jsp?high=high"><h5><li>High to low</li></h5></a>
	<a href="lowtohigh.jsp?low=low"><h5><li>Low to high</li></h5></a>
	</div>
  <a href="#m1">Turnover</a>
	<div id="list">
	<a href="lowtohigh.jsp?under=50000"><h5><li>under 50000 km</li></h5></a>
	<a href="lowtohigh.jsp?between=50000-150000"><h5><li>50000-150000 km</li></h5></a>
	<a href="lowtohigh.jsp?above=150000"><h5><li>150000 km & above</li></h5></a>
	</div>
</div>

<div id="main" >
  <button class="openbtn" onclick="openNav()">Search
    </button>
    <%
    String username = session.getAttribute("username").toString();
    String to = request.getParameter("turnover");
    String model = request.getParameter("model");
    String year = request.getParameter("year");
    String price= request.getParameter("price");
    String image = request.getParameter("image");
    String brand = request.getParameter("brand");
    String date = request.getParameter("date");
    String email = request.getParameter("email");
    %>
    
<br><br>
    <p align="justify">
    <p><center><font color="black" size="5"> Appointment </font></center></p>
    <form action="uappointment1.jsp?image=<%=image%>" method="post" >
    <table align="center" width="321">
    <tr>
    <td width="191" height="43"><font color="black">User Name </td>
    <td width="218"><input name="username" readonly="" value="<%=username%>" /></td>
    </tr>
    
     <tr>
    <td><input type="hidden" name="brand" readonly="" value="<%=brand%>" /></td>
    </tr>
    
    <tr>
    <td><input type="hidden" name="model" readonly="" value="<%=model%>"/></td>
    </tr>
    
    <tr>
    <td><input type="hidden" name="year" readonly="" value="<%=year%>"/></td>
    </tr>
    
    <tr>
    <td><input type="hidden" name="price" readonly="" value="<%=price%>" /></td>
    </tr>
    
     <tr>
    <td><input type="hidden" name="turnover" readonly="" value="<%=to%>" /></td>
    </tr>
    
    
     <tr>
    <td><input type="hidden" name="image" readonly="" value="<%=image%>" /></td>
    </tr>
    
    <tr>
    <td><input type="hidden" name="DATE" readonly="" value="<%=date%>" /></td>
    </tr>
    
     <tr>
    <td><input type="hidden" name="email" readonly="" value="<%=email%>" /></td>
    </tr>
    
    <tr>
    <td height="43"><font color="black">Select Date </td>
    <td><input type = "DATE" name="DATE" style="text-align:right" required="" ></td></label>
    </td>
    </tr>
   
    <tr>
    <td height="43" rowspan="3"></td>
    <td align="left" valign="middle">
    <p>
    <input name="submit" type="submit" value="SUBMIT" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>

<br><br><br>
</div><br><br><br><br><br>
<div class="card-group">
  <div class="card">
        <div class="card-body">
      <h5 class="card-title">Overview</h5>
      <h5 class="card-text"><small class="text-muted">About us</small></h5>
      <h5 class="card-text"><small class="text-muted">FAQs</small></h5>
    </div>
  </div>
  <div class="card">
        <div class="card-body">
      <h5 class="card-title">Experience on</h5>
      	&nbsp&nbsp&nbsp&nbsp&nbsp
	<button type="button" class="btn btn-dark btn-lg">&nbspDownload on <img src="icons8-google-play-30.svg"></button></br>
	</br>&nbsp&nbsp&nbsp&nbsp&nbsp
	<button type="button" class="btn btn-dark btn-lg">&nbspDownload on <img src="icons8-apple-app-store.svg"></button>
    </div>
  </div>
</div>



<!-- Footer -->
<footer class="text-center">
  <a href="#top">
  <p>go to top</p> 
</a>
</footer>

<script>
function openNav() {
    document.getElementById("mySidebar").style.width = "250px";
    document.getElementById("main").style.marginLeft = "250px";
}

function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginLeft= "0";
}
</script>
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	  
</body>
</html> 
<%}%>