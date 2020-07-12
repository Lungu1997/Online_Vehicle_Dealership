<!doctype html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
 body {
font-family: "System", Times, serif;
color: #777;
background-image:url("bg..png");

background-size:cover;
}
 h5{
margin: 0 0 0 20px;
letter-spacing: 1px;      
font-size: 20px;
color: #111;

}
.container {
padding: 80px 120px;
}
.person {
border: 10px solid transparent;
margin-bottom: 25px;
opacity: 0.7;
}
.person:hover {
border-color: #f1f1f1;
}
.text-center{
color: #ff0000 !important;
}
.carousel-inner img {
width: 100%; /* Set width to 100% */
margin: auto;
}
.carousel-caption h3 {
color: #ff0000 !important;
}
@media (max-width: 600px) {
.carousel-caption {
display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
}
}
  .btn {
      padding: 3px 5px;
       transition: .2s;
	font-size: 15px !important;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #111;
      background-color: black;
      color: white;
  }
.w3-container{
 color: white;
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
    <%
if(request.getParameter("m1")!=null){%>
    
<script>alert('Login Sucess!')</script>

<%}
if(request.getParameter("msg1")!=null){%>

<script>alert('  Thanks for the payment>
	Your order has been Placed !')</script>
 <%
}
%>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
	 	<a class="navbar-brand" >
    		<img src="logo.png" height="15%" width="10%"  alt="">&nbspAUTOVINTAGE.com
		</a>
    
    <%
    String user = session.getAttribute("username").toString();
    
    %>
    <h3>Hello&nbsp;<%=user%></h3>&nbsp;&nbsp;&nbsp;&nbsp;
		
  		<a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>
			
</nav>

<nav class="navbar navbar-expand-lg navbar-light sticky-top "  style="background-color:#e82929;" >
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
        </div>
      </li>
       	

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <b> Orders</b>
        <span class="sr-only">(current)</span></a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class=" dropdown-item" id="navdrop" href="uviewpayments.jsp">Payments</a>
          <a class="dropdown-item"  id="navdrop" href="uviewappointment.jsp">Appointments</a>
	<a class="dropdown-item" id="navdrop" href="ufeedback.jsp">Feedback</a>
        </div>
      </li>
      

   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="features.html" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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

<marquee bgcolor="white" behavior="alternate" scrollamount="16"><h5><b>Find  the latest upcoming classic cars from years past<b></h5></marquee>
<!-- Container (Indicator) -->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		  <ol class="carousel-indicators">
 		  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    		  <li data-target="#myCarousel" data-slide-to="1"></li>
		  <li data-target="#myCarousel" data-slide-to="2"></li>
		  </ol>
 	 <div class="carousel-inner">
 	  <div  class="carousel-item active">
 		<a href="fviewmodels.jsp">
		<img src="home1.jpg" alt="Couldn't load image" >
	</a>
	<div class="carousel-caption">
	<h3>1986 Chevrolet Camaro IROC-Z</h3>
	</div>
	    </div>
  	  <div class="carousel-item">
   		  <a href="fviewmodels.jsp">
	<img src="home3.jpg" alt="Couldn't load image" >
	</a>
	<div class="carousel-caption">
	<h3>1969 Dodge Charger</h3>
	</div>
   	 </div>
   	 <div class="carousel-item">
   		  <a href="fviewmodels.jsp">
	<img src="home2.jpg" alt="Couldn't load image">
	</a>	
	<div class="carousel-caption">
	<h3>1988 BMW M3</h3>
	</div>
   	 </div>
  	</div>
 	 <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>



<!-- Container (Brand) -->
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
		
	</div>
</div>

<!-- Container (Contact Section) -->


<!-- Footer --></div>


<br><br><Br>
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

<footer class="text-center">
  <a href="#top"><img src="baseline-keyboard_arrow_up-24px.svg">
  <h6>&nbsp go to top<h6> 
</a>
</footer>

<script language=JavaScript>
$(function () {
  $('[data-toggle="popover"]').popover()
})
</script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
