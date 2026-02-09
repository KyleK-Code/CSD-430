<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<html>
<head>
    <title>Module 6 – Movie Database Read</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 30px; }
        table { border-collapse: collapse; width: 80%; margin-top: 20px; }
        th, td { border: 1px solid #333; padding: 8px; text-align: left; }
        th { background-color: #eee; }
    </style>
</head>
<body>
<h1>Module 6 – Movie Database Read</h1>

<%
    // Database connection parameters
    String url = "jdbc:mysql://localhost:3306/CSD430";
    String dbUser = "student1";
    String dbPass = "pass";

    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    List<Integer> movieIds = new ArrayList<>();

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, dbUser, dbPass);

        stmt = conn.createStatement();
        rs = stmt.executeQuery("SELECT movie_id FROM kyle_movies_data ORDER BY movie_id");

        while(rs.next()) {
            movieIds.add(rs.getInt("movie_id"));
        }
    } catch(Exception e) {
        out.println("<p style='color:red;'>Error connecting to DB: " + e.getMessage() + "</p>");
    } finally {
        if(rs != null) try { rs.close(); } catch(Exception e){}
        if(stmt != null) try { stmt.close(); } catch(Exception e){}
        if(conn != null) try { conn.close(); } catch(Exception e){}
    }
%>

<form method="get">
    <label for="movieId">Select Movie ID:</label>
    <select name="movieId" id="movieId">
        <option value="">--Select--</option>
        <%
            for(Integer id : movieIds){
        %>
            <option value="<%=id%>" <%= id.toString().equals(request.getParameter("movieId")) ? "selected" : "" %>><%=id%></option>
        <%
            } // end for
        %>
    </select>
    <input type="submit" value="Show Movie">
</form>

<%
    String selectedId = request.getParameter("movieId");
    if(selectedId != null && !selectedId.isEmpty()){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, dbUser, dbPass);
            stmt = conn.createStatement();
            rs = stmt.executeQuery("SELECT * FROM kyle_movies_data WHERE movie_id=" + selectedId);

            if(rs.next()){
%>
<h2>Movie Details</h2>
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
        <tr>
            <td><%= rs.getInt("movie_id") %></td>
            <td><%= rs.getString("title") %></td>
            <td><%= rs.getString("genre") %></td>
            <td><%= rs.getString("director") %></td>
            <td><%= rs.getInt("release_year") %></td>
            <td><%= rs.getBigDecimal("rating") %></td>
        </tr>
    </tbody>
</table>
<%
            } else {
                out.println("<p style='color:red;'>No movie found with ID " + selectedId + "</p>");
            }
        } catch(Exception e){
            out.println("<p style='color:red;'>Error fetching movie: " + e.getMessage() + "</p>");
        } finally {
            if(rs != null) try { rs.close(); } catch(Exception e){}
            if(stmt != null) try { stmt.close(); } catch(Exception e){}
            if(conn != null) try { conn.close(); } catch(Exception e){}
        }
    }
%>
</body>
</html>
