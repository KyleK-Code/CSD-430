<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My First JSP Page</title>
</head>
<body>
    <h1>Welcome to JSP with VS Code!</h1>
    <%
        String name = "Kyle Klausen";
        out.println("<p>Hello, " + name + "! This is Java inside JSP.</p>");
    %>
</body>
</html>
