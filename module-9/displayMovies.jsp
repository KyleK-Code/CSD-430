<%@ page import="java.sql.*" %>
<%@ page import="mybeans.MovieBean" %>
<%@ page import="java.util.ArrayList" %>
<%
MovieBean bean = new MovieBean();
ResultSet allMovies = bean.getAllMovies();

// Collect IDs for dropdown
ArrayList<Integer> ids = new ArrayList<>();
while(allMovies.next()) {
    ids.add(allMovies.getInt("movie_id"));
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Movie Records - Delete Option</title>
<style>
body { font-family: Arial; text-align: center; background-color: #f4f4f4; }
table { margin: auto; border-collapse: collapse; width: 80%; }
th, td { border: 1px solid black; padding: 10px; }
th { background-color: #4CAF50; color: white; }
select, input[type=submit] { padding: 8px; margin: 10px; }
</style>
</head>
<body>
<h2>Movie Records</h2>
<p>Select a Movie ID from the dropdown to delete that record.</p>

<table>
<tr>
<th>movie_id</th>
<th>title</th>
<th>genre</th>
<th>director</th>
<th>release_year</th>
<th>rating</th>
</tr>
<%
ResultSet displayMovies = bean.getAllMovies(); // reset ResultSet
while(displayMovies.next()) {
%>
<tr>
<td><%= displayMovies.getInt("movie_id") %></td>
<td><%= displayMovies.getString("title") %></td>
<td><%= displayMovies.getString("genre") %></td>
<td><%= displayMovies.getString("director") %></td>
<td><%= displayMovies.getInt("release_year") %></td>
<td><%= displayMovies.getDouble("rating") %></td>
</tr>
<% } %>
</table>

<form action="deleteMovie.jsp" method="post">
<select name="movieID">
<% for(Integer id : ids) { %>
<option value="<%= id %>"><%= id %></option>
<% } %>
</select>
<br>
<input type="submit" value="Delete Movie">
</form>
</body>
</html>