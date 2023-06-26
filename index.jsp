<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Resume Builder</title>
<style>
div{
	background-color:lavender; 
    color:purple;
    font-size: 30px;
 	height: 50px;
 	width: 100%;
 	text-align:center;
}
body{
	 background-color: lavenderblush;
     color:purple;
     font-size:15px;
     text-align:justify;
}
</style>
</head>
<body>
	<div>Please Enter the following details to your resume</div><br>
	<!-- This form accepts the details to create the resume -->
	<form action="build" method="post">		
		Name: <input type="text" id="name" name="name" placeholder="Enter your name" required/><br>
		Role:<input type="text" name="role" id="role" placeholder="Enter the role" required/><br>
		Phone: <input type="number" name="phone" id ="phone" placeholder="Enter the phone number" required/><br>
		Email: <input type="email" name="email" id="email" placeholder="Enter the email" required/><br>
		LinkedIn: <input type="text" name="linkedIn" id="linkedIn" placeholder="Enter the LinkedIn-id"/><br>
		Location:<input type="text" name="location" id="location" placeholder="Enter the location" required/><br>
		About: <input type="text" name="about" id="about" placeholder="please enter about youself" required/><br>
		Skills: <input type="text" name="skills" id="skills" placeholder="Please separate using comma"required /><br>
		Education: <input type="text" name="education" id="education" placeholder="Please separate using comma" required /><br>
		Work Experience: <input type="text" name="we_i" id="we_i" placeholder="Please separate using comma" required /><br>
		Soft Skills: <input type="text" name="softskills" id="softskills" placeholder="Please separate using comma" required/><br>
		Certificates: <input type="text" name="certificates" id="certificates" placeholder="Please separate using comma" required/><br>
		<input type="submit" name="submit" id="submit" />
	</form>
</body>
</html>