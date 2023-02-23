package com.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;


@WebFilter("/MyFilter")
public class MyFilter extends HttpFilter implements Filter {
       
   
   
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
	    System.out.println("Filter Request recieved");
	    if(request.getParameter("uname").equalsIgnoreCase("tops")) {
	    	if (request.getParameter("password").equalsIgnoreCase("tops")) {
	    		chain.doFilter(request, response);
			}
	    	else {
				request.setAttribute("msg", "Incorrect Password");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}
	    }
	    else {
			request.setAttribute("msg", "Incorrect Username");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		
		System.out.println("Filter Response Generated");
	}

}
