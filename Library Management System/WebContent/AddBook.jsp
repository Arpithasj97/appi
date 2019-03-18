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
<form onsubmit="return validation()" action="AddBooksServlet">
 
<table border="2" align="center" cellpadding="5" cellspacing="5">
<tr>
<td> Enter Book Code:</td>
<td> <input type="text" id="bookCode" name="bookCode" size="48"> </td>
</tr>
<tr><td></td><td><span id="co"></span></td></tr>
<tr>
<td> Enter BookName :</td>
<td> <input type="text" id="bookName" name="bookName" size="48"> </td>
</tr><tr><td></td><td><span id="na"></span></td></tr>
<tr>
<td> Enter Author :</td>
<td> <input type="text" id="author" name="author" size="48"> </td>
</tr><tr><td></td><td><span id="aut"></span></td></tr>
<tr>
<td> Enter Publication: </td>
<td> <input type="text" id="publication" name="publication" size="48"> </td>
</tr><tr><td></td><td><span id="pub"></span></td></tr>
<tr>
<td> Enter Subject : </td>
<td> <input type="text" id="subject" name="subject" size="48"> </td>
</tr><tr><td></td><td><span id="sub"></span></td></tr>
<tr>
<td> Enter No of Copies : </td>
<td> <input type="text" id="noOfCopies" name="noOfCopies" size="48"> </td>
</tr><tr><td></td><td><span id="no"></span></td></tr>
<tr>
<td></td>
<td>
<input type="submit" value="Add" >
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>


<script>
function validation(){
	flagBookCode= validateBookCode(document.getElementById("bookCode").value);
	flagBookName= validateBookName(document.getElementById("bookName").value);
	flagAuthor= validateAuthor(document.getElementById("author").value);
	flagPublication= validatePublication(document.getElementById("publication").value);
	flagSubject= validateSubject(document.getElementById("subject").value);
	flagNoOfCopies= validateNoOfCopies(document.getElementById("noOfCopies").value);
	
	if(flagBookCode && flagBookName && flagAuthor && flagPublication && flagSubject && flagNoOfCopies){
		return true;
	}
	else{
		return false;
	}
}

function validateBookCode(code){
	if(code.trim()!="")
		return true;
	else{
		document.getElementById("co").innerHTML="Enter the code."
		document.getElementById("co").style.color='red';
		return false;
	}
}
function validateBookName(name){
	if(name.trim()!="")
		return true;
	else{
		document.getElementById("na").innerHTML="Enter the name of book."
		document.getElementById("na").style.color='red';
		return false;
	}
}
function validateAuthor(author){
	if(author.trim()!="")
		return true;
	else{
		document.getElementById("aut").innerHTML="Enter the name of author."
		document.getElementById("aut").style.color='red';
		return false;
	}
}
function validatePublication(publication){
	if(publication.trim()!="")
		return true;
	else{
		document.getElementById("pub").innerHTML="Enter the name of publication."
		document.getElementById("pub").style.color='red';
		return false;
	}
}
function validateSubject(subject){
	if(subject.trim()!="")
		return true;
	else{
		document.getElementById("sub").innerHTML="Enter the subject."
		document.getElementById("sub").style.color='red';
		return false;
	}
}
function validateNoOfCopies(noOfCopies){
	if(noOfCopies.trim()!="")
		return true;
	else{
		document.getElementById("no").innerHTML="Enter the number of copies."
		document.getElementById("no").style.color='red';
		return false;
	}
}

</script>
</body>
</html>