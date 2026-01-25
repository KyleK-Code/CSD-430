<!-- =====================================================
     File: jobApplicationForm.jsp
     Course: CSD-430
     Module: 3
     Author: Kyle Klausen
     Date: 01/20/26
     Description:
     This JSP file displays a job application form used to
     collect user input. The form contains multiple input
     types and a minimum of five data fields and submits
     the data to a separate JSP file for display.
     ===================================================== -->

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Form</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; }
        table { border-collapse: collapse; }
        td { padding: 10px; }
    </style>
</head>
<body>

<h2>Job Application Form</h2>
<p>Please complete all required fields below to apply for the open position.</p>

<form action="jobApplicationResult.jsp" method="post">
    <table>
        <tr>
            <td>Full Name:</td>
            <td><input type="text" name="fullName" required></td>
        </tr>

        <tr>
            <td>Email Address:</td>
            <td><input type="email" name="email" required></td>
        </tr>

        <tr>
            <td>Phone Number:</td>
            <td><input type="text" name="phone"></td>
        </tr>

        <tr>
            <td>Position Applied For:</td>
            <td>
                <select name="position">
                    <option value="Software Developer">Software Developer</option>
                    <option value="QA Tester">QA Tester</option>
                    <option value="Project Manager">Project Manager</option>
                </select>
            </td>
        </tr>

        <tr>
            <td>Years of Experience:</td>
            <td><input type="number" name="experience" min="0" max="40"></td>
        </tr>

        <tr>
            <td>Willing to Relocate:</td>
            <td>
                <input type="radio" name="relocate" value="Yes"> Yes
                <input type="radio" name="relocate" value="No"> No
            </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align:center;">
                <input type="submit" value="Submit Application">
            </td>
        </tr>
    </table>
</form>

<p><strong>Overall Description:</strong>  
This form collects basic job application data including personal information, position preference, experience level, and relocation availability. The data will be submitted to a separate JSP page for processing and display.</p>

</body>
</html>