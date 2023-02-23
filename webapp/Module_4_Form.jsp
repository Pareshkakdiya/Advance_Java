<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Validate Form</title>
<script src="JS/Validation.js">
 
</script>
</head>
<body>
<form name="frm" method="get" action="">
<table cellpadding=10px cellspacing="5px">
<tr>
<td>First Name</td>
<td>
<input type="text" name="fname" onblur="checkFname();">
</td>
<td><span id="fn"></span></td>
</tr>

<tr>
<td>Last Name</td>
<td>
<input type="text" name="lname" onblur="checkLname();">
</td>
<td><span id="ln"></span></td>
</tr>

<tr>
<td>Mobile Number</td>
<td>
<input type="text" name="mobile" onblur="checkMobileNumber();">
</td>
<td><span id="mn"></span></td>
</tr>

<tr>
<td>Email</td>
<td>
<input type="text" name="email" onblur="checkEmail();">
</td>
<td><span id="email"></span></td>
</tr>

<tr>
<td>Password</td>
<td>
<input type="password" name="password" onblur="checkPassword();">
</td>
<td><span id="pw"></span></td>
</tr>

<tr>
<td>Confirm Password</td>
<td>
<input type="password" name="cpassword" onblur="checkCpassword();">
</td>
<td><span id="cp"></span></td>
</tr>

<tr>
<td>Gender</td>
<td>
<input type="radio" name="gender" value="male">Male
<input type="radio" name="gender" value="female">Female
</td>
</tr>

<tr>
<td>Hobby</td>
<td>
<input type="checkbox" name="hobby" value="reading">Reading<br>
<input type="checkbox" name="hobby" value="cricket">Cricket<br>
<input type="checkbox" name="hobby" value="listing">Listing<br>
<input type="checkbox" name="hobbt" value="traveling">Traveling<br>
</td>
</tr>

<tr>
<td>Education</td>
<td>
<select name="education">
<option>.....Select Education......</option>
<option value="10th">10th</option>
<option value="12th">12th</option>
<option value="bca">BCA</option>
</select>
</td>
</tr>

<tr>
<td>Resume</td>
<td>
<input type="file" name="resume">
</td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" name="action" value="Sign up">
</td>
</tr>
</table>
</form>
</body>
</html>