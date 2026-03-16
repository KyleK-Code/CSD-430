<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // ************************************************************
    // Author: Kyle Klausen
    // Date: 03/18/2026
    // Assignment: Module 12 - Remake of Module 2 - JSP Table Assignment (States/Countries)
    // Description: This JSP page demonstrates using Scriptlets
    //              to display a table of states or countries
    //              I have enjoyed visiting. The table includes
    //              5 records with 3 fields: Name, Capital, and Region.
    // ************************************************************

    // Java Scriptlet: Array of countries/states
    String[][] locations = {
        {"Japan", "Tokyo", "Asia"},
        {"Italy", "Rome", "Europe"},
        {"Florida", "Key West", "USA"},
        {"Australia", "Melbourne", "Oceania"},
        {"Austria", "Serfaus", "Europe"}
    };

    int locationCount = locations.length; // Number of records
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>States and Countries I Have Visited</title>
    <!-- External CSS file -->
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h1>States and Countries I Have Visited</h1>
    <p>
        This page lists some of the states and countries I have enjoyed visiting.
        The table below includes the name, capital, and region for each location.
    </p>

    <!-- Locations Table -->
    <table>
        <tr>
            <th>Name</th>
            <th>Capital</th>
            <th>Region</th>
        </tr>

        <% // Loop through the locations array and display each record
            for (int i = 0; i < locationCount; i++) {
        %>
        <tr>
            <td><%= locations[i][0] %></td>
            <td><%= locations[i][1] %></td>
            <td><%= locations[i][2] %></td>
        </tr>
        <% } %>
    </table>

    <p>
        All locations are grouped by Name, Capital, and Region to provide a clear overview
        of the places I have visited.
    </p>
</body>
</html>