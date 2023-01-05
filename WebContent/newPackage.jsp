<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>newPackagePage</title>
<link rel = "stylesheet" href = "css/newPackage.css">
<script src = "js/newPackage.js"></script>
</head>
<body>
   <div class="header">
		<a href=""><img class="logo" src="images/theLogo.png" alt=""></a>
		<a href=""><img class="profile" src="images/prof.png" alt="sliit.lk"></a>
   </div>

	<div class="topnav">
	  <a class="first" href="homePage.jsp">Home</a>
	  <a href="">Contact</a>
	  <a href="www.google.com">News</a>
	  <a href="">About Us</a>
	  <a href="">Package</a>
	  <a href="">Destination</a>
	  <a class="last" href="">Things To Do</a>
	</div>

   <div class = "middle">
   	  <br><br><br><br><br>
      <div class = "middle-inner">
          <div class = "middle-details">
          	<center><h2>Plan Your New Tourism Package</h2></center>
            <hr>
           <br>
           <form method = "post" action = "addPackage">
              <label>Package Name</label><br>
              <input type = "text" name = "pname" required><br><br>
              
              <label>Hotel Name</label><br>
              <input type = "text" name = "hname" required><br><br>
              
              <label>Location</label><br>
              <select name = "location" required>
                <option value = "Matara">Matara</option>
                <option value = "Galle">Galle</option>
                <option value = "Kandy">Kandy</option>
                <option value = "Colombo">Colombo</option>
              </select><br><br>
               
              <label>Description</label><br>
              <textarea name = "description" id = "description" onInput = "req_description()" required></textarea>
              <br><span id = "res_description"></span><br>
              
			  <label>Contact Number</label><br>
              <input type = "number" name = "phone" id = "phone" onInput = "req_phone()" required>
              <br><span id = "res_phone"></span><br>
              
              <label>Price</label><br>
              <input type = "number" name = "price" id = "price" onInput = "req_price()" required>
              <br><span id = "res_price"></span><br>
              
              <input type = "submit" value = "Submit" id = "submit" name = "submit">
           </form>
          </div>
      </div>
       <br><br><br><br><br>
   </div>
   
   <div class = "sample-image">
        <img src = "images/sample1.jpg">
        <img src = "images/sample2.jpg">
        <img src = "images/sample3.jpg">
        <img src = "images/sample4.jpg">
   </div>
   
  	<footer>
		<div class="foot">
		<div class="column">
			<h1 class="col1">Sri Lanka at a Glance</h1>
			<br/>
			<p  class="col1">Sri Lanka, formerly known as Ceylon and officially the Democratic Socialist Republic of Sri Lanka, is an island country in South Asia.
			It lies in the Indian Ocean, southwest of the Bay of Bengal, and southeast of the Arabian Sea;
			it is separated from the Indian subcontinent by the Gulf of Mannar and the Palk Strait.
			</p>
			<br/>
			<h1 class="col1">Plan Your Trip</h1>
			<p class="col1">The palms clasped together and a gentle blow of the head accompanies, “Ayubowan”, Sri Lanka’s gentle gesture of welcome and respect.
			Enjoy your time freely because, We have the perfect tour package for you.</p>
			<br/>
			<a href=""><button id="btn">Plan Your Tour</button></a>
			</div>
		<div class="column"><a href = "https://www.tripadvisor.com/"><img class="tripA" src="images/TA.png" alt="sliit.lk"></a></div>
		<div class="column" id="third"><address>No: 170/8,<br/> “Saru Uyana”,<br/>New Kandy Road,<br/>Malabe,<br/> Sri Lanka.<br/></address><br/>
			<br/><p>Tel: +94 11 754 8561<br/>Mobile: +94 71 823 5478<br/>OR<br/></p>
			<a href="mailto:email@example.com"><h3>E-mail us</h3></a>
			</div>
		</div>
	</footer> 
</body>
</html>