<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Java Scriptlet section
    // Creating an array of movies to display
    String[][] movies = {
        {"The Matrix", "1999", "Sci-Fi"},
        {"Inception", "2010", "Thriller"},
        {"The Lord of the Rings: The Fellowship of the Ring", "2001", "Fantasy"},
        {"Interstellar", "2014", "Sci-Fi"},
        {"The Dark Knight", "2008", "Action"}
    };
%>

<!DOCTYPE html>
<html>
<head>
    <title>My Favorite Movies</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>My Favorite Movies</h1>
    <p>This page displays a list of movies I have enjoyed watching. The table below categorizes each movie by title, release year, and genre.</p>

    <table>
        <tr>
            <th>Title</th>
            <th>Year</th>
            <th>Genre</th>
        </tr>
        <%  // Loop through the array and display the data in table rows
            for(int i = 0; i < movies.length; i++) {
        %>
        <tr>
            <td><%= movies[i][0] %></td>
            <td><%= movies[i][1] %></td>
            <td><%= movies[i][2] %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
