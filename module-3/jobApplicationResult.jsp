<!-- =====================================================
     File: jobApplicationResult.jsp
     Course: CSD-430
     Module: 3
     Author: Kyle Klausen
     Date: 01/20/26
     Description:
     This JSP file receives the form data from
     jobApplicationForm.jsp and displays the submitted
     values in an HTML table using JSP Scriptlets.
     ===================================================== -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application Results</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        table { border-collapse: collapse; width: 60%; }
        th, td { border: 1px solid #333; padding: 10px; }
        th { background-color: #f2f2f2; }
    </style>
</head>
<body>

<h2>Submitted Job Application</h2>
<p>The following table displays the information entered on the job application form.</p>

<%
    // Retrieve submitted form values
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String position = request.getParameter("position");
    String experience = request.getParameter("experience");
    String relocate = request.getParameter("relocate");
%>

<table>
    <tr>
        <th>Field</th>
        <th>Entered Value</th>
    </tr>

    <tr>
        <td>Full Name</td>
        <td><%= fullName %></td>
    </tr>

    <tr>
        <td>Email Address</td>
        <td><%= email %></td>
    </tr>

    <tr>
        <td>Phone Number</td>
        <td><%= phone %></td>
    </tr>

    <tr>
        <td>Position Applied For</td>
        <td><%= position %></td>
    </tr>

    <tr>
        <td>Years of Experience</td>
        <td><%= experience %></td>
    </tr>

    <tr>
        <td>Willing to Relocate</td>
        <td><%= relocate %></td>
    </tr>
</table>

<p><strong>Overall Description:</strong>  
This table displays all job application data submitted through the JSP form. The page demonstrates how user input can be collected, processed with JSP Scriptlets, and dynamically displayed in an HTML table.</p>

</body>
</html>