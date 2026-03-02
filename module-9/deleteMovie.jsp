<%@ page import="mybeans.MovieBean" %>
<%
int id = Integer.parseInt(request.getParameter("movieID"));
MovieBean bean = new MovieBean();
bean.deleteMovie(id);

// After deletion, redirect back to display page
response.sendRedirect("displayMovies.jsp");
%>