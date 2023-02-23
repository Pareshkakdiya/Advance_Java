<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="com.bean.Student"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Information</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>
<body>
<b style="color:blue">
<%
    if(request.getAttribute("msg")!=null)
    {
    out.println(request.getAttribute("msg"));
    }
%>
</b>
<%
    Student s=(Student)request.getAttribute("s");
%>
<form name="insert" method="post" action="StudentController">
<table cellpadding=10px cellspacing="5px">
<tr>
<td>
<input type="hidden" name="sid" value="<%=s.getSid() %>" >
</td>
</tr>
<tr>
<td>First Name</td>
<td>
<input type="text" name="fname" value="<%=s.getFname() %>">
</td>
</tr>

<tr>
<td>Last Name</td>
<td>
<input type="text" name="lname" value="<%=s.getLname() %>" >
</td>
</tr>

<tr>
<td>Email</td>
<td>
<input type="text" name="email" value="<%=s.getEmail() %>">
</td>
</tr>

<tr>
<td>Mobile</td>
<td>
<input type="text" name="mobile" value="<%=s.getMobile() %>">
</td>
</tr>

<tr>
<td>Address</td>
<td>
<textarea rows="5" cols="21" name="address"><%=s.getAddress() %></textarea>
</td>
</tr>

<tr>
<td>Gender</td>
<td>
<%
   if(s.getGender().equals("male")){
%>
	   <input type="radio" name="gender" value="male" checked="checked">Male
	   <input type="radio" name="gender" value="female">Female 
<%   
   }
   else if(s.getGender().equals("female")){
%>	   
	   <input type="radio" name="gender" value="male">Male
	   <input type="radio" name="gender" value="female" checked="checked">Female
<%	   
   }
%>

</td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" name="action" value="Update" class="btn btn-primary">
</td>
</tr>

</table>
</form>
</body>
</html>