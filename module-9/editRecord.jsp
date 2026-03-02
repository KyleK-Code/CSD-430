<%@ page import="java.sql.*" %>
<%@ page import="mybeans.MovieBean" %>

<%
    int id = Integer.parseInt(request.getParameter("movieID"));
    MovieBean bean = new MovieBean();
    ResultSet rs = bean.getMovieById(id);
    rs.next();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Movie</title>
    <style>
        body { font-family: Arial; background-color: #eef; text-align: center; }
        input { padding: 8px; margin: 5px; }
    </style>
</head>
<body>

<h2>Update Movie Record</h2>

<form action="updateRecord.jsp" method="post">

    Movie ID (Primary Key): <br>
    <b><%= rs.getInt("movie_id") %></b>
    <input type="hidden" name="movie_id"
           value="<%= rs.getInt("movie_id") %>">
    <br><br>

    Title:<br>
    <input type="text" name="title"
           value="<%= rs.getString("title") %>"><br>

    Genre:<br>
    <input type="text" name="genre"
           value="<%= rs.getString("genre") %>"><br>

    Director:<br>
    <input type="text" name="director"
           value="<%= rs.getString("director") %>"><br>

    Release Year:<br>
    <input type="text" name="release_year"
           value="<%= rs.getInt("release_year") %>"><br>

    Rating:<br>
    <input type="text" name="rating"
           value="<%= rs.getDouble("rating") %>"><br><br>

    <input type="submit" value="Update Record">

</form>

</body>
</html>