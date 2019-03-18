<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
 <div class="page">
    <div class="headerpart">
	<img src="images/header.jpg" alt="oops" height="180px" width="1330px"></div>
    <div class="linkspart">
    <center>
    <a href = "home.html"><b>DigitalLibrary</b></a> &nbsp;
	
    <a href = "BookListServlet"><b>BookList</b></a> &nbsp;

    <a href = "BookIssue.jsp"><b>BookIssued</b></a> &nbsp;
	
    <a href = "BookReserve.jsp"><b>BookReserved</b></a> &nbsp;
    
    <a href = "home.html"><b>ViewReports</b></a> &nbsp;
    </center>
    </div>
    <div class="bodypart">

    <div class="imagepart" >
  <div class="slideshow-container" style="max-height:70%">

<div class="mySlides fade">
  
  <img src="images/01.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">

  <img src="images/101.jpg" style="width:100%">  
  
</div>

<div class="mySlides fade">

  <img src="images/104.jpg" style="width:100%">
  
</div>
<div class="mySlides fade">

  <img src="images/105.jpg" style="width:100%">
  
</div>
<div class="mySlides fade">

  <img src="images/106.jpg" style="width:100%">
  
</div>

<div class="mySlides fade">
  
  <img src="images/marcustulliuscicero.jpg" style="width:100%">
  
</div>

</div>

<br /><br /><br /><br /><br /><br /><br />

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span>
   <span class="dot"></span> 
  <span class="dot"></span>
</div>
</div>

    <div class="newspart">
        <h2>News and Events</h2>
        <marquee direction ="up" height="80%">
        <h4>Events in College</h4>
        <p> Legato training is being conducted at IIHT  </p>
        <br>
        <p>Intercollege Short movie Making</p>
        <br>
        <p>National Conference on Power Quality</p>
        <br>
       
        </marquee>
        </div>
 
<center><h3> Welcome to the world of Knowledge </h3></center>

<p>Library management system is a project which aims in developing a computerized system to maintain all the daily work of library .
This project has many features which are generally not available in normal library management systems like facility of user login and a facility of teachers login .
It also has a facility of admin login through which the admin can monitor the whole system . </p>

<p>It also has facility of an online notice board where teachers can student can put up information about workshops or seminars being held in our colleges. </p>

</div>
</div>

<div class = "footerpart">
<center>
<img src="images/facebookicon.png" alt="facebook logo" width="20" height="20">&nbsp;
    <img src="images/twittericon.png" alt="twitter logo" width="20" height="20">&nbsp;
    <img src="images/linkedinicon.png" alt="linkedin logo" width="20" height="20">
	 <br />
2019.All Copyrights Reserved
</center>
</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
</body>
</html>