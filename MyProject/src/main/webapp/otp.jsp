 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="header.jsp" %>
<!DOCTYPE html>
<html lang="en">
   <head>
   </head>
   <body>
      <!-- contact section start -->
  
    <form action="UserController" method="post">
      <div class="contact_section layout_padding">
        <div class="container">
          <h1 class="contact_taital">Enter OTP</h1>
          <div class="email_text">
         <%
         if(request.getAttribute("msg")!=null)
         {
        	 out.println(request.getAttribute("msg"));
         }
         %>
             <div class="form-group">
                <input type="hidden" class="email-bt" placeholder="Email" name="email" value="<%=request.getAttribute("email")%>">
             </div>
             <div class="form-group">
                <input type="hidden" class="email-bt" placeholder="OTP" name="otp" value="<%=request.getAttribute("otp")%>">
             </div>
             <div class="form-group">
                <input type="text" class="email-bt" placeholder="OTP" name="uotp">
             </div>
              
             
          <button type="submit" class="btn btn-dark" name="action" value="verify otp">Verify OTP</button>
          </div>
        </div>
      </div>
    </form>
      <!-- contact section end -->
      <!-- footer section start -->
      <div class="footer_section layout_padding">
         <div class="container">
            <div class="input_btn_main">
               <input type="text" class="mail_text" placeholder="Enter your email" name="Enter your email">
               <div class="subscribe_bt"><a href="#">Subscribe</a></div>
            </div>
            <div class="location_main">
               <div class="call_text"><img src="images/call-icon.png"></div>
               <div class="call_text"><a href="#">Call +01 1234567890</a></div>
               <div class="call_text"><img src="images/mail-icon.png"></div>
               <div class="call_text"><a href="#">demo@gmail.com</a></div>
            </div>
            <div class="social_icon">
               <ul>
                  <li><a href="#"><img src="images/fb-icon.png"></a></li>
                  <li><a href="#"><img src="images/twitter-icon.png"></a></li>
                  <li><a href="#"><img src="images/linkedin-icon.png"></a></li>
                  <li><a href="#"><img src="images/instagram-icon.png"></a></li>
               </ul>
            </div>
         </div>
      </div>
      <!-- footer section end -->
      <!-- copyright section start -->
      <div class="copyright_section">
         <div class="container">
            <p class="copyright_text">2020 All Rights Reserved. Design by <a href="https://html.design">Free html  Templates</a></p>
         </div>
      </div>
      <!-- copyright section end -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
      <!-- javascript --> 
      <script src="js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script> 
   </body>
</html>