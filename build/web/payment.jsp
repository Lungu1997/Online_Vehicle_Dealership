<%

if(session.getAttribute("username")==null){
      
      %>
      
      <br><Br><center>Please Register</center>
      
      <%
      
  }
  
else {
%>


<!doctype html>
<html>
	<head>
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;

  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}


</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark "  style="background-color:#000000;" >
	 	<a class="navbar-brand" >
    		<img src="logo.png" height="15%" width="10%"  alt="">&nbspAUTOVINTAGE.com
		</a>
 
  		<a href="logout.jsp" class="btn btn-danger btn-lg active" role="button" data-toggle="popover" title="Login/Signup" data-content="Login/Signup" aria-pressed="true">Logout</a>
			
</nav>
        
<%

  String username = session.getAttribute("username").toString();
  
  
  
  
  
 
    String to = request.getParameter("turnover");
    String model = request.getParameter("model");
    String year = request.getParameter("year");
    String price= request.getParameter("price");
    String image = request.getParameter("image");
    String brand = request.getParameter("brand"); 
%>

        


<h2>Make your payment</h2>
<div class="row">
  <div class="col-75">
    <div class="container">
      <form action="ubuy.jsp" method="post">
      
        <div class="row">
          <div class="col-50">
            <h3>Billing Address</h3>
            <label for="fname"><i class="fa fa-user"></i> Full Name</label>
            <input type="text" id="fname" name="fullname" placeholder="John M. Doe">
            <input type="hidden" name="turnover" value="<%=to%>">
            <input type="hidden" name="model" value="<%=model%>">
            <input type="hidden" name="year" value="<%=year%>">
            <input type="hidden" name="price" value="<%=price%>">
            <input type="hidden" name="image" value="<%=image%>">
            <input type="hidden" name="brand" value="<%=brand%>">
            <label for="email"><i class="fa fa-envelope"></i> Email</label>
            <input type="text" id="email" name="email" placeholder="john@example.com">
            <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
            <input type="text" id="adr" name="address" placeholder="542 W. 15th Street">
            <label for="city"><i class="fa fa-institution"></i> City</label>
            <input type="text" id="city" name="city" placeholder="New York">

            <div class="row">
              <div class="col-50">
                <label for="state">State</label>
                <input type="text" id="state" name="state" placeholder="NY">
              </div>
              <div class="col-50">
                <label for="zip">Zip</label>
                <input type="text" id="zip" name="zip" placeholder="10001">
              </div>
            </div>
          </div>

          <div class="col-50">
            <h3>Payment</h3>
            <label for="fname">Card mode</label>
            <div class="icon-container">
             <a href="payment.jsp"> <i class="fa fa-cc-visa" style="color:navy;">Credit </i></a>/
              <a href="payment.jsp"><i class="fa fa-cc-amex" style="color:blue;">Debit</i></a>
             </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="cardname" placeholder="John Mason">
            <label for="ccnum">Card number</label>
            <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444">
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Month</label>
                <input type="text" id="expmonth" name="expmonth" placeholder="1-12">
              </div>
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2020">
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="352">
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr"> Shipping address same as billing
        </label>
	<button type="submit" class="btn btn-outline-danger btn-lg btn-block" data-toggle="modal" data-target="#e2">Pay</button></br></br> 
<div class="modal fade" id="e2" tabindex="10" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
     <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Payment Received</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h5> Thanks for the payment.</h5>
	<p>Your order has been Placed !</p>
      </div>
      <div class="modal-footer">
      <a href="#" class="btn btn-danger btn-lg" role="button" aria-pressed="true">ok</a>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
  </div>
    </div>
  </div> 
</div>       






      </form>
    </div>
  </div>
  <div class="col-25">
    <div class="container">
      <h4>Cart <span class="price" style="color:black"><i class="fa fa-shopping-cart"></i> <b>1</b></span></h4>
      <p><%=model%><span class="price">Euro <%=price%></span></p>
       <hr>
      <p>Total <span class="price" style="color:black"><b>Euro <%=price%></b></span></p>
    </div>
  </div>
</div>





	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
	</body>
</html>
<%

  }
%>