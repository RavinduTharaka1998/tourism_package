<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>viewPackagePage</title>
<link rel = "stylesheet" href = "css/viewPackage.css">
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
   	  <br><br>
      <div class = "middle-inner">
          <div class = "middle-details">
          	<center><h2>Your Current Tourism Packages</h2><h4>.you can update or delete your package details.</h4></center>
            <hr>
            <br>
            <table>
			<thead>
					<tr>
						<th>Package_ID</th>
						<th>Package Name</th>
						<th>Hotel Name</th>
						<th>Location</th>
						<th>Description</th>
						<th>Contact Number</th>
						<th>Price</th>
					</tr>
				</thead>
				<tbody>
						<%
						
						try
						{
							Class.forName("com.mysql.jdbc.Driver");
							String userName = "root";
							String password = "Rambo123";
							String url = "jdbc:mysql://localhost:3306/tourism";
							Connection con = DriverManager.getConnection(url,userName,password);
						    Statement stat = con.createStatement();  
							String query = "";
							String sql;
							if(query!=null)
							{
								
								sql = "select * from tourism.package";
								
							}
							else
							{
								sql = "select * from tourism.package";
								
							}
							ResultSet rs = stat.executeQuery(sql);
							
							
							while(rs.next())
							{
								%>
							<tr>	
							<td><%=rs.getInt(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
							<td><%=rs.getString(5) %></td>
							<td><%=rs.getString(6) %></td>
							<td><%=rs.getString(7) %></td>
							<td><a href='updatePackage.jsp?id=<%=rs.getInt("idpackage")%>' class="update">Update</a></td>
							<td><a href='deletePackage.jsp?id=<%=rs.getInt("idpackage")%>' class="delete">Delete</a></td>
							</tr>
							<%
							}



							
						}
						catch(Exception e)
						{
							out.println("Exception :"+e.getMessage());
							System.out.println("Error");
							e.printStackTrace();
						}
						%>	
						
					<!-- } -->
				</tbody>
			</table>
            </div>
          </div>
          
          <br><br>
      </div>
       <br>
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