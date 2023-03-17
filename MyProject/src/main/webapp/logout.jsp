 <%
 session.removeAttribute("u");
 session.invalidate();
 request.setAttribute("msg", "User Logged Out Successfully");
 request.getRequestDispatcher("index.jsp").forward(request, response);
 %>
            