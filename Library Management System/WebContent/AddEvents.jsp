<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="87ceeb">
<center><h2>Library Management System</h2></center>
<!--Once the form is submitted, all the form data is forwarded to InsertBooks.php -->
<form  onsubmit="return validation()" action="AddEventServlet">
 
<table border="2" align="center" cellpadding="5" cellspacing="5">
<tr>
<td> Enter Event Name:</td>
<td> <input type="text" id="eventName" name="eventName" size="48"> </td>
</tr>
<tr><td></td><td><span id="ena"></span></td></tr>
<tr>
<td> Enter Event Date :</td>
<td> <input type="text" id="eventDate" name="eventDate" size="48"> </td>
</tr><tr><td></td><td><span id="eda"></span></td></tr>
<tr>
<td> Enter Event Manager :</td>
<td> <input type="text" id="eventMng" name="eventMng" size="48"> </td>
</tr><tr><td></td><td><span id="mng"></span></td></tr>
<tr>
<td> Enter Contact Number: </td>
<td> <input type="text" id="contactNo" name="contactNo" size="48"> </td>
</tr><tr><td></td><td><span id="cnt"></span></td></tr>
<tr>
<td> Enter Email : </td>
<td> <input type="text" id="eMail" name="eMail" size="48"> </td>
</tr><tr><td></td><td><span id="em"></span></td></tr>
<tr>
<td> Enter Venue : </td>
<td> <input type="text" id="eventVenue" name="eventVenue" size="48"> </td>
</tr><tr><td></td><td><span id="ve"></span></td></tr>
<tr>
<td></td>
<td>
<input type="submit" value="Add">
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>


<script>
function validation(){
	//flagEventName= validateEventName(document.getElementById("eventName").value);
	flagEventDate= validateEventDate(document.getElementById("eventDate").value);
	flagEventMng= validateEventMng(document.getElementById("eventMng").value);
	flagContactNo= validateContactNo(document.getElementById("contactNo").value);
	flagEMail= validateEMail(document.getElementById("eMail").value);
	flagEventVenue= validateEventVenue(document.getElementById("eventVenue").value);
	
	if(flagEventName && flagEventDate && flagEventMng && flagContactNo && flagEMail && flagEventVenue){
		return true;
	}
	else{
		return false;
	}
}

function validateEventName(eventName){
	if(eventName.trim()!=""){
		namepattern="^[A-Z a-z0-9]+$";
		if(eventName.match(namepattern)){
			document.getElementById("ena").innerHTML="Event name can contain only characters and numbers."
				document.getElementById("ena").style.color='red';
			return false;
		}
		
	return true;
		
	}
		
	else{
		document.getElementById("ena").innerHTML="Enter the event name."
		document.getElementById("ena").style.color='red';
		return false;
	}
}
function validateEventDate(eventDate){
	if(eventDate.trim()!="")
		return true;
	else{
		document.getElementById("eda").innerHTML="Enter the event date."
		document.getElementById("eda").style.color='red';
		return false;
	}
}
function validateEventMng(eventMng){
	if(eventMng.trim()!="")
		return true;
	else{
		document.getElementById("mng").innerHTML="Enter the event manager name."
		document.getElementById("mng").style.color='red';
		return false;
	}
}
function validateContactNo(contactNo){
	if(contactNo.trim()!="")
		return true;
	else{
		document.getElementById("cnt").innerHTML="Enter the contact number."
		document.getElementById("cnt").style.color='red';
		return false;
	}
}
function validateEMail(eMail){
	if(eMail.trim()!="")
		return true;
	else{
		document.getElementById("em").innerHTML="Enter the e-mail ID."
		document.getElementById("em").style.color='red';
		return false;
	}
}
function validateEventVenue(eventVenue){
	if(eventVenue.trim()!="")
		return true;
	else{
		document.getElementById("ve").innerHTML="Enter the event venue."
		document.getElementById("ve").style.color='red';
		return false;
	}
}

</script>
</body>
</html>