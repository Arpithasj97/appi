<html>
<body>

    <div id="div1">
    <form name="registration" onsubmit="return formValidation()" action="StudentRegistrationServlet" >
    <h1 >STUDENT REGISTRATION</h1>
        <table>
        		<tr><td>UserName: </td><td><input type="text" id="susername" name="susername" ></td></tr>
                <tr><td></td><td><span id="un"></span></td></tr>
                
                <tr><td>Password: </td><td><input type="password" id="spassword" name="spassword" ></td></tr>
                <tr><td></td><td><span id="pw"></span></td></tr>
                
                <tr><td>Confirm Password:</td><td><input type="password" id="confirmpassword" onchange="passwordConfirmaton()" name="confirmpassword" ></td></tr>
                <tr><td></td><td><span id="cpw"></span></td></tr>
                
        		<tr><td>Library ID No.:</td><td><input type="text" id="libID" name="libID" ></td></tr>
        		<tr><td></td><td><span id="lid"></span></td></tr>
        		
                <tr><td>Registration No.:</td><td><input type="text" id="regNo"  name="regNo" ></td></tr>
                <tr><td></td><td><span id="rNo"></span></td></tr>
                
                <tr><td>Branch:</td><td>
                    <select name="branch">
                        <option value="ece">ECE</option>
                        <option value="cse">CSE</option>
                        <option value="eee">EEE</option>
                        <option value="mech">Mech.</option>
                        <option value="civil">Civil</option>
                    </select>
                </td></tr>
                
                <tr><td>Section:</td><td>
                    <select name="section">
                        <option value="a">A</option>
                        <option value="b">B</option>
                        <option value="c">C</option>
                    </select>
                    </td></tr>
               
                <tr><td>Semester:</td><td>
                <select name="branch">
                                <option value="I">I</option>
                                <option value="II">II</option>
                                <option value="III">III</option>
                                <option value="IV">IV</option>
                                <option value="V">V</option>
                                <option value="VI">VI</option>
                                <option value="VII">VII</option>
                                <option value="VIII">VIII</option>
                 </select>
                </td></tr>
                
                <tr><td>Year of Admission:</td><td>
                    <select name="yearOfAdm">
                            <option value="2015">2015</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                            <option value="2019">2019</option>
                        </select>
                    </td></tr>
                    
                <tr></tr><tr></tr>
                <tr><td></td><td><input type="submit" value="REGISTER"></td></tr>
            </table>
    </form> 
    </div>
    




     <div id="div2">
     <form name="teach" onsubmit="return teacherValidation()" action="FacultyRegistrationServlet">
            <h1 >TEACHER REGISTRATION</h1>
            <table >
            	<tr><td>UserName: </td><td><input type="text" id="fusername" name="fusername" ></td></tr>
                <tr><td></td><td><span id="fun"></span></td></tr>
                
                <tr><td>Password: </td><td><input type="password" id="fpassword" name="fpassword" ></td></tr>
                <tr><td></td><td><span id="fpw"></span></td></tr>
                
                <tr><td>Confirm Password:</td><td><input type="password" id="fconfirmpassword" onchange="fpasswordConfirmaton()" name="fconfirmpassword" ></td></tr>
                <tr><td></td><td><span id="fcpw"></span></td></tr>
            
            	<tr><td>TId:</td><td><input type="text" id="TId" name="TId" ></td></tr>
            	
           	 	<tr><td>Name:</td><td><input type="text" id="name" name="name" ></td></tr>
            	<tr><td></td><td><span id="na"></span></td></tr>
            	
            	<tr><td>Designation: </td><td><input type="text" id="designation" name="designation" ></td></tr>
            	<tr><td></td><td><span id="des"></span></td></tr>
            	
            	<tr><td>Branch:</td> <td>
                <select name="branch">
                                <option value="ece">ECE</option>
                                <option value="cse">CSE</option>
                                <option value="eee">EEE</option>
                                <option value="mech">Mech</option>
                                <option value="civil">Civil</option>
                 </select>
                </td></tr>
                
            <tr><td>Contact Number: </td><td><input type="text" id="contact_no" name="contact_no"></td></tr>
            <tr><td></td><td><span id="cnt"></span></td></tr>
            
            <tr><td>Lectures: </td><td><input type="text" id="lectures" name="lectures"></td></tr>
            <tr><td></td><td><span id="lec"></span></td></tr>
            
            <tr></tr><tr></tr>
            <tr><td></td><td><input type="submit" value="REGISTER"></td></tr> 
            </table>
         </form>
        </div>

<script>
function formValidation()
{
	var username = document.getElementById("susername");
	var password = document.getElementById("spassword");
	var regNo = document.getElementById("regNo");
	
	console.log(username_validation(username));
	console.log(password_validation(password));
	console.log(reg_validation(regNo));

	if(reg_validation(regNo) && username_validation(username)&& password_validation(password))
	{
		return true;
	}
	else{
		return false;
	}
}

function username_validation(username)
{ 
	var regvalid = "^[A-Za-z]+$";
	if(username.value.trim().match(regvalid))
	{
		return true;
	}
	else
	{
    	document.getElementById("un").innerHTML="Enter only characters."
    	document.getElementById("un").style.color='red';
		return false;
	}
}

function password_validation(password)
{ 
	var regvalid = "^[A-Za-z!@#$%0-9]+$";
	if(password.value.trim().match(regvalid))
	{
		return true;
	}
	else
	{
    	document.getElementById("pw").innerHTML="Password can only have A-Za-z!@#$%0-9"
    	document.getElementById("pw").style.color='red';
		return false;
	}
}

function reg_validation(regNo)
{ 
	var regvalid = "^[0-9]+$";
	if(regNo.value.trim().match(regvalid))
	{
		return true;
	}
	else
	{
    	document.getElementById("rNo").innerHTML="Enter only numbers."
    	document.getElementById("rNo").style.color='red';
		return false;
	}
}

function teacherValidation()
{
	var username = document.getElementById("fusername");
	var password = document.getElementById("fpassword");
	var name = document.getElementById("name");
	var designation = document.getElementById("designation");
	var contact = document.getElementById("contact_no");
	var lectures = document.getElementById("lectures");
	

if(fusername_validation(username) && fpassword_validation(password) && name_validation(name) && designation_validation(designation) && 
		 contact_validation(contact) && lectures_validation(lectures))
{
	return true;
}
else{
return false;
}
}
function fusername_validation(username)
{ 
	var regvalid = "^[A-Za-z]+$";
	if(username.value.trim().match(regvalid))
	{
		return true;
	}
	else
	{
    	document.getElementById("fun").innerHTML="Enter only characters."
    	document.getElementById("fun").style.color='red';
		return false;
	}
}

function fpassword_validation(password)
{ 
	var regvalid = "^[A-Za-z!@#$%0-9]+$";
	if(password.value.trim().match(regvalid))
	{
		return true;
	}
	else
	{
    	document.getElementById("fpw").innerHTML="Password can only have A-Za-z!@#$%0-9"
    	document.getElementById("fpw").style.color='red';
		return false;
	}
}

function name_validation(name)
{ 
var namevalid = /^[a-zA-Z]+$/;
if(name.value.trim().match(namevalid))
{
return true;
}
else
{
    document.getElementById("na").innerHTML="Enter valid name."
    document.getElementById("na").style.color='red';
return false;
}
}


function designation_validation(designation)
{ 
var designationvalid = /^[a-zA-Z]+$/;
if(designation.value.trim().match(designationvalid))
{
return true;
}
else
{
    document.getElementById("des").innerHTML="Enter valid designation."
    document.getElementById("des").style.color='red';
return false;
}
}


function contact_validation(contact)
{ 
var contactvalid = /^[0-9]{10}$/;
if(contact.value.trim().match(contactvalid))
{
return true;
}
else
{
    document.getElementById("cnt").innerHTML="Enter valid contact number."
    document.getElementById("cnt").style.color='red';
return false;
}
}


function lectures_validation(lectures)
{ 
var lecvalid = /^[0-9]+$/;
if(lectures.value.trim().match(lecvalid))
{
return true;
}
else
{
    document.getElementById("lec").innerHTML="Enter valid number of lectures.";
    document.getElementById("lec").style.color='red';
return false;
}
}

function passwordConfirmaton(){
	if(document.getElementById("spassword").value==document.getElementById("confirmpassword").value){
		document.getElementById("cpw").innerHTML="";
	}
	else{
		document.getElementById("cpw").innerHTML="Password does not match";
		document.getElementById("cpw").style.color='red';
	}
	
}
function fpasswordConfirmaton(){
	
	if(document.getElementById("fpassword").value!=document.getElementById("fconfirmpassword").value){
		document.getElementById("fcpw").innerHTML="Password does not match";
		document.getElementById("fcpw").style.color='red';
	}
}

</script>

</body>
</html>