<%@page import="com.bean.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  	<%@include file="seller-header.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    
  </head>
  <body>
  <%
     List<Product> list=ProductDao.getProductBySeller(u.getId());
     for(Product p:list)
     {
  %> 
   <div>
   <figure>
   <a class="aa-product-img" href="#" ><img src="product_images/<%=p.getProduct_img()  %>" style="height: 300px;width: 250px;"></a>
   <a class="aa-add-card-btn-img" href="seller-product-details.jsp?pid=<%=p.getPid() %>" >Product Details</a>
   <figcaption>
   <h4 class="aa-product-title"><a href="#"><%=p.getProduct_name() %></a></h4>
   <span class="aa-product-price"><%=p.getProduct_price() %></span>
   </figcaption>
   </figure>
   </div>
    <%
     }
   %>
 </body>
 </html>