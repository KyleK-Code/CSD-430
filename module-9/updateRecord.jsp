<%@ page import="java.sql.*" %>
<%@ page import="mybeans.MovieBean" %>

<%
    int id = Integer.parseInt(request.getParameter("movie_id"));
    String title = request.getParameter("title");
    String genre = request.getParameter("genre");
    String director = request.getParameter("director");
    int releaseYear = Integer.parseInt(request.getParameter("release_year"));
    double rating = Double.parseDouble(request.getParameter("rating"));

    MovieBean bean = new MovieBean();
    bean.updateMovie(id, title, genre, director, releaseYear, rating);

    ResultSet rs = bean.getMovieById(id);
    rs.next();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Updated Record</title>
    <style>
        body { font-family: Arial; text-align: center; }
        table { margin: auto; border-collapse: collapse; }
        th, td { border: 1px solid black; padding: 10px; }
        th { background-color: #4CAF50; color: white; }
    </style>
</head>
<body>

<h2>Record Successfully Updated</h2>

<table>
<tr>
    <th>movie_id (INT)</th>
    <th>title (VARCHAR)</th>
    <th>genre (VARCHAR)</th>
    <th>director (VARCHAR)</th>
    <th>release_year (INT)</th>
    <th>rating (DECIMAL 2,1)</th>
</tr>
<tr>
    <td><%= rs.getInt("movie_id") %></td>
    <td><%= rs.getString("title") %></td>
    <td><%= rs.getString("genre") %></td>
    <td><%= rs.getString("director") %></td>
    <td><%= rs.getInt("release_year") %></td>
    <td><%= rs.getDouble("rating") %></td>
</tr>
</table>

</body>
</html>