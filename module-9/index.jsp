<%@ page import="java.util.ArrayList" %>
<%@ page import="mybeans.MovieBean" %>

<%
    MovieBean bean = new MovieBean();
    ArrayList<Integer> ids = bean.getMovieIds();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Select Movie to Update</title>
    <style>
        body { font-family: Arial; background-color: #f4f4f4; text-align: center; }
        .container { margin-top: 50px; }
        select, input { padding: 8px; margin: 10px; }
        input[type=submit] { background-color: #4CAF50; color: white; border: none; }
    </style>
</head>
<body>

<div class="container">
    <h2>Select Movie ID to Update</h2>

    <form action="editRecord.jsp" method="post">
        <select name="movieID">
            <% for(Integer id : ids) { %>
                <option value="<%= id %>"><%= id %></option>
            <% } %>
        </select>
        <br>
        <input type="submit" value="Edit Record">
    </form>
</div>

</body>
</html>
