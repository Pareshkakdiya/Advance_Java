<%@page import="com.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>A World</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <!-- fonts -->
      <link href="https://fonts.googleapis.com/css?family=Poppins:400,700|Righteous&display=swap" rel="stylesheet">
      <!-- owl stylesheets --> 
      <link rel="stylesheet" href="css/owl.carousel.min.css">
      <link rel="stylesheet" href="css/owl.theme.default.min.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
   </head>
   <body>
      <!-- header section start -->
      <div class="header_section">
         <div class="header_main">
            <div class="mobile_menu">
               <nav class="navbar navbar-expand-lg navbar-light bg-light">
                  <div class="logo_mobile"><a href="seller-sindex.jsp"><img src="images/logo.png"></a></div>
                  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="collapse navbar-collapse" id="navbarNav">
                     <ul class="navbar-nav">
                        <li class="nav-item">
                           <a class="nav-link" href="seller-index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="seller-add-product.jsp">Add Product</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" href="seller-view-product.jsp">View Product</a>
                        </li>
                       
                     </ul>
                  </div>
               </nav>
            </div>
            <div class="container-fluid">
               <div class="logo"><a href="index.jsp"><img src="images/logo.png"></a></div>
               <div class="menu_main">
                  <ul>
                     <li class="active"><a href="seller-index.jsp">Home</a></li>
                     <li><a href="seller-add-product.jsp">Add Product</a></li>
                     <li><a href="seller-view-product.jsp">View Product</a></li>
                   
                     <%
                       User u=null;
                     if(session!=null)
                     {
                    	 if(session.getAttribute("u")!=null)
                    	 {
                    		 u=(User)session.getAttribute("u");
                    		%>
                    		<li><a href="change-password.jsp">Change Password</a></li>
                    		  <li><a href="logout.jsp">Logout(<%=u.getFname()%>)</a></li>
                    		<%
                    	 }
                    	 else
                    	 {
                    		%>
                    		 <li><a href="register.jsp">Register</a></li>
                    		<% 
                    	
                    	 }
                     }
                     else
                     {
                    	 %>
                    	  <li><a href="register.jsp">Register</a></li>
                 		<% 
                     }
                     %>
                  </ul>
               </div>
            </div>
         </div>
         <!-- banner section start -->
        
         <!-- banner section end -->
      </div>
      <!-- header section end -->
  
   </body>
</html>