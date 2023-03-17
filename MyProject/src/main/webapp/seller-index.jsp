<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  	<%@include file="seller-header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    
  </head>
  <body> 
   <!-- header section start -->
      <div class="header_section">
       
         <!-- banner section start -->
        
         <div class="banner_section layout_padding">
            <%
               if(request.getAttribute("msg")!=null)
                 {
                 out.println("<b Style=color:red;>"+request.getAttribute("msg")+"</b>");
                 }
            %>
            <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
               <div class="carousel-inner">
                  <div class="carousel-item active">
           
                     <div class="container">
                        <h1 class="banner_taital">Adventure</h1>
                        <p class="banner_text">There are many variations of passages of Lorem Ipsum available, but the majority have sufferedThere are ma available, but the majority have suffered</p>
                        <div class="read_bt"><a href="#">Get A Quote</a></div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="container">
       
                        <h1 class="banner_taital">Adventure</h1>
                        <p class="banner_text">There are many variations of passages of Lorem Ipsum available, but the majority have sufferedThere are ma available, but the majority have suffered</p>
                        <div class="read_bt"><a href="#">Get A Quote</a></div>
                     </div>
                  </div>
                  <div class="carousel-item">
                     <div class="container">
                        <h1 class="banner_taital">Adventure</h1>
                        <p class="banner_text">There are many variations of passages of Lorem Ipsum available, but the majority have sufferedThere are ma available, but the majority have suffered</p>
                        <div class="read_bt"><a href="#">Get A Quote</a></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         
         <!-- banner section end -->
      </div>
      <!-- header section end -->
 </body>
 </html>