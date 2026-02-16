<%-- Updated index for Project Part 2 --%>  

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="mybeans.MovieBean" %>
<html>
<head>
<title>Module 6 – Movie Database</title>
<style>
body { font-family: Arial, sans-serif; margin: 30px; }
table { border-collapse: collapse; width: 90%; margin-top: 20px; }
th, td { border: 1px solid #333; padding: 8px; text-align: left; }
th { background-color: #eee; }
form { margin-top: 20px; }
label { display: inline-block; width: 120px; margin-bottom: 5px; }
input[type="text"], input[type="number"], select { width: 200px; }
input[type="submit"] { margin-top: 10px; padding: 5px 15px; }
</style>
</head>
<body>
<h1>Module 6 – Movie Database</h1>

<h2>Add a New Movie</h2>
<form method="post" action="index.jsp">
    <label for="title">Title:</label>
    <input type="text" name="title" id="title" required><br>
    <label for="genre">Genre:</label>
    <input type="text" name="genre" id="genre" required><br>
    <label for="director">Director:</label>
    <input type="text" name="director" id="director" required><br>
    <label for="release_year">Release Year:</label>
    <input type="number" name="release_year" id="release_year" required><br>
    <label for="rating">Rating:</label>
    <input type="text" name="rating" id="rating" required><br>
    <input type="submit" value="Add Movie">
</form>

<%
/* Handle form submission to add a new movie */
String title = request.getParameter("title");
String genre = request.getParameter("genre");
String director = request.getParameter("director");
String releaseYear = request.getParameter("release_year");
String rating = request.getParameter("rating");

if(title != null && !title.isEmpty()) {
    Connection conn = null;
    PreparedStatement ps = null;
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430","student1","pass");
        String sql = "INSERT INTO kyle_movies_data (title, genre, director, release_year, rating) VALUES (?, ?, ?, ?, ?)";
        ps = conn.prepareStatement(sql);
        ps.setString(1, title);
        ps.setString(2, genre);
        ps.setString(3, director);
        ps.setInt(4, Integer.parseInt(releaseYear));
        ps.setBigDecimal(5, new java.math.BigDecimal(rating));
        ps.executeUpdate();
        out.println("<p style='color:green;'>Movie added successfully!</p>");
    } catch(Exception e){
        out.println("<p style='color:red;'>Error adding movie: " + e.getMessage() + "</p>");
    } finally {
        if(ps != null) try { ps.close(); } catch(Exception e){}
        if(conn != null) try { conn.close(); } catch(Exception e){}
    }
}

/* Display all movies in a table */
try {
    MovieBean bean = new MovieBean();
    ArrayList<Integer> movieIds = bean.getMovieIds();
%>
<h2>All Movies</h2>
<table>
<thead>
<tr>
<th>Movie ID</th>
<th>Title</th>
<th>Genre</th>
<th>Director</th>
<th>Release Year</th>
<th>Rating</th>
</tr>
</thead>
<tbody>
<%
    for(Integer id : movieIds) {
        ResultSet rs = bean.getMovieById(id);
        if(rs.next()) {
%>
<tr>
<td><%= rs.getInt("movie_id") %></td>
<td><%= rs.getString("title") %></td>
<td><%= rs.getString("genre") %></td>
<td><%= rs.getString("director") %></td>
<td><%= rs.getInt("release_year") %></td>
<td><%= rs.getBigDecimal("rating") %></td>
</tr>
<%
        }
        rs.close();
    }
} catch(Exception e){
    out.println("<p style='color:red;'>Error fetching movies: " + e.getMessage() + "</p>");
}
%>
</tbody>
</table>

</body>
</html>

