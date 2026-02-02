<%@ page import="mybeans.MovieBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>My Favorite Movies</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>My Favorite Movies</h1>
<p>This page displays a list of movies I have enjoyed watching. The table below
categorizes each movie by title, release year, genre, director, and rating.</p>

<%
    // Create array of MovieBean objects
    MovieBean[] movies = new MovieBean[5];

    // Populate each MovieBean with 5 fields
    movies[0] = new MovieBean();
    movies[0].setTitle("The Matrix");
    movies[0].setYear("1999");
    movies[0].setGenre("Sci-Fi");
    movies[0].setDirector("Lana & Lilly Wachowski");
    movies[0].setRating(8.7);

    movies[1] = new MovieBean();
    movies[1].setTitle("Inception");
    movies[1].setYear("2010");
    movies[1].setGenre("Thriller");
    movies[1].setDirector("Christopher Nolan");
    movies[1].setRating(8.8);

    movies[2] = new MovieBean();
    movies[2].setTitle("The Lord of the Rings: The Fellowship of the Ring");
    movies[2].setYear("2001");
    movies[2].setGenre("Fantasy");
    movies[2].setDirector("Peter Jackson");
    movies[2].setRating(8.8);

    movies[3] = new MovieBean();
    movies[3].setTitle("Interstellar");
    movies[3].setYear("2014");
    movies[3].setGenre("Sci-Fi");
    movies[3].setDirector("Christopher Nolan");
    movies[3].setRating(8.6);

    movies[4] = new MovieBean();
    movies[4].setTitle("The Dark Knight");
    movies[4].setYear("2008");
    movies[4].setGenre("Action");
    movies[4].setDirector("Christopher Nolan");
    movies[4].setRating(9.0);
%>

<table>
    <tr>
        <th>Title</th>
        <th>Year</th>
        <th>Genre</th>
        <th>Director</th>
        <th>Rating</th>
    </tr>
<%
    // Loop through the MovieBean array and display each movie
    for (int i = 0; i < movies.length; i++) {
%>
    <tr>
        <td><%= movies[i].getTitle() %></td>
        <td><%= movies[i].getYear() %></td>
        <td><%= movies[i].getGenre() %></td>
        <td><%= movies[i].getDirector() %></td>
        <td><%= movies[i].getRating() %></td>
    </tr>
<% } %>
</table>

</body>
</html>
