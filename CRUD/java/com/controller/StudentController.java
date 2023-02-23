package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Student;
import com.dao.StudentDao;


@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	 String action=request.getParameter("action");
	 if (action.equalsIgnoreCase("Insert")) {
		Student s=new Student();
		s.setFname(request.getParameter("fname"));
		s.setLname(request.getParameter("lname"));
		s.setEmail(request.getParameter("email"));
		s.setMobile(request.getParameter("mobile"));
		s.setAddress(request.getParameter("address"));
		s.setGender(request.getParameter("gender"));
	    StudentDao.insertStudent(s);
	   
	    response.sendRedirect("Show.jsp");
//	    request.setAttribute("msg", "Data inser  ted successfully");
//	    request.getRequestDispatcher("StudentInformation.jsp").forward(request, response);
	       }
	 else if (action.equalsIgnoreCase("edit")) {
		int sid=Integer.parseInt(request.getParameter("sid"));
		Student s=StudentDao.getStudent(sid);
		request.setAttribute("s", s);
		request.getRequestDispatcher("update.jsp").forward(request, response);
	}
	 else if (action.equalsIgnoreCase("update")) {
		 Student s=new Student();
		 s.setSid(Integer.parseInt(request.getParameter("sid")));
		 s.setFname(request.getParameter("fname"));
	     s.setLname(request.getParameter("lname"));
	     s.setEmail(request.getParameter("email"));
		 s.setMobile(request.getParameter("mobile"));
		 s.setAddress(request.getParameter("address"));
		 s.setGender(request.getParameter("gender"));
		 StudentDao.updateStudent(s);
		 response.sendRedirect("Show.jsp");
	}
	 else if (action.equalsIgnoreCase("delete")) {
		 int sid=Integer.parseInt(request.getParameter("sid"));
		 StudentDao.deleteStudent(sid);
		 response.sendRedirect("show.jsp");
	}
	}

}
